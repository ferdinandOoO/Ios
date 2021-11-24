/*
Importa la libreria de SwiftUI para la interfaz
*/
import SwiftUI

/*
Se crea una estructura para definir los las variables que integran la interfaz grafica
*/

struct Contacto {

   var telefonoPersona: String
   var correoPersona: String
   var nombrePersona: String
   var imagenContacto: String


  //Se inicializan las variables de la estructura Contacto  

    init(_ telefonoPersona: String, _  correoPersona: String, _ nombrePersona: String, _ imagenContacto: String) {

        self.telefonoPersona = telefonoPersona
        self.correoPersona = correoPersona
        self.nombrePersona = nombrePersona
        self.imagenContacto = imagenContacto
    }

}

//Se crea las structura que forma parte de la vista de la aplicación del sistema

struct ContentView: View {

    //Se crea la variable datosContacto de la estructura Contacto
    var datosContacto : Contacto
 
    //Se crea la vista de la pantalla del sistema 
    var body: some View {
        //La función sirve para hacer vertical los elementos de la pantalla
        VStack()
        {
            //Se imprime los valores dentro de la pantalla
            Image(systemName: datosContacto.imagenContacto).resizable().frame(width:160.0, height:180.0).foregroundColor(.red)
            Text(datosContacto.nombrePersona)   
            //Esta función ofrece espacio en la pantalla

        //La función sirve para hacer horizontal los elementos de la pantalla
        HStack()
        {
            //La función sirve para hacer vertical los elementos de la pantalla
           VStack(){
               //Se imprime los valores dentro de la pantalla
               //Se imprime la imagen en la pantalla
               Image(systemName: "phone")
               Text("Llamar").font(.system(size: 9))
           } 
            //La función sirve para hacer vertical los elementos de la pantalla
           VStack(){
               //Se imprime los valores dentro de la pantalla
               //Se imprime la imagen en la pantalla
               Image(systemName: "message")
               Text("Mensaje de texto").font(.system(size: 7))
           }
            //La función sirve para hacer vertical los elementos de la pantalla
           VStack(){
               //Se imprime los valores dentro de la pantalla
               //Se imprime la imagen en la pantalla
               Image(systemName: "video")
               Text("Configurar").font(.system(size: 9))
           }
           //La función sirve para hacer vertical los elementos de la pantalla
           VStack(){
               //Se imprime los valores dentro de la pantalla
               //Se imprime la imagen en la pantalla
               Image(systemName: "icloud")
               Text("Correo eléctronico").font(.system(size: 7))
           }
           
        }

        Divider()
        .frame(width: 300)

        //La función sirve para hacer horizontal los elementos de la pantalla
        HStack(){
            //La función sirve para hacer vertical los elementos de la pantalla
            VStack(){
                //Se imprime la imagen en la pantalla
                Image(systemName: "phone")
                .offset(x: 60, y:0)

            }
            //La función sirve para hacer vertical los elementos de la pantalla
            VStack(){
                //Se imprime los valores dentro de la pantalla
                Text("55-55-55-55-55").font(.system(size: 10))
                 .offset(x: 60, y:0)
                Text("Movil").font(.system(size: 10))
                 .offset(x: 60, y:0)
            }
            Spacer()
            .frame(width: 20)

            //La función sirve para hacer vertical los elementos de la pantalla
            VStack(){
                //Se imprime la imagen en la pantalla
                Image(systemName: "message")
                .offset(x: 60, y:0)

            }
            
        }

        HStack(){
            //La función sirve para hacer vertical los elementos de la pantalla
            VStack(){
                    //Se imprime la imagen en la pantalla
                    Image(systemName: "message")
                    .offset(x: 60, y:0)
                    //Esta función ofrece espacio en la pantalla
                    
                }
            //La función sirve para hacer vertical los elementos de la pantalla
            VStack(){
                //Se imprime los valores dentro de la pantalla
                Text("55-55-55-55-56").font(.system(size: 10))
                .offset(x: 60, y:0)
                Text("Iztapalapa").font(.system(size: 10))
                .offset(x: 60, y:0)
                
            }
        
            //La función sirve para hacer vertical los elementos de la pantalla
            VStack(){
                //Se imprime la imagen en la pantalla
                Image(systemName: "message")
                .offset(x: 60, y:0)
            }
            
        }

            HStack(){
                //La función sirve para hacer vertical los elementos de la pantalla
                VStack(){
                    //Se imprime la imagen en la pantalla
                    Image(systemName: "message")
                    .offset(x: 60, y:0)
                }
                //La función sirve para hacer vertical los elementos de la pantalla
                VStack(){
                    //Se imprime los valores dentro de la pantalla
                    Text("juanperez@hotmail.com").font(.system(size: 10))
                    .offset(x: 60, y:0)
                    Text("JuanPerez").font(.system(size: 9))
                    .offset(x: 60, y:0)
                }
                
                 
            } 
                //La función sirve para hacer horizontal los elementos de la pantalla
            HStack(){
                //La función sirve para hacer vertical los elementos de la pantalla
                VStack(){
                    //Se imprime la imagen en la pantalla
                    Image(systemName: "pencil")
                    .offset(x: 60, y:0)

                }
                //La función sirve para hacer vertical los elementos de la pantalla
                VStack(){
                    //Se imprime los valores dentro de la pantalla
                    Text("cuenta123@hotmail.com").font(.system(size: 10))
                    .offset(x: 60, y:0)
                    Text("Cuenta").font(.system(size: 9))
                    .offset(x: 60, y:0)
                }

                //Esta función ofrece espacio en la pantalla
                 Spacer()

            }  

            Divider()
        .frame(width: 300)

                //La función sirve para hacer horizontal los elementos de la pantalla
            HStack(){
                //La función sirve para hacer vertical los elementos de la pantalla
                VStack(){
                    //Se imprime la imagen en la pantalla
                    Image(systemName: "message")
                    .offset(x: 60, y:0)
                }
                //La función sirve para hacer vertical los elementos de la pantalla
                VStack(){
                    //Se imprime los valores dentro de la pantalla
                    Text("Llamar a 55-55-55-55-55").font(.system(size: 10))
                    .offset(x: 60, y:0)
                }
                //Esta función ofrece espacio en la pantalla
                 Spacer()
            }
        }
       
    }
}

/*
 Se crea la estructura en donde s toman en cuenta los datos de la estructura Contacto
*/

struct ContentView_Preview: PreviewProvider {
    static var previews: some View {
        ContentView(datosContacto: Contacto("55-55-55-55-55", "cuenta123@gmail.com", "Fer", "safari"))
    
    }
}
