
//Comienza con la clase CalculadoraCalificacion
class CalculadoraCalificacion {

  //Parciales 60% 

//Variabless de los valores de los parciales
var TOTAL_EXAMENES = 0
var PORCENTAJE_EXAMENES  = 0.0

//Constantes de la las practicas 25%

//Variables PROMEDIO_PRACTICAS : Double = 4
var TOTAL_PRACTICAS = 0
var PORCENTAJE_PRACTICAS = 0.0

//Variables de los valores de las participaciones 15%
var TOTAL_PARTICIPACIONES = 0
var PORCENTAJE_PARTICIPACIONES = 0.0


//Se inicializa los valores de la clase CalculadoraCalificacion

init (totalExamenes: Int, porcExama: Double, totalPrac: Int, porcPrac: Double, totalPartici: Int, porcParti: Double){


  //Se hace referencia a los valores inicializados 
    TOTAL_EXAMENES = totalExamenes

    PORCENTAJE_EXAMENES = porcExama

    TOTAL_PRACTICAS = totalPrac

    PORCENTAJE_PRACTICAS = porcPrac

    TOTAL_PARTICIPACIONES = totalPartici

    PORCENTAJE_PARTICIPACIONES = porcParti

}


/*
Funcion que realiza el contador del arreglo dado 
*/

  func sumatoria (arreglo: [Double], totalElementos: Int) -> Double {

        var contador = 0
        var sumatoria = 0.0

        while (contador < totalElementos){

            sumatoria += arreglo[contador]
            contador += 1
        }

        return sumatoria
  }

/*
Funcion calificacionPracticas que recibe un arreglo del tipo arregloPracticas
*/
  func calificacionPracticas(arregloPracticas: [Double]) -> Double {

        let sumaExamenes = sumatoria (arreglo: arregloPracticas, totalElementos: TOTAL_PRACTICAS)
        let promedio = sumaExamenes / Double(TOTAL_PRACTICAS)
        return promedio * PORCENTAJE_PRACTICAS

  }

/*
Funcion calificacionExamenes que recibe un arreglo del tipo arregloExamenes
*/

  func calificacionExamenes (arregloExamenes : [Double]) -> Double {

        let sumaExamenes = sumatoria (arreglo: arregloExamenes, totalElementos: TOTAL_EXAMENES)
        let promedio = sumaExamenes / Double (TOTAL_EXAMENES)
        return promedio * PORCENTAJE_EXAMENES

  }

/*
Funcion calificacionParticipaciones que recibe un arreglo del tipo arregloParticipaciones
*/
  func calificacionParticipaciones(participaciones: Int ) -> Double {

        let promedio = Double(participaciones) / Double (TOTAL_PARTICIPACIONES)

        return promedio * PORCENTAJE_PARTICIPACIONES
    }

/*
Funcion calificacionFinal que recibe las suma de las funciones pasadas
*/

  func calificacionFinal (_ arregloExamenes: [Double], _ arregloPracticas: [Double], _ participaciones: Int) -> Double{

        return calificacionExamenes(arregloExamenes: arregloExamenes) + calificacionPracticas(arregloPracticas: arregloPracticas) + calificacionParticipaciones(participaciones: 10)
  }
}

/*
Se declara una variable del tipo objeto que recibe los parametros inicializados de la clase CalculadoraCalificacion
*/

var miCalculadoraDeCalificacion : CalculadoraCalificacion = CalculadoraCalificacion(totalExamenes: 3, porcExama: 0.6, totalPrac: 5, porcPrac: 0.25, totalPartici:12, porcParti: 1.5)





/*
Se declara una varible que recibe los datos del arreglo de examenes 
*/

var califiExamenes: [Double ] = [9, 10, 9]
/*
Se declara una varible que recibe los datos del arreglo de practicas
*/

var califiPracticas: [Double] = [9, 10, 10, 8, 7]




/*
Se declaran las variables que reciben los parametros de las arreglos de examenes y practicas
*/
var porcentajeExamenes = miCalculadoraDeCalificacion.calificacionExamenes(arregloExamenes: califiExamenes)

var porcentajePracticas = miCalculadoraDeCalificacion.calificacionPracticas(arregloPracticas: califiPracticas)


//Impresion del total de los examenes
print ("Total de examenes  \(porcentajeExamenes )")

//Impresion del total de las practicas
print("Total de practicas \(porcentajePracticas)")



/*
Se declara la variable calificacionFinal que recibe los valores de los examenes, las practicas y las participaciones
*/
var calificacionFinal = miCalculadoraDeCalificacion.calificacionFinal(califiExamenes, califiPracticas, 10)

//Impresion del total de la calificacion final
print("Calificacion final \(calificacionFinal)")
