import SwiftUI

//Lopez Alfaro Jesus Fernando

//Esta es la vista del Perfil


//Esta declaracion para saber los datos del perfil
struct Perfil: Identifiable {

    //Declaración de variables
    var id = UUID()
    var perfilImagen:String
    var nombre:String
    var apPaterno: String
    var apMaterno: String
    var fechaNacimiento: String
    var lugarDeNacimiento:String
    var tipoSangre:String
    var donadorSangre: Bool

    //Se inicializa las variables de la estructura
    init (_ perfilImagen: String, _ nombre: String, _ apPaterno: String, _ apMaterno: String, _ fechaNacimiento: String, _ lugarDeNacimiento: String, _ tipoSangre:String, _ donadorSangre: Bool){

        self.perfilImagen = perfilImagen
        self.nombre = nombre
        self.apPaterno = apPaterno
        self.apMaterno = apMaterno
        self.fechaNacimiento = fechaNacimiento
        self.lugarDeNacimiento = lugarDeNacimiento
        self.tipoSangre = tipoSangre
        self.donadorSangre = donadorSangre
    }


}

//Se crea las structura que forma parte de la vista de la aplicación del sistema

struct ContentView: View {

    //Se crea la variable datosPerfil de la estructura Perfil
    var datosPerfil : Perfil
 
    //Se crea la vista de la pantalla del sistema 
    var body: some View {


        NavigationView {

            VStack
        {
            HStack() {
            //Se imprime los valores dentro de la pantalla
            Image(systemName: datosPerfil.perfilImagen).resizable().frame(width:150.0, height:170.0).foregroundColor(.red)
            
                //La función sirve para hacer vertical los elementos de la pantalla
                VStack
                {
                    //Datos que integran la estructura
                   Text(datosPerfil.nombre)

                   //Datos que integran la estructura
                    Text("\(datosPerfil.apPaterno)")
                   //Datos que integran la estructura
                    Text("\(datosPerfil.apMaterno)")
                }
                
            
            }.padding()
            //La funcion padding sirve para dar saltos 

            //La función sirve para hacer vertical los elementos de la pantalla
            VStack
            {
                
                //Datos que integran la estructura
                Text("Fecha de nacimiento:  \(datosPerfil.fechaNacimiento) ")
            }
            //La función sirve para hacer vertical los elementos de la pantalla
            VStack
            {
                
                //Datos que integran la estructura
                Text("Lugar de nacimiento: \(datosPerfil.lugarDeNacimiento)")
            }.padding()
            //La funcion padding sirve para dar saltos 

            //La función sirve para hacer horizontal los elementos de la pantalla
            HStack {

                //La función sirve para hacer vertical los elementos de la pantalla
                VStack
                {
                    
                    //Datos que integran la estructura
                    Text(datosPerfil.tipoSangre)
                }.padding()
                //La funcion padding sirve para dar saltos 

                VStack
                {
                    if datosPerfil.donadorSangre {
                        Text("Donador de Sangre: Si")
                    }
                    else {
                        Text("Donador de Sangre: No")
                    }
            
                    
                }.padding()
                //La funcion padding sirve para dar saltos 
                
             }
    
        } .navigationBarTitle(Text("< MyApp")) 
        //Sirve para la navegación de la imagen
            
      }

        
    }

}


/*
 Se crea la estructura en donde s toman en cuenta los datos de la estructura Perfil
*/

struct ContentView_Preview: PreviewProvider {
    static var previews: some View {
        ContentView(datosPerfil: Perfil("safari", "Juan", "Perez", "Perez", "27/07/1955", "México, D.F", "A +", false ))
        //Estos datos se tomaron de referencia al examen
    
    }
}