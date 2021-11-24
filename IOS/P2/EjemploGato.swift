//
//  ContentView.swift
//  GatoSwiftUI
//
//  Created by Lalo on 02/12/20.
//  Copyright © 2020 Lalo. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                HStack {
                    InfoJuego(rondas: 8, victoriasX: 3, victoriasO: 2)
                    Spacer()
                }
                Tablero()
            }.navigationBarTitle(Text("Gato"))
        }
    }
}

struct InfoJuego: View {
    
    var rondas:Int
    var victoriasX:Int
    var victoriasO:Int
    
    var body: some View {
        VStack {
            Text("Rondas: \(rondas)")
            Text("Jugador X: \(victoriasX)")
            Text("Jugador O: \(victoriasO)")
        }.padding()
    }
}

struct Tablero: View {
    var body: some View {
        VStack {
            HStack {
                Casilla(tipo: 1)
                Casilla(tipo: 0)
                Casilla(tipo: 1)
            }.padding()
            HStack {
                Casilla(tipo: 0)
                Casilla(tipo: 0)
                Casilla(tipo: 1)
            }.padding()
            HStack {
                Casilla(tipo: 1)
                Casilla(tipo: 0)
                Casilla(tipo: 0)
            }.padding()
        }
    }
}

struct Casilla: View {
    
    var tipo:Int
    
    var body: some View {
        Image(systemName: tipo == 1 ? "safari" : "heart.fill")
            .resizable().frame(width: 60, height: 60)
            .foregroundColor(tipo == 1 ? .red : .black).padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView() .previewDevice(PreviewDevice(rawValue: "iPhone SE"))
    }
}