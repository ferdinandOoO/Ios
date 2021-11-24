import Foundation

//Parciales 60% 

//Constantes de los valores de los parciales
let TOTAL_PARCIALES : Double = 4
let VALOR_PORCENTUAL : Double = 0.6

/*
Función que permite obtener el promedio de las calificaciones de los parciales para obtencion de un porcentaje 
para ser evalucada
*/
func parciales (parcial1: Double, parcial2: Double, parcial3: Double, parcial4: Double) -> Double {

  //Constantes  de la funcion parciales
  let sumatoria = parcial1 + parcial2 + parcial3 + parcial4
  let promedio = sumatoria / TOTAL_PARCIALES 
  let calificacionExamenes = promedio * VALOR_PORCENTUAL

  return (calificacionExamenes)
}


/*
Impresión de la función parciales con los datos las 4 calificaciones obtenidas en los 
parciales 
*/
print ("Total de parciales: ", parciales(parcial1: 10, parcial2: 10, parcial3: 10, parcial4: 10))

//Constantes de los valores de las participaciones
let PROMEDIO_PARTICIPACIONES_GRUPALES  : Double = 10
let VALOR_PARTICIPACIONES : Double = 1.5

//Participaciones 15 %

/*
Función que obtiene el porcentaje de las participaciones 
*/
func porcentajeParticipaciones (numeroParcipaciones : Double ) -> Double {
  let promedioParticipaciones = numeroParcipaciones / PROMEDIO_PARTICIPACIONES_GRUPALES
  let calificacionParticipaciones = promedioParticipaciones * VALOR_PARTICIPACIONES
      
  return (calificacionParticipaciones)

}


//Impresión de la función porcentaje de las participaciones
print("Total participaciones:", porcentajeParticipaciones(numeroParcipaciones : 10))

//Constantes de la las practicas 25%

let PROMEDIO_PRACTICAS : Double = 4

let VALOR_PORCENTUAL_PRACTICA : Double = 0.25

/*
Función  prácticas que obtiene el porcentaje de las calificaciones de las practicas obtenidas 
*/
func practicas (practica1: Double, practica2: Double, practica3: Double, practica4: Double) -> Double {

  //Constantes de la funcion practicas
  let sumatoria = practica1 + practica2 + practica3 + practica4
  let promedio = sumatoria / PROMEDIO_PRACTICAS
  let calificacionesPracticas = promedio * VALOR_PORCENTUAL_PRACTICA 

  return (calificacionesPracticas)
}

//Impresión de la función practicas de las calificaciones obtenidas 
print ("Total prácticas: ", practicas(practica1: 10, practica2: 10, practica3: 10, practica4: 10))



/* Funcion que obtiene la calificacion final de la suma de los porcentajes
*/

func calificacionFinal(calificacionF1 : Double, calificacionF2 : Double, calificacionF3 : Double) -> Double{

  //Constante de la funcion calificacionFinal
  let sumatoriaCalificacionF = calificacionF1 + calificacionF2 + calificacionF3

    return (sumatoriaCalificacionF)
}

//Impresión de calificación Final
print("\nCalificación Final: ", calificacionFinal(calificacionF1 : parciales(parcial1: 10, parcial2: 10, parcial3: 10, parcial4: 10), calificacionF2 : porcentajeParticipaciones(numeroParcipaciones : 10), calificacionF3 : practicas(practica1: 10, practica2: 10, practica3: 10, practica4: 10)))




