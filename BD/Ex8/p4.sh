#Pregunta 1 
db.movies.updateOne( { title: "Civilization" }, { $set: { year: "1985" } } );

#Pregunta 2
db.movies.updateMany( {}, { $inc: { comentarios: 10 } } );

#Pregunta 3
db.movies.updateMany( { runtime: { $gt: 100 } }, { $set: { year: 100 } } );

#Pregunta 4
db.movies.deleteMany( { genres: "Action" });

#Pregunta 5
db.movies.deleteMany( { year: { $gte: 1950, $lte: 1970 }, votes: { $lt: 80 } });
