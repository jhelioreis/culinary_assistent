const controllerLogin = require("../api/controllers/controllerLogin");
const controllerReceitas = require("../api/controllers/controllerReceitas");

module.exports = app => {
    app.get("/login", (req, res) => res.render("login/signIn"));

    app.post("/login", controllerLogin.autenticacao);

    app.get("/", (req, res) => res.render("receitas/pesquisa"));

    app.post("/receita", controllerReceitas.pesquisar);

    // app.use(controllerLogin.verificaToken);

    app.get("/logout", controllerLogin.logout);

    // app.use(controllerLogin.isAdmin);

    app.post("/receita/adicionar", controllerReceitas.adicionar);

    app.get("/receita", controllerReceitas.listar);

    app.get("/receitas", controllerReceitas.listar);

    app.put("/receita/:id", controllerReceitas.atualizar);

    app.get("/receita/:id", controllerReceitas.deletar);

    app.get("/criarUsuario", (req, res) => res.render("login/signUp"));

    app.post("/criarUsuario", controllerLogin.criarUsuario);
}