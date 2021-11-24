import SwiftUI

//Lopez Alfaro Jesus Fernando

//Libreria del la pantalla principal de Swift


struct Aplicacion: Identifiable {
    //Se declaran las variables
    var id = UUID()
    var nombre:String
    var imagen:String

    //Se inicializa las variables
    init(_ nombre: String, _ imagen: String){

        self.nombre = nombre
        self.imagen = imagen
    }

}


//Se crea la variable aplicaciones que contiene los datos de la estructura Aplicacion
var aplicaciones = [Aplicacion ("Mi Perfil", "person.icloud"), Aplicacion("Mis habilidades", "book")]





//Se crea la vista del RenglonAplicacion
struct RenglonAplicacion: View {
    //Se crea la variable datosAplicacion
    var datosAplicacion:Aplicacion
    //Se crea el cuerpo de la vista de la pantalla
    var body: some View {

        HStack{
                //se da espacio a los datos de la pantalla
            Spacer()
            
             //Se imprime los valores dentro de la pantalla

            Text(datosAplicacion.nombre)
            .offset(x: -80, y:0)
            //Posicion del dato
            //Se imprime la imagen en la pantalla
            Image(systemName: datosAplicacion.imagen).foregroundColor(.blue)
        }.padding()
        //Sirve para dar espacio a los archivos dentro del programa

    }

}


/*

Se crea la estructura de la lista de materiales
*/
struct ListaAplicacion: View {

    var body: some View {
    //se crea la vista de navegacion
     NavigationView {
    //se imprime las materias en una vista
     List(aplicaciones) { unaSolaAplicacion in
            //los datos se dirigen a un link de navegacion para dirigirse a otra pantalla
            NavigationLink(destination: Perfil()){
                            RenglonAplicacion(datosAplicacion: unaSolaAplicacion )
             } 
            /* NavigationLink(destination: Habilidades()){
                            RenglonAplicacion(datosAplicacion: unaSolaAplicacion )
             } 
            */
            }.navigationBarTitle("MyApp")
            //la navegacion tiene un titulo
        }
    }
}


//Ejecución de los parametros de la pantalla

struct RenglonAplicacion_Previews: PreviewProvider {
    static var previews: some View {
        //Se imprime la pantalla principal de la pantalla
        ListaAplicacion().previewLayout(.fixed(width: 375, height: 600))
    }
}


/*
Esta estructura sirve para ser utilizda en la pantalla principal
*/

struct Perfil: View {
    var body: some View {
        //Se toma como referencia esta estructura para dirigirse a otra pantalla
        Text("Perfil")
    }
}


/*
Esta estructura sirve para ser utilizda en la pantalla principal
*/

struct Habilidades: View {
    var body: some View {
        //Se toma como referencia esta estructura para dirigirse a otra pantalla
        Text("Mis Habilidades")
    }
}