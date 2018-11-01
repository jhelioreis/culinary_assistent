const UsuarioDAO = require("../models/UsuarioDAO");
const jwt = require("jsonwebtoken");
const segredo = "4yQZ?A?8Y&^WtGPC";
const Connection = require("../models/ConnectionFactory")();

module.exports = {
    autenticacao: (req, res) => {
        var usuario = req.body.usuario || "";
        var senha = req.body.senha || "";

        if (usuario == "" || senha == "") return res.status(401).json({ mensagem: "Há campos em branco!" });

        var connection = new Connection(); /*----Cria conexão com o banco----*/
        var Usuario = new UsuarioDAO(connection); /*----Cria uma instacia do DAO, usando a conexão criada----*/

        Usuario.findOne(usuario, (erro, usuario) => { /*----Procura um usuário pelo nome de usuario----*/
            if (erro) return res.status(500).json({ erro });
 
            if (usuario[0].senha !== senha) { /*----Verifica se a senha digitada está correta----*/
                return res.status(401).json({ mensagem: "Senha incorreta" });
            } else { /*----Cria um token, coloca ele nos cookies e redireciona----*/
                var token = jwt.sign({ usuario: usuario[0].usuario, }, segredo);  
                res.cookie("x-access-token", token, { httpOnly: true });
                return res.redirect("/"); 
            }
        });
        
        connection.end();
    },
    verificaToken: (req, res, next) => {
        var token = req.headers.cookie && req.headers.cookie.split("x-access-token=")[1].split(";")[0];

        if (token) {
            jwt.verify(token, segredo, (err, decoded) => {
                if (err) return res.status(401).json({ mensagem: "Você precisa estar logado!" });
                else {
                    req.decoded = decoded;
                    next();
                }
            });
        } else return res.redirect("/login");
    },

    isAdmin: (req, res, next) => {
        var token = req.headers.cookie && req.headers.cookie.split("x-access-token=")[1].split(";")[0];
        var usuario = jwt.decode(token).usuario;

        var connection = new Connection();
        var Usuario = new UsuarioDAO(connection);

        Usuario.findOne(usuario, (err, usuario) => {
            if (err) return res.json({ err });
            if (usuario[0].isAdmin != 0) next();
            else return res.json({ mensagem: "Você precisa ser administrador para acessar essa rota" });
        });

        connection.end();
    },

    logout: (req, res) => {
        res.cookie("x-access-token", { expires: Date.now() });
        return res.redirect("/login");
    },

    criarUsuario: (req, res) => {
        var usuario = req.body.usuario;
        var email = req.body.email;
        var senha = req.body.senha;
        var isAdmin = req.body.isAdmin;

        if (usuario == "" || senha == "" || email == "" || isAdmin == undefined) return res.json({ mensagem: "Há campos em branco" });

        var data = req.body;

        var connection = new Connection();
        var Usuario = new UsuarioDAO(connection);

        Usuario.criarUsuario(data, err => {
            if (err) return res.json({ mensagem: "Erro ao criar usuário", err });
            return res.redirect("/");
        });

        connection.end();
    }
};