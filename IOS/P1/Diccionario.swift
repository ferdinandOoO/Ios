
/*
Declaración del mapa miMapa que recibe una llave del tipo entero  y un valor de caualquier tipo de valor 
*/
var miMapa:[Int: Any] = [
    0: "Fernando",
    4 : 45, 
    9: true,
    78: 34.34,
    99: "C"
]

/*
Se remueve el valor para la llave con el valor de 9
*/

miMapa.removeValue(forKey: 9)

//Se declara la variable cuatro con el valor 99
var cuatro = 99

//Se imprime el valor de la llave 99 con el valor de la variable cuatro
//print("El valor con llave 99 de mi mapa es: \(miMapa[cuatro])")

//miMapa.updateValue("Casa", forkey:99)
//miMapa.updateValue(100.0, forkey:100)

//Se declara la variable del tipo arreglo miArreglo que recibe un valor Any para introcucir cualquier valor 
var miArreglo:[Any] = ["Prueba", 45, true]

/*
Se declara la condición for para el arreglo miArreglo para la variable valorDeMiArreglo
*/
for valorDeMiArreglo in miArreglo{
    print("\(valorDeMiArreglo)")
}
//Se imprimen los valores de mi mapa 
print("Valores de mi mapa")
/*
Se declara los valores de la condición de las llaves de miMapa de la variable llaveDeMiMapa
*/
for  llaveDeMiMapa in miMapa.keys {
    //Se imprimen los valores de la variable  llaveDeMiMapa del arreglo miMapa del valor llaveDeMiMapa
    print("La llave \(llaveDeMiMapa) tiene un valor \(miMapa[llaveDeMiMapa])")
}
