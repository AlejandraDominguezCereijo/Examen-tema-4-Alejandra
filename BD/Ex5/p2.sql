INSERT INTO acs_objects (object_id,object_type,security_inherit_p,creation_ip) VALUES (14,'100',false,'40') (15,'101',false,'41'),(16,'102',false,'42');
INSERT INTO acs_objects (object_id,object_type,title,package_id,context_id,security_inherit_p,creation_user, creation_ip, modifying_user, modifying_ip) VALUES (17,'103','mesa',1,17,'false',20,'20.200.20000',50,'20.20.20000'); --como algunos de los campos tienen valores por defecto en este caso "creation_date" y "last_modified" ya añaden la fecha actual, esos campos no los añadi y por tanto tampoco sus valores--
UPDATE acs_objects set title= 'Ejemplo de titulo' where object_id > 100;
DELETE FROM acs_objects WHERE modifying_ip ('200.200.200.200'); 