import Foundation

//Declaración de las variables con el valor incializado 

var primera  :Double = (4+2)
var segunda  :Double = (1 + 8 * (3*3))
var raizCuadrada :Double = 36.0.squareRoot()
var tercera  : Double = (1 + raizCuadrada)
var cuarta :Double = (12/4)


//Declaración de la variable operacion que recibe los valores inicializados 
var operacion : Double  = ((primera * (segunda)) - (tercera) + (cuarta))
// Impresión del resultado de la variable operacion
print("El resultado es: \(operacion)")


/* 
Función miPrimera que recibe un valor Double donde realiza una suma  de los valores 
*/
func miPrimera()-> Double {
    return (4+2)
    }

/* 
Función miSegunda que recibe un valor Double donde realiza una suma y multipliación de los valores 
que regresa el valor con un retorno
*/  
func miSegunda()-> Double {
    return (1 + 8 * (3*3))
    }
/* 
Función miRaizCuadrada que recibe un valor Double  donde realiza una raiz cuadrada del valor
 que regresa el resultado con un retorno
*/
func miRaizCuadrada() -> Double  {
    return (36.0.squareRoot())
    }
/* 
Función miPrimera que recibe un valor Double en donde realiza la suma de dos valores
que regresa el resultado  con un retorno
*/
func miTercera() -> Double {
    return (1 + raizCuadrada)
    }
/* 
Función miPrimera que recibe un valor Double  en donde realiza un cociente de valores 
que regresa el resultado con un retorno
*/
func miPCuarta() -> Double  {
    return (12/4)
    }

//Se imprime el resultado de las funciones 
print(miPrimera() * miSegunda() - miTercera() + miPCuarta())


/*
Función division que recibe dos valores del tipo Double y que retorna el valor del resultado
*/

func division(valor1 : Double , valor2 : Double) -> Double{
  return (valor1/valor2)
}

/*
Función areaRectangulo que recibe dos valores del tipo Double y que retorna el valor del resultado
*/

func areaRectangulo(base: Double, altura: Double) -> Double {
  return ((base)  * (altura))
}
//Division de los valores 2 y 4
print("El valor de la división es:", division(valor1: 2, valor2: 4))

//Perimetro del rectangulo de los valores 2 y 5
print ("El resultado del área del rectángulo es:", areaRectangulo(base: 2, altura: 5))

