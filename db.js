var mysql = require("mysql");

var connectionPool = mysql.createPool({
  host: "localhost",
  database: "table_pivot",
  user: "root",
  password: "",
  multipleStatements: true
});

module.exports = connectionPool;
