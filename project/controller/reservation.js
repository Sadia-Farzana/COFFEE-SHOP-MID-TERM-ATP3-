var express = require('express');
var userModel = require.main.require('./models/reservation');

var router = express.Router();

 router.get('/',function(req,res)
{
	res.render('reservation/index');
});

router.post('/',function(req,res)
{
   var reservation = {
   	name : req.body.name,
   	date : req.body.date,
   	time : req.body.time,
   	party : req.body.party,
   	type : req.body.type,
   	contactinfo : req.body.contactinfo,
   	message : req.body.message
   }


 
 userModel.reservation(reservation,function(status)
 {
 	if(status){
			
			res.send('Confrimed Reservation');	
		}else{
			res.redirect('/reservation/index');
		}
 }
 	);

 });
module.exports = router;