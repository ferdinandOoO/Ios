//Parciales 60% 

//Constantes de los valores de los parciales
//let TOTAL_PARCIALES : Double = 4
let TOTAL_PARCIALES = 4
let VALOR_PORCENTUAL : Double = 0.6

//Constantes de la las practicas 25%

//let PROMEDIO_PRACTICAS : Double = 4
let PROMEDIO_PRACTICAS = 4
let VALOR_PORCENTUAL_PRACTICA: Double  = 0.25

//Constantes de los valore de las participaciones
let PROMEDIO_PARTICIPACIONES_GRUPALES = 10
let VALOR_PARTICIPACIONES: Double  = 1.5

//Funcion por arreglo calificacion Final
var  arregloPracticas: [Double] = [9, 8, 10, 9]
var  arregloExamenes: [Double] = [9, 8 , 9, 9]
var  arregloParticipaciones : [Double] = [10]


//Se agrega un nuevo valor al arreglo
//arregloPracticas.append(10)


/*
Funcion calificacionPracticas que recibe un arreglo del tipo arregloPracticas
*/
func calificacionPracticas( arregloCal: [Double]) -> Double {

  let sumatoria = arregloCal[0] + arregloCal[1] + arregloCal[2] + arregloCal[3] 

  let promedio = sumatoria / Double (PROMEDIO_PRACTICAS)

  let calificacionesPracticas = promedio * VALOR_PORCENTUAL_PRACTICA 

  return (calificacionesPracticas)

}

/*
Funcion calificacionExamenes que recibe un arreglo del tipo arregloExamenes
*/

func calificacionExamenes( arregloCal: [Double]) -> Double {

  let  sumatoria = arregloCal[0] + arregloCal[1] + arregloCal[2] + arregloCal[3] 
  let promedio = sumatoria / Double (TOTAL_PARCIALES) 
  let calificacionExamenes = promedio * VALOR_PORCENTUAL

  return (calificacionExamenes)

}

/*
Funcion calificacionParticipaciones que recibe un arreglo del tipo arregloParticipaciones
*/
func calificacionParticipaciones ( arregloCal: [Double]) -> Double {
  let sumatoria = arregloCal[0]
  let promedio =  sumatoria / Double (PROMEDIO_PARTICIPACIONES_GRUPALES)
  let calificacionParticipaciones = promedio * VALOR_PARTICIPACIONES
      
  return (calificacionParticipaciones)

}


//Declaracion del arreglo que recibe las calificaciones de las funciones pasadas
var  arregloFinal: [Double] = [calificacionPracticas(arregloCal: arregloPracticas), calificacionExamenes(arregloCal: arregloExamenes), calificacionParticipaciones(arregloCal: arregloParticipaciones)]


/*
Funcion calificacionFinal que recibe un arreglo del tipo arregloFinal de las funciones pasadas
*/

func calificacionFinal(arregloCal: [Double]) -> Double{

  let sumatoriaCalificacionF = arregloCal[0] + arregloCal[1] + arregloCal[2]
    return (sumatoriaCalificacionF)
}
//Impresion del total de las practicas
print ("Total de practicas", calificacionPracticas(arregloCal: arregloPracticas))
print ("Total de practicas", calificacionPracticas(arregloCal: [8,9,7,10]))
print ("\nTotal de practicas \(arregloPracticas)")

//Impresion del total de los examenes
print("\nTotal de examenes", calificacionExamenes(arregloCal: arregloExamenes))
print ("Total de examenes \(arregloExamenes)")

//Impresion de la calificacion final
print("\nCalificación final: ", calificacionFinal(arregloCal: arregloFinal))
print("\nCalificación final: \(arregloFinal)")



