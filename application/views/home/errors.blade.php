@if(Session::has('invalid_captcha'))
								
		<div class="alert alert-danger"><strong>CAPTCHA</strong> is wrong, please try again</div>		
								
@endif

@if(Session::has('verification_email_sent'))
	@if (s("default_language") == 'es')
		<div class="alert alert-success">Correo de verificación de su cuenta, enviado. Por favor revise su bandeja de entrada</div>
	@else
		<div class="alert alert-success">Email verification mail sent. Please check your inbox</div>
@endif
@endif