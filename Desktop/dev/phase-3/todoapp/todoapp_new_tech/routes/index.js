var express = require('express');
var router = express.Router();

/* GET home page. */
router.get('/', function(req, res, next) {
  res.render('index', { title: 'Welcome to the TODO LIST APP' });
});


router.get('/index', function(req, res) {
	res.render('index', {title: 'hello, world!'});
});

router.get('/newform', function(req, res, next) {
  res.render('newform', { title: 'Add Task' });
});

router.get('/list', function(req, res, next) {
	res.render('list', {title: 'TODO LIST'});
})


module.exports = router;



// router.get('/userlist', function(req, res) {
//     var db = req.db;
//     var collection = db.get('usercollection');
//     collection.find({},{},function(e,docs){
//         res.render('userlist', {
//             "userlist" : docs
//         });
//     });
// })

module.exports = router;
