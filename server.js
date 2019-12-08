const express = require("express");
const connectionPool = require("./db");

// Create a new Express application.
const app = express();

// Configure view engine to render EJS templates.
app.set("views", __dirname + "/views");
app.set("view engine", "ejs");

// Use application-level middleware for common functionality
app.use(require("body-parser").urlencoded({ extended: true }));

// Define routes.
app.get("/", function(req, res) {
  const sql =
    "SELECT Id, CONCAT(Firstname,' ',Lastname) AS Fullname, Email, Item, Quantity, Total_price FROM pivot_table";
  connectionPool.query(sql, (err, results) => {
    if (err) throw err;
    res.render("table-pivot", { results });
  });
});

app.post("/pivot", function(req, res) {
  const sql =
    "SELECT CONCAT(Firstname,' ',Lastname) AS Fullname, Email, SUM(IF(Item = 'Barang1', Quantity, 0)) AS Barang1, SUM(IF(Item = 'Barang2', Quantity, 0)) AS Barang2, SUM(IF(Item = 'Barang3', Quantity, 0)) AS Barang3, SUM(IF(Item = 'Barang4', Quantity, 0)) AS Barang4, SUM(IF(Item = 'Barang5', Quantity, 0)) AS Barang5 \
    FROM pivot_table \
    GROUP BY Email";
  connectionPool.query(sql, (err, pivot) => {
    if (err) throw err;
    res.render("table-pivot", { pivot });
  });
});

app.listen(process.env["PORT"] || 5000, function() {
  console.log(`The server has Started!, PORT: ${process.env["PORT"] || 5000}`);
});
