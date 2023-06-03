#Creamos las tres colecciones; viajeros, vuelo y ciudad
db.createCollection("viajeros")
db.createCollection("vuelo")
db.createCollection("ciudad")

#Añadimos los datos a la coleccion viajeros
db.viajeros.insertMany([ 
{ nombre: "Juan Pérez", fecha_nacimiento: ISODate ("1990-01-01"), nacionalidad: "Español", residencia: "España" }, 
{ nombre: "Laura Gómez", fecha_nacimiento: ISODate ("1992-03-15"), nacionalidad: "Mexicana", residencia: "México" }, 
{ nombre: "John Smith", fecha_nacimiento: ISODate ("1985-08-12"), nacionalidad: "Estadounidense", residencia: "Estados Unidos" } 
]);

#Añadimos los datos a la coleccion vuelo
db.vuelo.insertMany([ 
  { origen: "Madrid", destino: "Barcelona", fecha_salida: ISODate ("2023-05-30"), fecha_llegada: ISODate ("2023-05-30") }, 
{ origen: "Cancún", destino: "Ciudad de México", fecha_salida: ISODate ("2023-06-15"), fecha_llegada: ISODate ("2023-06-15") }, 
{ origen: "Nueva York", destino: "Los Ángeles", fecha_salida:  ISODate ("2023-07-01"), fecha_llegada: ISODate ("2023-07-01") } ]);

#Añadimos los datos a la coleccion ciudad
db.ciudad.insertMany([
  {
    nombre: "Barcelona",
    poblacion: 1620,
    descripcion: "Barcelona es una ciudad cosmopolita y mediterránea, puedes ir a ver la sagrada familia"
  },
  {
    nombre: "Ciudad de México",
    poblacion: 8918653,
    descripcion: "Ciudad de México es la capital de México y una de las ciudades más grandes del mundo"
  },
  {
    nombre: "Los Ángeles",
    poblacion: 3990456,
    descripcion: "Los Ángeles es una ciudad en el estado de California, en la costa oeste de Estados Unidos"
  }
]);

