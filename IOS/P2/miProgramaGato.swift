import SwiftUI
//Se importa la libreria para que se aprecie la pantalla


//Se crea la vista del sistema 
struct SwiftUI_View_Name: View {
    var body: some View {
            //Se imprime los valores dentro de la pantalla
           VStack() {  
               VStack() {      
                //Se imprime los valores dentro de la pantalla
               Text("Gato").font(.title)
               }.padding()
               //se da espacio a los datos de la pantalla

                //La función sirve para hacer vertical los elementos de la pantalla
                VStack() {
                 //Se imprime los valores dentro de la pantalla

               Text("Ronda: 5").font(.system(size: 15))
                }.padding()
                //La función sirve para hacer vertical los elementos de la pantalla
                VStack() {
                //Se imprime los valores dentro de la pantalla

                Text("Jugador X: 3").font(.system(size: 15))
               
                }.padding()
                //La función sirve para hacer vertical los elementos de la pantalla
                VStack() {
                 //Se imprime los valores dentro de la pantalla

                Text("Jugador O: 2").font(.system(size: 15))
              
                }.padding()

                //La función sirve para hacer horizontal los elementos de la pantalla
                HStack()
                {
                    //Se imprime los valores de la estructura Fila
                    Fila(tipo: 1)
                    Fila(tipo: 0)
                    Fila(tipo: 0)
                }
                //La función sirve para hacer vertical los elementos de la pantalla
                HStack()
                {
                    //Se imprime los valores de la estructura Fila
                    Fila(tipo: 0)
                    Fila(tipo: 1)
                    Fila(tipo: 0)
                }
                //La función sirve para hacer vertical los elementos de la pantalla
                HStack()
                {
                    //Se imprime los valores de la estructura Fila
                    Fila(tipo: 0)
                    Fila(tipo: 0)
                    Fila(tipo: 1)
                }.padding()
                //La función sirve para hacer horizontal los elementos de la pantalla
                
           }       
        
    }
}


//Se crea la estructura Fila para que sea ocupada por la fila 

struct Fila: View {
    
    //Se declara la variable para que sea utilizada en la pantalla
    var tipo:Int
    var body: some View {
        
        //Se hace una decision para establecer la variable seleccionada en el gato
        Image(systemName: tipo == 1 ? "safari" : "heart.fill")
            .resizable().frame(width: 60, height: 60)
            .foregroundColor(tipo == 1 ? .blue : .black).padding()
    }
}   


        
    
//Esta estructutura permite visualizar lo elementos de la pantalla
struct SwiftUI_View_Name_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUI_View_Name().previewLayout(.fixed(width: 375, height: 600))
    }
}
