var express = require('express');
var router = express.Router();

const mysql = require('mysql');

const db = require("../config/congfigdb");


router.get('/sa', function (req, res, next) {
  let conn = mysql.createConnection(db);
  conn.connect();

  conn.query("SELECT * FROM `ls_dev_region` LIMIT 10", (err, results, fieldes) => {
    if (err) {
      throw err;
    }
    res.send(results);
  })
  connection.query('insert into user (name,qq,age) values("' + item[0] + '","' + item[1] + '","' + item[2] + '")', function (error, results, fields) {
    if (error) throw error;
    console.log('The solution is: ', results[0]);
  })

  conn.end((err) => {
    console.log(err);
  })

  // res.send("conn");
});

module.exports = router;