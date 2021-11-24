/*
materia obligatoria u optativa  y imagen
*/
import SwiftUI


/*
Se hace una enumeración para poder seleccionar una de las licenciaturas
*/
enum Licenciatura: String {
  case Informatica
  case Administracion
  case Contaduria
  
}

/*
Se crea la estructura Materia que contiene variables que se ocuparan dentro de la pantalla

*/

struct Materia: Identifiable {
    //Se declaran las variables
    var id = UUID()
    var nombreMateria: String
    var obligatoria: Bool
    var semestre: Int
    var tipoLicenciatura: Licenciatura?
    var imagenMateria: String
    //Se inicializan las variables para que sean ocupadas en la pantalla
    init (_ nombreMateria: String, _ obligatoria: Bool, _ semestre: Int, _ tipoLicenciatura: Licenciatura, _ imagenMateria: String){
        self.nombreMateria = nombreMateria
        self.obligatoria = obligatoria
        self.semestre = semestre
        self.tipoLicenciatura = tipoLicenciatura
        self.imagenMateria = imagenMateria

    }

}

//Se crea la variable materias que contiene los datos de la estructura Materia
var materias = [Materia ("Dispositivos moviles", false, 06, Licenciatura.Administracion, "safari"), Materia ("Ingenieria del Software", true, 07, Licenciatura.Informatica, "pencil"), Materia ("Finanzas", true, 05, Licenciatura.Contaduria, "pencil")]
//Se crea la vista del RenglonMateria
struct RenglonMateria: View {
    //Se crea la variable datosMateria
    var datosMateria:Materia
    //Se crea el cuerpo de la vista de la pantalla
    var body: some View {

                //La función sirve para hacer horizontal los elementos de la pantalla

         HStack{
                //se da espacio a los datos de la pantalla
            Spacer()
            
             //Se imprime los valores dentro de la pantalla

            Text(datosMateria.nombreMateria).font(.system(size: 11))
            
            //Se hace la condición para imprimir el valor deseado
            if datosMateria.obligatoria {
                Text("Obligatoria").font(.system(size: 11))
            }
            else {
                Text("Optativa").font(.system(size: 11))
            }
            
             //Se imprime los valores dentro de la pantalla
            Text("Semestre: \(datosMateria.semestre)").font(.system(size: 11))

            //Se hace la condición para imprimir el valor deseados de la estructura
            if (datosMateria.tipoLicenciatura == Licenciatura.Informatica){
                Text("Informática").font(.system(size: 11))
            } else if (datosMateria.tipoLicenciatura == Licenciatura.Administracion){
                Text("Adminitración").font(.system(size: 10))
            } else if (datosMateria.tipoLicenciatura == Licenciatura.Contaduria){
                Text("Contaduría").font(.system(size: 11))
            }
            
            
            
            //Se imprime la imagen en la pantalla
            Image(systemName: datosMateria.imagenMateria).foregroundColor(.blue)
        }.padding()
    }
}



/*

Se crea la estructura de la lista de materiales
*/
struct ListaMaterias: View {

    var body: some View {
    //se crea la vista de navegacion
     NavigationView {
    //se imprime las materias en una vista
     List(materias) { unaSolaMateria in
            //los datos se dirigen a un link de navegacion
            NavigationLink(destination: LaOtraVista()){
                            RenglonMateria(datosMateria: unaSolaMateria)
            /*RenglonContacto(datosContacto: contactos[1])
            RenglonContacto(datosContacto: contactos[2])
            */
             } 
            }.navigationBarTitle("Lista de materias")
            //la navegacion tiene un titulo
        }
    }
}
/*
*/
struct RenglonMateria_Previews: PreviewProvider {
    static var previews: some View {
        ListaMaterias().previewLayout(.fixed(width: 375, height: 600))
    }
}


struct Detalles: View {

    var algunTexto: String
    var body: some View {

        Text("Seleccionaste al contacto: \(algunTexto)")
    }
}

struct LaOtraVista: View {
    var body: some View {
        Text("Soy la otra vista")
    }
}

/*
struct LinkDeNavegacion: View {
    var body: some View { 

        NavigationView {
                        List(contactos){ unContacto in
                        NavigationLink(destination: LaOtraVista()){

                            Text("\(unContacto.nombre)")
                        }

                        }
               /* List {
                NavigationLink (destination: Detalles()){
                Text("Ir a la otra vista")
                }
                NavigationLink (destination: LaOtraVista()){
                Text("Ir a la otra vista")
                }
            }.navigationBarTitle("Soy el titulo")
        */
            }
            }
        }.navigationBarTitle("Contactos")
    }
}


struct ContenView_Previews: PreviewProvider {
    static var previews: some View {
        LinkDeNavegacion()
        .previewDevice(PreviewDevice(rawValue: "iphone 8"))
    }
}
*/

