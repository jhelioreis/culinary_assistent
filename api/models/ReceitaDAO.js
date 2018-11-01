var sql = require("sqlstring");

function ReceitaDAO(connection) {
    this._connection = connection;
}

ReceitaDAO.prototype.adicionar = function (data, callback) {
    /*----Passei um insert e logo depois os dados e um callback (função JSON_ARRAY converte o array para ser passado para a query)----*/
    this._connection.query(`INSERT INTO receita (nome, ingredientes, tags, modo_de_preparo, tempo_de_preparo, porcoes, autor) VALUES(?, ?, JSON_ARRAY?, ?, ?, ?, ?)`,
        [data.nome, data.ingredientes, data.tags, data.modo_de_preparo, data.tempo_de_preparo, data.porcoes, data.autor], callback); 
}

ReceitaDAO.prototype.listar = function (callback) {
    /*----Select para listar as receitas----*/
    this._connection.query(`SELECT *FROM receita`, callback);
}

ReceitaDAO.prototype.pesquisar = function (tags, callback) {
    /*----Um select usando duas funções sql, o JSON_CONTAINS vê se o array que eu passei contain nas tags de alguma receita----*/
    this._connection.query(`SELECT *FROM receita WHERE JSON_CONTAINS(tags, JSON_ARRAY?)`, [tags], callback);
}

ReceitaDAO.prototype.atualizar = function (id, data, callback) {
    /*----Acha uma receita pelo id e atualiza a receita de acordo com os dados passados----*/
    this._connection.query(`UPDATE receita SET ? WHERE id = ?`, [data, id], callback);
}

ReceitaDAO.prototype.deletar = function (id, callback) {
    /*----Acha uma receita pelo id e deleta----*/
    this._connection.query(`DELETE FROM receita WHERE id = ?`, [id], callback);
}

module.exports = ReceitaDAO;


