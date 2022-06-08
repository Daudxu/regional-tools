const express = require('express');
const router = express.Router();

const mysql = require('mysql');

const db = require("../config/congfigdb");

router.get('test', (req, res) => {

  let conn = mysql.createConnection(db);

  conn.query('select * from ls_dev_region', (err, results, fieldes) => {

    if (err) {
      throw err;
    }
    res.send(results);
  })

  conn.end((err) => {
    console.log(err);
  })
});

module.exports = router;