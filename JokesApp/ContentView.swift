//
//  ContentView.swift
//  JokesApp
//
//  Created by Oğuz on 14.08.2023.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var jokesVM = JokesVİewModel() // JokesViewModel sınıfından nesne türetme
    
    var body: some View {
        
        NavigationView {
            List(jokesVM.jokes) { element in
                
                Text(element.value)
            }
            .toolbar {
                Button(action: addJoke) {
                    Text("Add New Joke")
                }
            }
            .navigationTitle("Jokes App")
            .navigationBarTitleDisplayMode(.automatic)
        }
    }
    
    func addJoke() {
        jokesVM.getJokes()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
