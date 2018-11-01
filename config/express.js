const express = require("express");
const bodyParser = require("body-parser");
const routes = require("./routes");

module.exports = () => {
    var app = express();

    app.use(express.static("./assets"));

    app.set("view engine", "ejs");
    app.set("views", "./views");

    app.use(bodyParser.json());
    app.use(bodyParser.urlencoded({ extended: false }));

    routes(app);

    return app;
}