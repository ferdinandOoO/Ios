import SwiftUI

//Lopez Alfaro Jesus Fernando

//Esta es la vista de Habilidades

struct Habilidades: Identifiable {

    //Declaración de variables
    var id = UUID()
    var habilidad: String
    var calificacion: Int

    //Se inicializa las variables de la estructura
    init (_ habilidad: String, _ calificacion: Int){
        self.habilidad = habilidad
        self.calificacion = calificacion
    }
}


//Se crea la variable materias que contiene los datos de la estructura Materia
var habilidades = [Habilidades("Programación", 3), Habilidades("Fotografía", 1), Habilidades("Inglés", 2), Habilidades("Futbol", 2), Habilidades("Natación", 3)]

//Se crea la Estructura que forma parte de la vista de la aplicación del sistema

struct RenglonHabilidades: View {

    //Se crea la variable datosPerfil de la estructura Perfil
    var datosHabilidades: Habilidades
    //Se crea la vista de la pantalla del sistema 
    
    var body: some View {
             //La función sirve para hacer horizontal los elementos de la pantalla
            HStack {
                 //La función sirve para hacer vertical los elementos de la pantalla
                VStack
                {
                    //se da espacio a los datos de la pantalla
                    Spacer()
                    //datos de la pantalla
                    Text("Habilidad: \(datosHabilidades.habilidad) ")
                }
                
                 //La función sirve para hacer horizontal los elementos de la pantalla
                HStack
                {

                    /*
                    Condición para identificar las veces en que se repite el  valor de la imagen
                    */
                  if (datosHabilidades.calificacion == 1) {

                        Image(systemName: "icloud")
                    

                    
                } else if (datosHabilidades.calificacion == 2) {
                   
                        Image(systemName: "icloud")
                        Image(systemName: "icloud")
                
                   
                } else if (datosHabilidades.calificacion == 3) {
                    
                        Image(systemName: "icloud")
                        Image(systemName: "icloud")
                        Image(systemName: "icloud")
                    
                }  
            }
                
         }.padding()
         //Sirve para darle un espacio a la pantalla
    }
        
}

/*
Se crea la estructura de la lista de materiales
*/
struct ListaHabilidades: View {

    var body: some View {
    //se crea la vista de navegacion
    NavigationView {

        //se imprime las materias en una vista
        List(habilidades) { unaSolaHabilidad in
            RenglonHabilidades(datosHabilidades: unaSolaHabilidad)
            
         }.navigationBarTitle(Text("< MyApp")) 
        //Sirve para la navegación de la imagen
    
     }
    
    }
}

/*
Se toma la vista para que se pueda ejecutar la estructura  de ListaHabilidades
*/
struct RenglonHabilidades_Previews: PreviewProvider {
    static var previews: some View {
        //Se imprime las listas
        ListaHabilidades()
    }
}