//
//  ContentView.swift
//  Lugares
//
//  Created by Lalo on 26/10/20.
//  Copyright © 2020 Lalo. All rights reserved.
//

import SwiftUI

//Creo una clase que será representará los datos de la vista
//Estos son los datos cambiantes en la vista
struct Contacto {
    
    var titulo:String
    var textoBoton:String
    var nombreImagen:String
    var telefonos:[String]
    
    //Creo el contructor de la clase
    init(titulo:String, textoBoton:String, nombreImg:String, tels:[String]) {
        self.titulo = titulo
        self.textoBoton = textoBoton
        self.nombreImagen = nombreImg
        telefonos = tels
    }
}

struct ContentView: View {
    	
    var mostrarLapiz = true
    
    //Declaro una variable de tipo Contacto, al no tener un valor asignado
    //estaremos obligado a mandarlo como parámetro cuando se cree la vista
    var datos:Contacto
    
    var body: some View {
        ZStack {
            LinearGradient(
                gradient: Gradient(colors: [.red, .green, .yellow, .blue, .black]),
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            ).edgesIgnoringSafeArea(.all)
            
            VStack(
                alignment: .center,
                content: {
                    //Primer elemento
                    //Usamos el atributo titulo del objeto de tipo Contacto
                    Text(datos.titulo)
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(Color.pink)
                        .padding(.all);
                    
                    //Segundo elemento
                    Button(
                        action: {},
                        label: {
                            HStack {
                                if mostrarLapiz {
                                    Image(systemName: "person.icloud")
                                        .foregroundColor(.black)
                                } else {
                                    Image(systemName: "pencil")
                                        .foregroundColor(.black)
                                        .padding()
                                        .border(/*@START_MENU_TOKEN@*/Color.white/*@END_MENU_TOKEN@*/, width: 2)
                                }
                                //Usamos el atributo textoBoton del objeto de tipo Contacto
                                Text(datos.textoBoton)
                                    .font(.headline)
                                    .foregroundColor(.white)
                            }
                            .padding(12)
                            .background(Color.orange)
                            .cornerRadius(80)
                        }
                    )
                    .overlay(
                        Rectangle()
                            .stroke(Color.red, lineWidth: 8).shadow(radius: 3).cornerRadius(10)
                    );
                    
                    //Así es el uso de valores dentro de un arreglo
                    Text("El 1er número telefonico: \(datos.telefonos[0])")
                    Text("El 2do número telefonico: \(datos.telefonos[1])")
                    
                    //Usamos el atributo nombreImagen del objeto de tipo Contacto
                    Image(systemName: datos.nombreImagen)
                        .resizable()
                        .frame(width: 120.0, height: 120.0)
                        .clipShape(Circle())
                }
            )
        }
    }
}

struct ContentView_Preview: PreviewProvider {
    static var previews: some View {
        //Instanciamos un objeto de tipo Contacto y lo pasamos como parámetro a la vista
        ContentView(datos: Contacto(titulo: "El titulo viene del objeto", textoBoton: "Esta info está en el objeto", nombreImg: "person", tels: ["5512345678", "5587654321"]))
            .previewLayout(.fixed(width: 375, height: 400))
    }
}