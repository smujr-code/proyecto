Proceso OrganizadorTareas
	Definir cantidadTareas Como Entero
	Definir descripciones Como Caracter
	
	Dimension descripciones[100]
	
	cantidadTareas = 0
	
	PantallaBienvenida(cantidadTareas, descripciones)
FinProceso

SubProceso PantallaBienvenida(cantidadTareas Por Referencia, descripciones)
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
			Login(cantidadTareas, descripciones)
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

SubProceso Login(cantidadTareas Por Referencia, descripciones)
	Definir nombre, email, password Como Caracter
	Definir opcion Como Entero
	Escribir "Login"
	Escribir "Name"
	Leer nombre
	PedirEmail(email)
	Escribir "Password"
	Leer password
	Escribir "1. remember me"
	Escribir "2. Log in"
	Escribir "3. forgot password?"
	Leer opcion
	
	Segun opcion Hacer
		2:
			PantallaPrincipal(nombre, cantidadTareas, descripciones)
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

SubProceso PantallaPrincipal(nombre, cantidadTareas, descripciones)
	Definir opcion Como Entero
	
	Escribir "Hello, ", nombre
	Escribir "Welcome"
	Escribir "Inicio de sesión exitoso"
	Escribir "Home"
	Escribir "English"
	Escribir "Español"
	Escribir "1. Profile"
	Escribir "2. Users"
	Escribir "3. Tasks"
	Escribir "4. Log out"
	
	Escribir "Seleccione una opcion"
	Leer opcion
	
	Segun opcion Hacer
		1:
			Perfil(nombre, "")
		2:
			Usuarios(nombre)
		3:
			Tareas(nombre, cantidadTareas, descripciones)
	FinSegun
FinSubProceso

SubProceso Usuarios(nombre)
	Escribir "Home"
	Escribir "English"
	Escribir "Español"
	Escribir "Hello, ", nombre
	Escribir "Profile"
	Escribir "Users"
	Escribir "Tasks"
	Escribir "Log out"
	
	Escribir "Users"
	Escribir "New user"
	Escribir "Name"
	Escribir "email"
	Escribir "Active"
	Escribir "Administrator"
	Escribir "Created at"
	
	Escribir "David"
	Escribir "admin@example.com"
	Escribir "Si"
	Escribir "Si"
	Escribir "2025-01-01 00:00:00"
	
	Escribir "Miguel"
	Escribir "migue@example.com"
	Escribir "Si"
	Escribir "No"
	Escribir "2025-01-01 00:00:00"
	
	Escribir "Newer"
	Escribir "Older"
FinSubProceso

SubProceso DetalleUsuario(nombre)
	Escribir "Home"
	Escribir "English"
	Escribir "Español"
	Escribir "Hello, ", nombre
	Escribir "Profile"
	Escribir "Users"
	Escribir "Tasks"
	Escribir "Log out"
	
	Escribir "User"
	Escribir "<< back to index"
	Escribir "name"
	Escribir "Mary"
	Escribir "email"
	Escribir "mary@example.com"
	Escribir "active"
	Escribir "yes"
	Escribir "Administrator"
	Escribir "No"
	Escribir "Created at"
	Escribir "2020-10-16 09:05:55"
	Escribir "Updated at"
	Escribir "2020-10-23 03:05:55"
	Escribir "Edit"
	Escribir "Delete"
FinSubProceso

SubProceso EditarUsuario(nombre)
	Definir opcion Como Entero
	
	Escribir "Home"
	Escribir "English"
	Escribir "Español"
	Escribir "Hello, ", nombre
	Escribir "Profile"
	Escribir "Users"
	Escribir "Tasks"
	Escribir "Log out"
	
	Escribir "Edit user"
	Escribir "Name"
	Escribir "datos registrado"
	Escribir "email"
	Escribir "datos registrados"
	Escribir "Password"
	Escribir "Repeat password"
	Escribir "Active"
	Escribir "Administrator"
	Escribir "1. Save"
	Escribir "2. Cancel"
	Leer opcion
FinSubProceso

SubProceso Tareas(nombre, cantidadTareas, descripciones)
	Definir busqueda Como Caracter
	Definir opcion, numeroTarea Como Entero
	Definir i Como Entero
	
	Escribir "Home"
	Escribir "English"
	Escribir "Español"
	Escribir "Hello, ", nombre
	Escribir "Profile"
	Escribir "Users"
	Escribir "Tasks"
	Escribir "Log out"
	
	Escribir "Tasks"
	Escribir "1. New Task"
	Escribir "2. Search"
	Leer opcion
	
	Segun opcion Hacer
		1:
			NuevaTarea(nombre, cantidadTareas, descripciones)
		2:
			Escribir "Search"
			Leer busqueda
	FinSegun
	
	Para i = 1 Hasta cantidadTareas Hacer
		Escribir i, ". ", descripciones[i]
	FinPara
	
	Escribir "Seleccione una tarea para ver el detalle"
	Leer numeroTarea
	
	Si numeroTarea >= 1 Y numeroTarea <= cantidadTareas Entonces
		DetalleTarea(nombre, numeroTarea, cantidadTareas, descripciones)
	FinSi
	
	Escribir "1. Newer"
	Escribir "2. Older"
	Leer opcion
FinSubProceso

SubProceso NuevaTarea(nombre, cantidadTareas Por Referencia, descripciones)
	Definir descripcion Como Caracter
	Definir opcion Como Entero
	
	Escribir "Home"
	Escribir "English"
	Escribir "Español"
	Escribir "Hello, ", nombre
	Escribir "Profile"
	Escribir "Users"
	Escribir "Tasks"
	Escribir "Log out"
	
	Escribir "New Task"
	Escribir "Description"
	Leer descripcion
	
	Escribir "1. Send"
	Escribir "2. Cancel"
	Leer opcion
	
	Segun opcion Hacer
		1:
			cantidadTareas = cantidadTareas + 1
			descripciones[cantidadTareas] = descripcion
			Escribir "Task saved"
	FinSegun
FinSubProceso

SubProceso EditarTarea(nombre, cantidadTareas, descripciones)
	Definir descripcion Como Caracter
	Definir opcion, numeroTarea Como Entero
	
	Escribir "Home"
	Escribir "English"
	Escribir "Español"
	Escribir "Hello, ", nombre
	Escribir "Profile"
	Escribir "Users"
	Escribir "Tasks"
	Escribir "Log out"
	
	Escribir "Edit Task"
	Escribir "Seleccione el numero de la tarea"
	Leer numeroTarea
	
	Si numeroTarea >= 1 Y numeroTarea <= cantidadTareas Entonces
		Escribir "Description"
		Escribir descripciones[numeroTarea]
		Leer descripcion
		
		Escribir "1. Save"
		Escribir "2. Cancel"
		Leer opcion
		
		Si opcion = 1 Entonces
			descripciones[numeroTarea] = descripcion
			Escribir "Task updated"
		FinSi
	SiNo
		Escribir "Task not found"
	FinSi
FinSubProceso

SubProceso EliminarTarea(numeroTarea, cantidadTareas Por Referencia, descripciones)
	Definir opcion Como Entero
	Escribir "Delete Task"
	Escribir "Description"
	Escribir descripciones[numeroTarea]
	Escribir "Are you sure?"
	Escribir "1. Delete"
	Escribir "2. Cancel"
	Leer opcion
	
	Si opcion = 1 Entonces
		descripciones[numeroTarea] = ""
		Escribir "Task deleted"
	FinSi
FinSubProceso

SubProceso DetalleTarea(nombre, numeroTarea, cantidadTareas, descripciones)
	Definir opcion Como Entero
	
	Escribir "Home"
	Escribir "English"
	Escribir "Español"
	Escribir "Hello, ", nombre
	Escribir "Profile"
	Escribir "Users"
	Escribir "Tasks"
	Escribir "Log out"
	
	Escribir "Task"
	Escribir "<< back to index"
	Escribir "ID"
	Escribir numeroTarea
	Escribir "Description"
	Escribir descripciones[numeroTarea]
	Escribir "1. Edit"
	Escribir "2. Delete"
	Leer opcion
	
	Segun opcion Hacer
		1:
			EditarTarea(nombre, cantidadTareas, descripciones)
		2:
			EliminarTarea(numeroTarea, cantidadTareas, descripciones)
	FinSegun
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
	Escribir "1. Edit"
	Escribir "2. Change password"
	Escribir "3. Change profile image"
	Escribir "4. Delete Profile image"
	Leer opcion
	
	Segun opcion Hacer
		1:
			EditarPerfil(nombre, email)
		2:
			CambiarContrasena(nombre)
		3:
			CambiarImagenPerfil(nombre)
		4:
			EliminarImagenPerfil(nombre)
	FinSegun
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

SubProceso CambiarContrasena(nombre)
	Definir opcion Como Entero
	Escribir "Home"
	Escribir "English"
	Escribir "Español"
	Escribir "Hello, ", nombre
	Escribir "Profile"
	Escribir "Users"
	Escribir "Tasks"
	Escribir "Log out"
	
	Escribir "Edit password"
	Escribir "Current Password"
	Escribir "New password"
	Escribir "Repeat new password"
	Escribir "1. Save"
	Escribir "2. Cancel"
	Leer opcion
FinSubProceso
SubProceso CambiarImagenPerfil(nombre)
	Definir opcion Como Entero
	Escribir "Home"
	Escribir "English"
	Escribir "Español"
	Escribir "Hello, ", nombre
	Escribir "Profile"
	Escribir "Users"
	Escribir "Tasks"
	Escribir "Log out"
	
	Escribir "Edit profile image"
	Escribir "1. Buscar Imagen"
	Escribir "2. Save"
	Escribir "3. Cancel"
	Leer opcion
FinSubProceso

SubProceso EliminarImagenPerfil(nombre)
	Definir opcion Como Entero
	
	Escribir "Home"
	Escribir "English"
	Escribir "Español"
	Escribir "Hello, ", nombre
	Escribir "Profile"
	Escribir "Users"
	Escribir "Tasks"
	Escribir "Log out"
	
	Escribir "Delete Profile image"
	Escribir "Are you sure?"
	Escribir "1. Save"
	Escribir "2. Cancel"
	Leer opcion
FinSubProceso

