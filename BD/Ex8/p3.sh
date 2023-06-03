#Pregunta 1 
db.restaurants.find( { cuisine: "Greek" }, { name: 1, _id: 0 });

#Pregunta 2 
db.restaurants.find( {}, { name: 1, cuisine: 1, borough: 1, _id: 0 } );

#Pregunta 3
db.restaurants.find( { cuisine: "Greek", "grades.grade": "B" }, { name: 1, "grades.grade": 1, _id: 0 } );

#Pregunta 4
db.restaurants.find( { "grades.score": { $gte: 30 } }, { name: 1, "grades.score": 1, borough: 1, _id: 0 } );

#Pregunta 5
db.restaurants.find( { cuisine: { $in:["Italian", "Mexican"] }, borough: "Manhattan" }, { "address.street": 1, "address.building": 1, borough: 1, cuisine: 1, grades: 1, _id: 0 });