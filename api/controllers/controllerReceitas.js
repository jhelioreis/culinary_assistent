const ReceitaDAO = require("../models/ReceitaDAO");
const Connection = require("../models/ConnectionFactory")();

module.exports = {
    adicionar: (req, res) => {
        const receita = req.body;

        var connection = new Connection();
        var Receita = new ReceitaDAO(connection);

        Receita.adicionar(receita, erro => {
            if (erro) return res.status(500).json({ erro });
            return res.status(200).json({ mensagem: "Receita cadastrada com sucesso!" });
        });

        connection.end();
    },
    listar: (req, res) => {
        var connection = new Connection();
        var Receita = new ReceitaDAO(connection);

        Receita.listar((erro, receitas) => {
            if (erro) return res.status(500).json({ mensagem: "Erro ao listar as receitas" });
            return res.render("receitas/todasReceitas", { receitas });
        });

        connection.end();
    },
    pesquisar: (req, res) => {
        var body = req.body;

        var ingredientes = [];
        ingredientes.push(body.ingredientes.split(", ")); /*----Como os ingredientes vem como string, mas as tags é um array eu transformo em um array e adiciono a um array----*/

        var connection = new Connection();
        var Receita = new ReceitaDAO(connection);

        Receita.pesquisar(ingredientes, (erro, receitas) => {
            if (erro) return res.status(500).json({ mensagem: "Erro ao listar as receitas" });
            if (receitas == {}) return res.status(404).json({ mensagem: "Receita não encontrada"});
            return res.render("receitas/filtro", { receitas });
        });

        connection.end();
    },
    atualizar: (req, res) => {
        const id = req.params.id;
        const novaReceita = req.body;

        var connection = new Connection();
        var Receita = new ReceitaDAO(connection);

        Receita.atualizar(id, novaReceita, erro => {
            if (erro) return res.status(500).json({ mensagem: "Erro ao atualizar, digite propriedades válidas!" });
            return res.status(200).json({ mensagem: "Receita atualizada com sucesso" });
        });

        connection.end();
    },
    deletar: (req, res) => {
        const id = req.params.id;

        var connection = new Connection();
        var Receita = new ReceitaDAO(connection);

        Receita.deletar(id, erro => {
            if (erro) return res.status(500).json({ mensagem: "Erro ao apagar..." });
            return res.redirect("/receita");
        });

        connection.end();
    }
}