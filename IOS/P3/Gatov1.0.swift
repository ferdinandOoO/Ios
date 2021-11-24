//
//  ContentView.swift
//  GatoSwiftUI
//
//  Created by Lalo on 02/12/20.
//  Copyright © 2020 Lalo. All rights reserved.
//

import SwiftUI



//Vista principal que contendra TODOS los elementos
struct ContentView: View {

    

    //Contador que guardara el valor total del numero de las rondas jugadas 
    @State private var contador:Int = 0

    var body: some View {
        NavigationView {
            //Vista vertical del sistema
            VStack() {
                Spacer()
                //Esta función crea un espacio 

                HStack {
                    InfoJuego(rondas:  0, victoriasX: 0, victoriasO: 0)
                    
                    Spacer()
                    //Esta función crea un espacio 
                }
                
                Spacer()
                    //Esta función crea un espacio 
                Tablero()
                //Se llama a Tablero
            }.navigationBarTitle(Text("Gato"))
        }
    }
}

//Vista que mostrará información del juego, rondas actuales, puntuación, etc
struct InfoJuego: View {
    
    var rondas:Int = 0
    var victoriasX:Int
    var victoriasO:Int

   /* if (estadoTablero.hayGanador() == .X){
        victoriasX = 1
    } else if (estadoTablero.hayGanador() == .O) {
        victoriasX = 1
    }
    */

    //Se crea la variable observada para ver la victoria correspondiente al jugador
    //@ObservedObject var victoria :EstadoTablero

    /*
    //Funcion que indica el valor de la victoria X
    func victoriaJugadorX () {
        //Validamos que numeroAIncrementar se puede convertir a Int (que sea una cadena con un valor numerico), en caso contrario lo dejamos en 0
        self.contador = self.contador + (Int(numeroAIncrementar) ?? 0)
    }

    //Funcion que indica el valor de la victoria O
    func victoriaJugadorO () {
        //Validamos que numeroAIncrementar se puede convertir a Int (que sea una cadena con un valor numerico), en caso contrario lo dejamos en 0
        self.contador = self.contador + (Int(numeroAIncrementar) ?? 0)
    }
    */
    
    
    var body: some View {
        VStack () {
            Text("Rondas: \(rondas)")
            Text("Jugador X: \(victoriasX)")
            Text("Jugador O: \(victoriasO)")
        }.padding()
    }
}





//Definición de Clase OBSERVABLE que tendrá la matriz es como un STATE pero a nivel aplicación o varias vistas
class EstadoTablero : ObservableObject {
    //Indicamos que la matriz sera PUBLICADA para las vistas, de tal forma que cuando se cambie un valor, todas están serán actualizadas
    @Published var matriz:[[ValorCasilla]]
    //Variable que sirve para indicar si ya hay un ganador
    @Published var isAWinner = false
    //Variable que indicar el turno actual, siempre se iniciar con el jugador X
    var turno:ValorCasilla = .X
    
    //Incializador de la clase EstadoTablero
    init(_ matriz: [[ValorCasilla]]) {
        self.matriz = matriz
        //Se inicializa la variable matriz
    }
    
    //Método que se usa para validar si ya hay una combinación para un ganador
    func hayGanador () {
        //Se validan las 3 casillas de hasta arriba, siempre se valida que NO sean .N (casilla vacía)
        if (matriz[0][0] != .N && (matriz[0][0] == matriz[0][1] && matriz[0][1] == matriz[0][2])) {
            isAWinner = true
        
        //Se validan las 3 casillas de hasta abajo, siempre se valida que NO sean .N (casilla vacía)
        } else if (matriz[2][2] != .N && (matriz[2][0] == matriz[2][1] && matriz[2][1] == matriz[2][2])) {
            isAWinner = true
        //Se validan las 3 casillas de enmedio, siempre se valida que NO sean .N (casilla vacía)
        } else if (matriz[1][1] != .N && (matriz[1][0] == matriz[1][1] && matriz[1][1] == matriz[1][2])) {
            isAWinner = true
        //Se validan las 3 casillas de lado izquierdo, siempre se valida que NO sean .N (casilla vacía)
        } else if (matriz[0][0] != .N && (matriz[0][0] == matriz[1][0] && matriz[1][0] == matriz[2][0])) {
            isAWinner = true
        //Se validan las 3 casillas de lado derecho, siempre se valida que NO sean .N (casilla vacía)
        } else if (matriz[2][2] != .N && (matriz[0][2] == matriz[1][2] && matriz[1][2] == matriz[2][2])) {
            isAWinner = true
        //Se validan las 3 casillas de diagonal superior, siempre se valida que NO sean .N (casilla vacía)
        } else if (matriz[1][1] != .N && (matriz[0][0] == matriz[1][1] && matriz[1][1] == matriz[2][2])) {
            isAWinner = true
        //Se validan las 3 casillas de diagonal inferior, siempre se valida que NO sean .N (casilla vacía)
        } else if (matriz[1][1] != .N && (matriz[2][0] == matriz[1][1] && matriz[1][1] == matriz[0][2])) {
            isAWinner = true
        } else {
            isAWinner = false
            //Devuelve un valor falso
        }
    }
}

//Clase que contiene el conjunto de casillas para así tener un tablero
struct Tablero: View {
    
    //Creamos una instancia del objeto EstadoTablero, es necesarios usar la anotación @ObservedObject para indicar que se OBSERVE
    //Solo UNA VEZ se inicializa
    @ObservedObject var estadoTablero  = EstadoTablero([
        [.N,.N,.N],
        [.N,.N,.N],
        [.N,.N,.N]
    ])
    
    //Esta funcion se manda a llamar para que todos los valores de la matriz vuelvan a .N
    func reiniciarTablero () {
        estadoTablero.matriz = [
            [.N,.N,.N],
            [.N,.N,.N],
            [.N,.N,.N]
        ]
        //También reiniciamos la bandera para saber si hay ganador y el la variable que indica de quien es el turno
        estadoTablero.isAWinner = false
        estadoTablero.turno = .X
    }
    
    var body: some View {
        VStack {
            //Texto que se muestrá cuando hay un ganador
            if (estadoTablero.isAWinner) {
                Text("Hay un ganador")
                //Muestra que hay un ganador en el juego del gato
            }
            //Boton que se usa para invocar el método de reiniciarTablero()
            Button(
                action: {
                    //Invoca el método reiniciar tablero
                    self.reiniciarTablero()
                }) {
                Text("Reiniciar tablero")
                    .fontWeight(.bold)
                    //las letras las pone remarcadas 
                    .background(Color.blue)
                    // el fondo lo colocan en azul
                    .cornerRadius(40)
                    //coloca un radio de 40 
                    .foregroundColor(.white)
                    //el color de las letras las coloca en color blanco
                   
                    .padding(10)
                    //Se da un espacio 
                     .overlay(
                        RoundedRectangle(cornerRadius: 40)
                        .stroke(Color.blue, lineWidth: 5)
                        //Se realiza la forma de unn rectangulo con bordes circulares de color azul
                    
                    )
            }
            HStack {
                //Se manda a las casillas el objeto observable COMPLETO y los indices para indicar que valor dentro de la matriz debe de tomar
                Casilla(estadoTablero: estadoTablero, renglon: 0, columna: 0)
                Divider()
                //Esta función crea una linea sobre 
                .frame(height: 100)
                .background(Color.black)
                //El fondo de pantalla es de color negro
                Casilla(estadoTablero: estadoTablero, renglon: 0, columna: 1)
                //Se selecciona el renglon y la columna de estadoTablero
                Divider()
                .frame(height: 100)
                //Se usa la función Divider para separar con un linea
                .background(Color.black)
                 //El fondo de pantalla es de color negro
                Casilla(estadoTablero: estadoTablero, renglon: 0, columna: 2)
                //Se selecciona el renglon y la columna de estadoTablero

                
                
            }.padding()
            Divider()
            
            HStack {
                Casilla(estadoTablero: estadoTablero, renglon: 1, columna: 0)
                Divider()
                .frame(height: 100)
                //Se usa la función Divider para separar con un linea
                .background(Color.black)
                //El fondo de pantalla es de color negro
                Casilla(estadoTablero: estadoTablero, renglon: 1, columna: 1)
                //Se selecciona el renglon y la columna de estadoTablero
                Divider()
                .frame(height: 100)
                //Se usa la función Divider para separar con un linea
                .background(Color.black)
                //El fondo de pantalla es de color negro
                Casilla(estadoTablero: estadoTablero, renglon: 1, columna: 2)
                //Se selecciona el renglon y la columna de estadoTablero
            }.padding()
            Divider()
            
            HStack {
                Casilla(estadoTablero: estadoTablero, renglon: 2, columna: 0)
                //Se selecciona el renglon y la columna de estadoTablero
                Divider()
                .frame(height: 100)
                //Se usa la función Divider para separar con un linea
                .background(Color.black)
                //El fondo de pantalla es de color negro
                Casilla(estadoTablero: estadoTablero, renglon: 2, columna: 1)
                //Se selecciona el renglon y la columna de estadoTablero
                Divider()
                .frame(height: 100)
                //Se usa la función Divider para separar con un linea
                .background(Color.black)
                //El fondo de pantalla es de color negro
                Casilla(estadoTablero: estadoTablero, renglon: 2, columna: 2)
                //Se selecciona el renglon y la columna de estadoTablero
            }.padding()
            //Se hace un espacio con la función padding
        }
    }
}

enum ValorCasilla {
    //Se enumeran los valores X, O, N dentro del juego del gato con una enumeración de ValorCasilla
    case X
    case O
    case N
}

struct Casilla: View {
    
    //La Casilla también debe Observar el EstadoTablero, con su respectivo anotación @ObservedObject
    //Aquí YA NO ES NECESARIO inicializar
    @ObservedObject var estadoTablero:EstadoTablero
    
    //También vamos a recibir como parámeetro el renglon y columan
    var renglon:Int
    var columna:Int
    
    //MEtodo que se invoca cuando se presiona la casilla, valida que se pueda seguir oprimiendo y muestra la imagen de acuerdo al jugador en turno
    func cambiarCasilla () {
        
        //Valida que se puedan seguir jugando, pero SI HAY un ganador ya no se puede continuar
        if (estadoTablero.isAWinner == true) {
            //Finaliza la ejecución de la la función
            return
        }
        
        //Solamente se puede cambiar la casilla si el valor que le corresponde a la matriz es .N
        if (self.estadoTablero.matriz[self.renglon][self.columna] == .N) {
            
            //Preguntamos de quien es el turno actual
            if (estadoTablero.turno == .X) {
                
                //Cambiamos el valor dentro de la matriz de acuerdo a los indices
                self.estadoTablero.matriz[self.renglon][self.columna] = .X
                
                //Pasamos el turno al siguiente
                estadoTablero.turno = .O
            
            //Sino fuese el turno de .X entonces preguntamos si es el de .O
            } else if (estadoTablero.turno == .O) {
                
                //Cambiamos el valor dentro de la matriz de acuerdo a los indices
                self.estadoTablero.matriz[self.renglon][self.columna] = .O
                
                //Pasamos el turno al siguiente
                estadoTablero.turno = .X
            }
            
            //Invocamos el método para validar si ya hay un ganador
            self.estadoTablero.hayGanador()
        } else {
            print("La casilla ya ha sido usada") 
            //Se imprime le valor de la variable que ya ha sido usada
        }
    }
    
    var body: some View {
        //Se hace el cambio de casilla
        Button(action: {
            
            self.cambiarCasilla()
        }) {
            //De acuerdo al valor dentro de la matriz mostramos la imagen que le corresponde a la casilla
            if (self.estadoTablero.matriz[self.renglon][self.columna] == .X) {
                Image(systemName:
                    //De acuerdo al valor de la casilla mostramos Corazón (.N), Safari (.X) o iCloud (.O)
                    "safari")
                .resizable().frame(width: 60, height: 60)
                    .foregroundColor(.red).padding()
                    //el color de fondo es de color rojo
                    //se hace un espacio con padding
            } else if (self.estadoTablero.matriz[self.renglon][self.columna] == .O) {
                Image(systemName:
                    //De acuerdo al valor de la casilla mostramos Corazón (.N), Safari (.X) o iCloud (.O)
                    "icloud")
                .resizable().frame(width: 60, height: 60)
                    .foregroundColor(.blue).padding()
                    //el color de fondo es de color azul
            } else {
                Image(systemName:
                    //De acuerdo al valor de la casilla mostramos Corazón (.N), Safari (.X) o iCloud (.O)
                    "heart.fill")
                .resizable().frame(width: 60, height: 60)
                    .foregroundColor(.black).padding()
                    //el color de fondo es de color negro
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView() .previewDevice(PreviewDevice(rawValue: "iPhone SE")) 
        //Se visualiza la pantalla de la aplicación
    }
}