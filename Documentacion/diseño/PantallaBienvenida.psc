Proceso OrganizadorTareas
    PantallaBienvenida	
FinProceso

SubProceso PantallaBienvenida
	Definir opcion Como Entero
	Escribir "ORGANIZADOR DE TAREAS"
	Escribir "Bienvenido al sistema"
	Escribir "1. Home"
	Escribir "2. English"
	Escribir "3. Español"
	Escribir "4. Sign up"
	Escribir "5. Log in"
	Leer opcion
	
	Segun opcion Hacer
		4:
			Registro
		5:
			Login
	FinSegun
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
	Definir opcion Como Entero
	Escribir "Login"
	PedirEmail(email)
	Escribir "Password"
	Leer password
	Escribir "1. remember me"
	Escribir "2. Log in"
	Escribir "3. forgot password?"
	Leer opcion
	
	Segun opcion Hacer
		3:
			RecuperarContrasena
	FinSegun
FinSubProceso

SubProceso RecuperarContrasena
	Definir email Como Caracter
	Definir opcion Como Entero
	Escribir "Forgot password"
	PedirEmail(email)
	Escribir "1. Send"
	Escribir "2. Cancel"
	Leer opcion
	
	Segun opcion Hacer
		1:
			RestablecerContrasena
	FinSegun
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

SubProceso PantallaPrincipal(nombre)
	Escribir "Hello, ", nombre
	Escribir "Welcome"
	Escribir "Inicio de sesión exitoso"
	Escribir "Home"
	Escribir "English"
	Escribir "Español"
	Escribir "Profile"
	Escribir "Users"
	Escribir "Tasks"
	Escribir "Log out"
FinSubProceso

SubProceso Perfil(nombre, email)
	Definir opcion Como Entero
	Escribir "Home"
	Escribir "English"
	Escribir "Español"
	Escribir "Hello, ", nombre
	Escribir "Profile"
	Escribir "Users"
	Escribir "Tasks"
	Escribir "Log out"
	
	Escribir "Profile"
	Escribir "Delete Profile image"
	Escribir "Name"
	Escribir nombre
	Escribir "email"
	Escribir email
	Escribir "Edit"
	Escribir "Change password"
	Escribir "Change profile image"
FinSubProceso

SubProceso EditarPerfil(nombre, email)
	Definir opcion Como Entero
	Escribir "Home"
	Escribir "English"
	Escribir "Español"
	Escribir "Hello, ", nombre
	Escribir "Profile"
	Escribir "Users"
	Escribir "Tasks"
	Escribir "Log out"
	
	Escribir "Edit profile"
	Escribir "name"
	Escribir nombre
	Escribir "email"
	Escribir email
	Escribir "1. Save"
	Escribir "2. Cancel"
	Leer opcion
FinSubProceso
