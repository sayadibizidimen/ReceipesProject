//
//  CircleImage.swift
//  ReceipesProject
//
//  Created by sayadi imen on 17/3/2023.
//

import SwiftUI

struct CircleImage: View {
  
  var recette: Recette
  
    var body: some View {
      recette.image
        .resizable()
        .frame(height: 300)
      
                  .clipShape(Circle())
                  .overlay {
                      Circle().stroke(.white, lineWidth: 4)
                  }
                  .shadow(radius: 7)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
      CircleImage(recette:ModelData().Recettes[3])
    }
}
