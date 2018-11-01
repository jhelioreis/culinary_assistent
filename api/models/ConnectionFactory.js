const mysql = require("mysql");

function getConnection() {
    return mysql.createConnection({
        host: "localhost",
        user: process.env.DB_USER || "root",
        password: process.env.DB_PASS || "admin",
        database: "culinary_assistent"
    });
}

module.exports = function(){
    return getConnection;
};
