//
//  DetailRecette.swift
//  ReceipesProject
//
//  Created by sayadi imen on 17/3/2023.
//

import Foundation
import SwiftUI

struct DetailRecette: View {
  
  @EnvironmentObject var modelData: ModelData
  var recette: Recette
  var recetteIndex: Int {
          modelData.Recettes.firstIndex(where: { $0.id == recette.id })!
      }
  var body: some View {
    ScrollView {
      VStack {
        FondImage()
//          .frame(height: 300)
CircleImage(recette: recette)
          .frame(height: 200)
          .offset(y: -120)
        VStack(alignment: .leading) {
          HStack{
          Text(recette.name)
            .font(.title2)
            .foregroundColor(.green)
          FavoriteButton(isSet: $modelData.Recettes[recetteIndex].isFavorite)
          }
          HStack {
            Text("Fresh Ingredients")
              .font(.subheadline)
            Spacer()
            Text(recette.category)
              .font(.subheadline)
          }
          Divider()
          Text("All Details ")
            .font(.title2)
          Text(recette.description)
        }
        .padding(.all, 16)
      }
//      .frame(maxWidth: .infinity)
//      .fixedSize(horizontal: false, vertical: true
//      )

    }
  }
}


struct DetailRecette_Previews: PreviewProvider {
  static var previews: some View {
    DetailRecette(recette: ModelData().Recettes[6])
      .environmentObject(ModelData())
  }
}
