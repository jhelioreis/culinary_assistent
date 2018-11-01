function UsuarioDAO(connection) {
    this._connection = connection;
}

UsuarioDAO.prototype.criarUsuario = function (data, callback) {
    this._connection.query(`INSERT INTO usuario SET ?`, data, callback);
}

UsuarioDAO.prototype.findOne = function (usuario, callback) {
    this._connection.query(`SELECT *FROM usuario WHERE usuario = ?`, [usuario], callback);
}

module.exports = UsuarioDAO;