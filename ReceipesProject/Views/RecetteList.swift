//
//  RecetteList.swift
//  ReceipesProject
//
//  Created by sayadi imen on 17/3/2023.

import SwiftUI


struct RecetteList: View {
  
  
  @State private var showFavoritesOnly = true
  @EnvironmentObject var modelData: ModelData

  
  var filteredRecettes: [Recette] {
    modelData.Recettes.filter { recette in
      (!showFavoritesOnly || recette.isFavorite)
    }
  }
  var body: some View {
    
    
    NavigationView {
      
      List {
        
        Toggle(isOn: $showFavoritesOnly) {
                            Text("Favorites only")
                        }
        ForEach(filteredRecettes) { recette in
          
          //List(Recettes, id: \.id) { recette in
          NavigationLink {
            DetailRecette(recette: recette)
          } label: {
            RecetteRow(recette: recette)
          }
        }
        .navigationTitle("All Receipes:")
      }
    }
    
    /*NavigationView{
     
     List(Recettes, id: \.id)
     {
     recette in     RecetteRow(recette: recette)
     }
     
     .navigationTitle("All Receipes:")
     
     }}*/
  }
  
  struct RecetteList_Previews: PreviewProvider {
    
    static var previews: some View {
      RecetteList()
    }
  }
  
}
