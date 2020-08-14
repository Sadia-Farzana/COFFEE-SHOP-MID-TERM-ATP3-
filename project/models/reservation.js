  var db = require('./db');
  
  module.exports={
   reservation:function(reservation,callback)
{

	var sql = "insert into reservation values('','"+ reservation.name+"','"+reservation.date+"','"+reservation.time+"','"+reservation.party+"','"+reservation.type+"','"+reservation.contactinfo+"','"+reservation.message+"')";
         db.execute(sql, function(status){
			callback(status);
			
	});
 },
}