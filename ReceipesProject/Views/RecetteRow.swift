//
//  RecetteRow.swift
//  ReceipesProject
//
//  Created by sayadi imen on 17/3/2023.
//

import SwiftUI

struct RecetteRow: View {
    var recette: Recette

    var body: some View {
      HStack {
        recette.image
                        .resizable()
                        .frame(width: 50, height: 50)
                    Text(recette.name)

                    Spacer()
                }
      }
    }


struct RecetteRow_Previews: PreviewProvider {
    static var previews: some View {
      RecetteRow(recette:Recettes[0])
    }
}
