var express = require('express');
var router = express.Router();
var path = require('path');

const sql = require("../utils/sql");

/* GET home page. */
router.get('/', function(req, res, next) {
  
  console.log('on main route');
  let query = `SELECT * FROM tbl_works`;

    sql.query(query, (err, result) => {
        if (err) { console.log(err); } //something broke!

        res.render('home', {data: result});
    })
});

router.get("/about", function(req, res, next){ 
  // res.send("this is about");

  console.log('on main route about');
  res.render('about', {title: "about me"});
});

router.get("/portfolio", function(req, res, next){ 
  // res.send("this is portfolio");

  console.log('on main route about');
  res.render('portfolio', {title: "my works"});
});


router.get("/works/:target", (req, res) => {
    //here is where we set up the quiery
    let query = `SELECT * FROM tbl_works WHERE ID="${req.params.target}"`;

    sql.query(query, (err, result) => {
        if (err) { console.log(err); } //something broke!

        console.log(result); //this should be the database row

        res.json(result[0]); // send that row back to the calling function

        res.render('portfolio', {data: result});
    })
})

module.exports = router;