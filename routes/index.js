var express = require('express');
var router = express.Router();
var path = require('path');
const connect = require('../utils/sqlConnect');

// const sql = require("../utils/sql");

/* GET home page. */
router.get('/', function(req, res, next) {
  
  console.log('on main route');

    connect.getConnection((err, connection) => {
      if (err) { return console.log(err.message); }
  
      let query = `SELECT * FROM tbl_works`;
  
      connect.query(query, (err, rows) => {
        connection.release(); // send this connection back to the pool
  
        if (err) {
          // will exit the function and log the error
          return console.log(err.message);
        }
  
        console.log(rows); // this should be your database query result
  
        // render our page
        res.render('home', {data: rows}); // whatever page and data you're rendering
      });
    });

});

router.get("/about", function(req, res, next){ 
  // res.send("this is about");

  console.log('on main route about');
  res.render('about', {title: "about me"});

});

// router.get("/portfolio", function(req, res, next){ 
//   // res.send("this is portfolio");

//   console.log('on main route about');
//   res.render('portfolio', {title: "my works"});
// });


router.get("/:target", (req, res) => {

    connect.getConnection((err, connection) => {
      if (err) { return console.log(err.message); }

      let query = `SELECT * FROM tbl_works WHERE ID="${req.params.target}"`;
  
      connect.query(query, (err, rows) => {
        connection.release(); // send this connection back to the pool
  
        if (err) {
          // will exit the function and log the error
          return console.log(err.message);
        }
  
        console.log(rows); // this should be your database query result
  
        // render our page
        res.render('portfolio', {data: rows}); // whatever page and data you're rendering
      });
    });
})

module.exports = router;