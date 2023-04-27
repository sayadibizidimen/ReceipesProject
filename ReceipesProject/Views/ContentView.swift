//
//  ContentView.swift
//  ReceipesProject
//
//  Created by sayadi imen on 14/3/2023.
//


import SwiftUI

struct ContentView: View {
  
    var body: some View {
      RecetteList()
      
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        .environmentObject(ModelData())
    }
}
