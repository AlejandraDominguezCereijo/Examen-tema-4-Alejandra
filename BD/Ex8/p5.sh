#Aclaracion previa, en el enunciado se indica que la coleccion de la base de datos es 'supplies' y en realidad su nombre es 'sales'

#Pregunta 1
db.sales.find().limit(3)

#Pregunta 2
db.sales.aggregate([ { $group: { _id: "$storeLocation", averageAge: { $avg: "$customer.age" } } } ])

#Pregunta 3
db.sales.countDocuments({ "customer.gender": "F", "customer.age": { $gt: 40 } });

#Pregunta 4 
db.sales.aggregate([ { $sort: { "customer.satisfaction": -1 } }, { $limit: 5 }, { $project: { _id: 0, storeLocation: 1, "customer.email": 1, "customer.age": 1, "customer.satisfaction": 1 } } ]);