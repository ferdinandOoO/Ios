/*
Importa la libreria de SwiftUI para la interfaz
*/
import SwiftUI


/*
Se crea una estructura para definir los las variables que integran la interfaz grafica
*/

struct Contacto: Identifiable {

    //Declaración de variables
    var id = UUID()
    var nombre: String
    var apellidos: String
    var fotoPerfil:String

    //Se inicializan los valores de las variables 
    init(_ nombre : String, _ apellidos:String, _ fotoPerfil: String){
        self.nombre = nombre
        self.apellidos = apellidos
        self.fotoPerfil = fotoPerfil
    }
}

//Se crea la variable contactos donde se llama a la estructura Contatos con sus respetivos valores

var contactos = [Contacto("Juan", "Perez", "safari"), Contacto("Jesus", "Ramirez", "pencil"), Contacto("Jhon", "Rambo", "pencil")]
struct RenglonContacto: View {

    //Se crea la variable datosContacto de la estructura Contacto
    var datosContacto:Contacto 

    //Se crea el cuerpo de la aplicación de la vista
    var body: some View {
        // Se utiliza la funcion HStack para hacer horizontal las funciones

         HStack{
            //Esta función ofrece espacio en la pantalla
            Spacer()
            //imprime los valores recibidos de datosContacto
            Text(datosContacto.nombre).font(.title)
            Text(datosContacto.apellidos)
            //Se imprime la imagen en la pantalla
            Image(systemName: datosContacto.fotoPerfil)
        }.padding()
    }
}


/*
Se crea la lista Contactos para colocar los renglones de las variables inicializadas

*/
struct ListaContactos: View {

    var body: some View {

     List(contactos) { unSoloContacto in



            RenglonContacto(datosContacto: unSoloContacto)
            /*RenglonContacto(datosContacto: contactos[1])
            RenglonContacto(datosContacto: contactos[2])
            */

            
        }
    }
}

//Se crea la estructura para imprimir los valores de la ListaContactos

struct RenglonContacto_Previews: PreviewProvider {
    static var previews: some View {
        ListaContactos()
    }
}
