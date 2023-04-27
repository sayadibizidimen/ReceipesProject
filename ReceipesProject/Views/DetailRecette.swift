//
//  DetailRecette.swift
//  ReceipesProject
//
//  Created by sayadi imen on 17/3/2023.
//

import Foundation
import SwiftUI

struct DetailRecette: View {
  var recette: Recette
  var body: some View {
    ScrollView {
      VStack {
        FondImage()
//          .frame(height: 300)
        CircleImage(recette: recette)
          .frame(height: 200)
          .offset(y: -120)
        VStack(alignment: .leading) {
          Text(recette.name)
            .font(.title2)
            .foregroundColor(.green)
          HStack {
            Text("Fresh Ingredients")
              .font(.subheadline)
            Spacer()
            Text(recette.park)
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
    DetailRecette(recette: Recettes[6])
  }
}
