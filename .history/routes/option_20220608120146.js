var express = require('express');
var router = express.Router();

const mysql = require('mysql');

const db = require("../config/congfigdb");


router.get('/sa', function (req, res, next) {
  let conn = mysql.createConnection(db);
  conn.connect();

  conn.query("SELECT * FROM `ls_dev_region` LIMIT 1", (err, results, fieldes) => {
    if (err) {
      throw err;
    }
    // res.send(results);
  })

  conn.end((err) => {
    console.log(err);
  })

  // res.send("conn");
});

module.exports = router;