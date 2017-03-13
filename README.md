# proyecto-mano

Version de Ruby --------- ruby 2.3.0p0 (2015-12-25 revision 53290) 
Version de Rails -------- Rails 5.0.1 
Version de PostgreSQL --- psql (PostgreSQL) 9.5.5

Instrucciones para crear UsuarioAdmin
1) Registrar Usuario en la Pagina.
  Nombre: admin
  Correo: local.cbc@gmail.com
  Contraseña: 123456

2)Darle Admin a travez de la consola
-Ingresar a rails c
-z=User.first
-z.admin=true
-z (para verificar)
-z.save
-exit

Instrucciones para agregar productos desde seeds.rb
- rake db:seed
