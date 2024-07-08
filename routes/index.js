var express = require("express");
var router = express.Router();

/* GET home page. */
router.get("/", function (req, res, next) {
  res.send("Te saludo desde / con GET");
  // res.render('index');
});

module.exports = router;
