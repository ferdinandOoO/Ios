//Clase Perro y clase Ave con sus atributos


/*
Comenzamos con la clase Animal ya que heredan de  la clase Perro y la clase Ave
*/
 class Animal {
   var nombre: String?
   var paisOrigen: String?

   init (_ nombre : String, _ paisOrigen : String ){
     self.nombre = nombre
     self.paisOrigen = paisOrigen
   }

 
  //Método dormir de la clase Animal
   func dormir (){
     print("Me gusta dormir")
   }
    
//Método comer  de la clase Animal
   func comer (){
     print("Me gusta comer")
   }
 }

//Se enumera si es cazador o domestico
 enum TipoCarnivoro {
  case Cazador 
  case Domestico
}


/*
Clase Carnivoro que hereda de la clase Animal
*/

class Carnivoro : Animal {

  //Variable tipo de la enumeracion TipoCarnivoro

  var tipo : TipoCarnivoro?

  //Se inicializa las variables de las clase Carnivoro

  init ( _ nombre: String,  _ paisOrigen : String, _ tipo: TipoCarnivoro){
    
    super.init(nombre, paisOrigen)
    self.tipo = tipo
 }

 /*
 Funcion que identifica el tipo de carnivoro del animal
 */

 func cualEsMiTipo(){
   if (tipo == TipoCarnivoro.Cazador){

     print ("Mi nombre es \(nombre!) soy cazador y  voy a cazar animales")

   } else if (tipo == TipoCarnivoro.Domestico){
      print("Mi nombre es \(nombre!) soy domestico ynecesito comer un alimento")
   }
 }

}

class Perro : Carnivoro {
  //Variables de la clase perro
    var colorPerro: String?
    var razaPerro: String?
    var tamanioPerro: String?
    

  //Se crean las inicializaciones de las intancias con los objetos 
   init (_ nombre: String, _ paisOrigen: String, _ tipo: TipoCarnivoro,  _ colorPerro: String, _ razaPerro: String, _ tamanioPerro: String){

        super.init( nombre, paisOrigen, tipo)
        self.colorPerro = colorPerro
        self.razaPerro = razaPerro
        self.tamanioPerro = tamanioPerro
   }


    //Funcion comer del nombre del perro 
   
    
    //función datos de la clase Perro
   func datos (){
     print("Mi nombre es: \(nombre!) soy de \(paisOrigen!) mi color de piel es \(colorPerro!) ")
   }

    //funcioón información de la clase Perro
   func informacion(){
     print("Mi nombre: \(nombre!) soy de la raza \(razaPerro!) y mi tamaño es \(tamanioPerro!)")
   }
    override //Método sobreescrito de la clase Perro que hereda de la clase Animal
   func dormir (){
     print("Me gusta dormir dentro mi casita zzzZZZ")
   }
   
   
   override //Método sobreescrito de la clase Perro que hereda de la clase Animal
   func comer (){
     print("Me gusta comer croquetas de carne")
   }

}




/*
protocol Volador {
    func volar() -> Bool {
        print ("Abro  mis alas y aleteo")
        return true
    }
*/
//Clase Ave
class Ave : Animal {
    // variables de la clase Ave
    
    var tipoAve : String?
    var razaAve: String?

    // Se inicializa  las variables 
    
    init (_ nombre: String,  _ paisOrigen : String, _ tipoAve : String,  _ razaAve: String){

        super.init(nombre, paisOrigen)
        self.tipoAve = tipoAve
        self.razaAve = razaAve
    }

    func informacion(){

        print("\nMe llamo \(nombre!) , Mi origen \(paisOrigen!), Mi tipo \(tipoAve!) , Mi raza es: \(razaAve!)")
    }
    override //Método sobreescrito de la clase Ave que hereda de la clase Animal
    func dormir (){
     print("Me gusta dormir en mi nido")
   }
   

   override //Método sobreescrito de la clase Ave que hereda de la clase Animal
   func comer (){
     print("Me gusta comer peces y otras aves pequeñas")
   }
    
    /*
   func volar() -> Bool {
        print ("Abro  mis alas y aleteo rapido")
        return (true)
   }
   */

   //Se crea la estuctura con sus variables

}
struct MiEstructura {
    var miAtributo: String?
    var otroAtributo: Bool?
    
    //Se crea la funcion miFuncion
    func miFuncion(){
        print("Estoy haciendo algo")
    }

    func otraFuncion(){

    }


//Se crea el protocolo y el nombre 

/*
protocol Volador {
    func volar() -> Bool {
        print ("Abro  mis alas y aleteo")
        return (true)
    }
}
*/


//Se crea  la estructura Avion
/*struct  Avion: Volador {
    
    func volar () -> Bool {
        print("Prendo motores")
        print("Y depego")
        print("Estoy voladno")
        return (true)
    }
}
*/


//Se crea el objeto avion de la estructura Avion 

//var avion = Avion()
//el objeto usa la funcion volar
//avion.volar()

} 





class Tigre : Carnivoro {

  var tipoTigre : String?

   // Se inicializa  las variables 
    
    init (_ nombre: String, _ paisOrigen: String, _ tipo: TipoCarnivoro, _ tipoTigre: String){

        super.init(nombre, paisOrigen, tipo)
        self.tipoTigre = tipoTigre
        
    }


  //Funcion que imprime los valores de la informacion del tigre 
    func informacion (){

      print ("\nMi nombre es: \(nombre!), Soy de: \(paisOrigen!) y soy un \(tipoTigre!)")
    }

  
    
     

  
}

 


 //Impresion de la clase Perro   a partir del objeto inicializado en la clase Carnivoro

 var chihuahua: Perro = Perro ( "Bender", "Mexico",  TipoCarnivoro.Domestico, "cafe", "Chihuahua", "pequeno"  )

 chihuahua.datos()
 chihuahua.informacion()
 chihuahua.dormir()
 chihuahua.comer()
 chihuahua.cualEsMiTipo()


 


 //Impresion de los datos  clase Ave heredados de la clase Animal

var aguila: Ave = Ave ("Ximera", "Mexico","Pescadora", "Accipitriformes")

aguila.informacion()
aguila.dormir()
aguila.comer()


//Impresion de la clase Tigre   a partir del objeto inicializado en la clase Carnivoro

 var bengala: Tigre = Tigre ("Master", "India", TipoCarnivoro.Cazador, "Felino")

 bengala.informacion()

 bengala.cualEsMiTipo()

//Se crea el objeto miEstructura de la estructura MiEstructura
var miEstructura = MiEstructura()
//el objeto toma la funcion miFuncion
miEstructura.miFuncion()








