$(document).on "ajax:beforeSend", "#emails-form",()->
	$("#email-info").html"se esta procesando tu peticion"


$(document).on "ajax:success", "#emails-form",(e,data,estado,xhr)->
	$(this).slideUp()
	$("#email-info").html"guardamos tu correo, muchas gracias"


$(document).on "ajax:error", "#emails-form",(e,data,estado,xhr)->
	$("#email-info").html data.responseJSON.email[0]