//Juego del ahorcado Fosch - Peralta


//Uso de funcion
Funcion imprimirPantalla (adivinar)
	Escribir adivinar[1],adivinar[2],adivinar[3],adivinar[4],adivinar[5],adivinar[6];
FinFuncion

//Programa principal
Algoritmo juego
	Dimension adivinar[6]
	Para i<-1 Hasta 6 Con Paso 1 Hacer
		adivinar[i] = "_"
	Fin Para
	Dimension palabrasAdivinar[3] 
	palabrasAdivinar[1] = "marina"; //palabras de 6 letras a adivinar
	palabrasAdivinar[2] = "perros";
	palabrasAdivinar[3] = "pintar";
	
	//Definicion de variables
	Definir letra Como Caracter;
	Definir ganar Como Logico;
	Definir letraAcertada Como Entero;
	Definir vida Como Entero;
	Definir s Como Entero
	vida = 5;
	terminar = Falso;
	letraAcertada = 0; 
	Definir palabraAleatoria Como Entero;
	palabraAleatoria = azar(3) + 1;
	
	//Pantalla
	Escribir "------------------------------------------------------------------------------------";
	

	Escribir 	"8888888888 888";
	Escribir 	"888        888                     __________";
	Escribir 	"888        888                    |         |";
	Escribir 	"8888888    888                    |         0";
	Escribir 	"888        888                    |        /|\";
	Escribir 	"888        888                    |        / \";
	Escribir 	"888        888                    |";
	Escribir 	"8888888888 888                 ___|___";
		
	Escribir "                                                                                       ";	
		
	Escribir 	"          888                                             888";
	Escribir 	"          888                                             888";
	Escribir 	"          888                                             888";
	Escribir 	" 8888b.   88888b.   .d88b.  888d888 .d8888b  8888b.   .d88888   .d88b.";
	Escribir 	"    888   8b d888  8b 888P  d88P    88b         d888  888 d88  88b  88b";
	Escribir 	".d888888  888  888 888  888 888    888      .d888888 888  888  888  888";
	Escribir 	" 888  888 888  888 Y88..88P 888    Y88b.    888  888 Y88b 888  Y88..88P";
	Escribir 	" Y888888  888  888   Y88P   888     Y8888P  Y888888    Y88888    Y88P";

	Escribir "------------------------------------------------------------------------------------";
	Escribir "¡ Empieza el juego !";
	
	//Procedimiento
	
	Mientras terminar == Falso  Hacer
		Segun palabraAleatoria Hacer
			1:	
				Escribir vida;
				imprimirPantalla(adivinar)
				leer letra;
				Si letra == "a" Entonces
					adivinar[6] = "a";
					adivinar[2] = "a";
					letraAcertada = letraAcertada + 2;
				Sino
					Si letra == "m" Entonces
						adivinar[1] = "m";
						letraAcertada = letraAcertada + 1;
					SiNo
						Si letra == "r" Entonces
							adivinar[3] = "r";
							letraAcertada = letraAcertada + 1;
						SiNo
							Si letra == "i" Entonces
								adivinar[4] = "i";
								letraAcertada = letraAcertada + 1;
							SiNo
								Si letra == "n" Entonces
									adivinar[5] = "n";
									letraAcertada = letraAcertada + 1;
								SiNo	 
									vida = vida - 1;
								FinSi
							FinSi
						FinSi
					FinSi
				FinSi
				
			2:
				Escribir vida;
				imprimirPantalla(adivinar)
				leer letra;
				Si letra == "r" Entonces
					adivinar[3] = "r";
					adivinar[4] = "r";
					letraAcertada = letraAcertada + 2;
				Sino
					Si letra == "p" Entonces
						adivinar[1] = "p";
						letraAcertada = letraAcertada + 1;
					SiNo
						Si letra == "e" Entonces
							adivinar[2] = "e";
							letraAcertada = letraAcertada + 1;
						SiNo
							Si letra == "o" Entonces
								adivinar[5] = "o";
								letraAcertada = letraAcertada + 1;
							SiNo
								Si letra == "s" Entonces
									adivinar[6] = "s";
									letraAcertada = letraAcertada + 1;
								SiNo	 
									vida = vida - 1;
								FinSi
							FinSi
						FinSi
					FinSi
				FinSi
			3:
				Escribir vida;
				imprimirPantalla(adivinar)
				leer letra;
				Si letra == "n" Entonces
					adivinar[3] = "n";
					letraAcertada = letraAcertada + 1;
				Sino
					Si letra == "p" Entonces
						adivinar[1] = "p";
						letraAcertada = letraAcertada + 1;
					SiNo
						Si letra == "i" Entonces
							adivinar[2] = "i";
							letraAcertada = letraAcertada + 1;
						SiNo
							Si letra == "a" Entonces
								adivinar[5] = "a";
								letraAcertada = letraAcertada + 1;
							SiNo
								Si letra == "r" Entonces
									adivinar[6] = "r";
									letraAcertada = letraAcertada + 1;
								SiNo	 
									Si letra == "t" Entonces
										adivinar[4] = "t";
										letraAcertada = letraAcertada + 1;
									SiNo
										vida = vida - 1;
									FinSi
								FinSi
							FinSi
						FinSi
					FinSi
				FinSi
		Fin Segun
		
		Si letraAcertada == 6 Entonces
			terminar = Verdadero;
		SiNo
			Si vida == 0 Entonces
				terminar = Verdadero			
			FinSi
		FinSi
		Limpiar Pantalla;
	Fin Mientras

	//salida
	Si vida == 0 Entonces
		Escribir "-----------------";
		Escribir ":( PERDISTE :( ";
		Escribir "-----------------"
	FinSi
	
	Si letraAcertada == 6 Entonces
		Escribir "---------------";
		Escribir "¡¡ GANASTE !!";
		Escribir "---------------";
	 FinSi
	
FinAlgoritmo
