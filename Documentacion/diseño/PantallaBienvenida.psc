Proceso OrganizadorTareas
    PantallaBienvenida	
FinProceso

SubProceso PantallaBienvenida
	Escribir "ORGANIZADOR DE TAREAS"
	Escribir "Bienvenido al sistema"
	Escribir "Home"
	Escribir "English"
	Escribir "Español"
	Escribir "Sign up"
	Escribir "Log in"
FinSubProceso

SubProceso Registro
	Definir nombre, email, password, repetirPassword Como Caracter
	Escribir "Name"
	Leer nombre
	PedirEmail(email)
	Escribir "Password"
	Leer password
	Escribir "Repeat password"
	Leer repetirPassword
	Escribir "Sign up"
	Escribir "Cancel"
FinSubProceso

SubProceso Login
	Definir email, password Como Caracter
	Escribir "Login"
	PedirEmail(email)
	Escribir "Password"
	Leer password
	Escribir "remember me"
	Escribir "Log in"
	Escribir "forgot password?"
FinSubProceso

SubProceso RecuperarContrasena
	Definir email Como Caracter
	Escribir "Forgot password"
	PedirEmail(email)
	Escribir "Send"
	Escribir "Cancel"
FinSubProceso

SubProceso PedirEmail(email Por Referencia)
	Escribir "email"
	Leer email
FinSubProceso

SubProceso RestablecerContrasena
	Definir password, repetirPassword Como Caracter
	Escribir "Password reset"
	Escribir "password"
	Leer password
	Escribir "Repeat password"
	Leer repetirPassword
	Escribir "Reset password"
FinSubProceso