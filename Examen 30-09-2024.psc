// Mediante esta Funcion se le permite al usuario leer un menu para posterior
//elegir la opccion necesaria
Funcion Menu <- Opciones
	Escribir "-----------------"
	Escribir "   Estudiantes   "
	Escribir "-----------------"
	Escribir "1. Registrar estuduante"
	Escribir "2. Asignar nota parcial al estudiante"
	Escribir "3. Registrar numero de inasistencia"
	Escribir "4. Mostrar el listado de estudiantes"
	Leer Seleccion
FinFuncion

//Funcion 1: le permite al usuario registrar un codigo (codigo del estuduante = cd_est) 
// asignarle un nobre(Nombre del estuduante).Ademas identificara si el codigo ya existe;
//si el codigo ya existe arrojara "El estudiante ya existe", si no el ususario no escribe 
//ningun valor pero, sin embargo, seleccina enter el sistema arrojara "Ingresa un valor".

Funcion CrearEstudiante <- Registro (cd_est, Nombre)
	Escribir "Digita el codigo del nuevo estuduante"
	Leer codi
	Si codi = '' Entonces
			Escribir "Ingresa un valor"
		SiNo
			Para n <- 1 Hasta 10 Con Paso 1 Hacer
				Si cd_est[n, 1] == '' Entonces
					cd_est[n, 1] <- codi
					Escribir "Escriba el nombre del estudiante"
					leer Nombre
					n <- 10
				SiNo
					Si cd_est[n, 1] = cd_est entonces
					Escribir "El estudiante ya existe"
					n <- 10
					FinSi
				FinSi
			FinPara
	FinSi
FinFuncion

//Funcion 2: Esta funcion permitira buscar el estuduante al cual se le desea ingresar la
// nota mediante su codigo. Una vez el usuario ingrese el codigo el sistema validara si el
//codigo ya se a asignado, de lo contrario va a indicar lo siguiente "el codigo ingresado no
//existe". UIna vez se encuentre el estuduante mediante el codigo
Funcion NotaParcial <- Asignacion (Nota, cd_est)
	Definir Codigo Como Entero
	Definir Nombres Como Caracter
	Definir notas Como Real
	Definir n Como Entero
	
	Escribir "Ingrese el codigo del estuduante"
	Leer codi
		acceder = Falso
		Para n = 1 Hasta 10 Con Paso 1 Hacer
			Si codi == cd_est[n, 1] Entonces
				Escribir cd_est   
			FinSi
		Fin Para
		si acceder == Falso Entonces
			Escribir "El codigo no esta en el sistema"
		FinSi
FinFuncion



Algoritmo Estudiantes
	
	Repetir
		menu <- Opciones
		Segun Menu Hacer
			1:
				Escribir "Crear nuevo estuduante"
				CrearEstudiante <- Registro (cd_est, Nombre)
			De Otro Modo:
				Escribir "Error: esa accion no existe"
		Fin Segun
	Hasta Que menu = 0
	
	
FinAlgoritmo
