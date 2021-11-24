
//Función que permite ver si la calificacion es aprobatoria 
func aprobadoReprobado (aprobadoRepro : Double ) -> Double{

  if   (aprobadoRepro > 6){
    print("aprobado")
  } 
  else{
    print("Reprobado")
  }
    return (aprobadoRepro)
}


//Se imprime la variable aprobadoRepro la funcion aprobadoReprobado
print (aprobadoReprobado (aprobadoRepro : 5))




/*
Funcion valor que permite obtener el valor de la calificación marcando si la calificacion es aprobatoria o reprobatoria 
*/
func valor(calificacionF : Double) -> Double{

  //Condiciones para la variable calificación
  if (calificacionF <= 5){
    print("Reprobado")
  } 
  else if (calificacionF > 5 && calificacionF <= 8 ){
    print("Puedes esforzarte más")
  } else  {
    print("Muy bien")
  }
  return (calificacionF)
}

/*
Impresión la función valor danro una calificacion obtenida para que se pueda ver en el terminal 
*/
print( valor(calificacionF : 6) )


/*
Funcion que imprimer los primeros 100 números pares 
*/

func primerCienNumerospares ()  {

  for numero in 1...100 {

  //Impresión de los numeros pares hasta el 1000
   
   print("Posición: \(numero) par: \(numero*2)")
    
  }

}

