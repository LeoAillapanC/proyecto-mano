class Myemail < ApplicationRecord
	validates_presence_of :email, Message: "woop!, no pusiste tu correo"
	validates_uniqueness_of :email, Message: "Este correo ya fue registrado"
	validates_format_of :email, with: Devise::email_regexp, Message: "No se pudo guardar tu correo"
end
