var db = require('./db');

module.exports ={
//manager model
  getAll:function(callback){
		var sql = "select * from manager";
		db.getResults(sql, function(results){
			if(results.length > 0){
				callback(results[0]);
			}else{
				callback([]);
			}
		});
	},

  getById: function(id, callback){
		var sql = "select * from manager where id="+id;
		db.getResults(sql, function(result){
      console.log('user module error')
			if(result.length > 0){
				callback(result[0]);
			}else{
				callback([]);
			}
		});
	},

  getByUsername: function(username, callback){
		var sql = "select * from manager where username="+username;
		db.getResults(sql, function(result){
      console.log('user module error')
			if(result.length > 0){
				callback(result);
			}else{
				callback([]);
			}
		});
	},

  updateManager: function(user, callback){
    var sql = "update manager set password='"+user.password+"', email='"+user.email+"' ,phone='"+user.phone+"', address='"+user.address+"' where id='"+user.id+"'";
    db.execute(sql, function(status){
      if(status){
        callback(true);
      }else{
        callback(false);
      }
    });
  },

  //food model
  getByIdFood: function(id, callback){
		var sql = "select * from food where id="+id;
		db.getResults(sql, function(result){
      console.log('user module error')
			if(result.length > 0){
				callback(result[0]);
			}else{
				callback([]);
			}
		});
	},

  getAllFood:function(callback){
		var sql = "select * from food";
		db.getResults(sql, function(results){
			if(results.length > 0){
				callback(results);
			}else{
				callback([]);
			}
		});
	},

  validate: function(user, callback){
		var sql = "select * from manager where username='"+user.username+"' and password='"+user.password+"'";
		db.getResults(sql, function(result){
			if(result.length > 0){
				callback(true);
			}else{
				callback(false);
			}
		});
	},

  insert: function(user, callback){
		var sql = "insert into food values('', '"+user.name+"', '"+user.price+"','' ,'"+user.status+"', '"+user.ingredients+"','')";

		console.log(sql);

		db.execute(sql, function(status){
			if(status){
				callback(true);
			}else{
				callback(false);
			}
		});
	},

  update: function(user, callback){
		var sql = "update food set price='"+user.price+"', status='"+user.status+"' ,ingredients='"+user.ingredients+"' where id='"+user.id+"'";
		db.execute(sql, function(status){
			if(status){
				callback(true);
			}else{
				callback(false);
			}
		});
	},

  delete: function(id, callback){
		var sql = "delete from food where id="+id;
		db.execute(sql, function(status){
			if(status){
				callback(true);
			}else{
				callback(false);
			}
		});
	}

}
