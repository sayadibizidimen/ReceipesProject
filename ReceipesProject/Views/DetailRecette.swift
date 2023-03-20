//
//  DetailRecette.swift
//  ReceipesProject
//
//  Created by sayadi imen on 17/3/2023.
//

import Foundation
import SwiftUI

struct DetailRecette: View {
  var body: some View {
    
    VStack {
      FondImage()
      .frame(height: 300)
      
      //ZStack(/*alignment: .bottom*/) {
        //Color.gray
        CircleImage()
          .offset(y: -130)
          .padding(.bottom, -130)
      //}
     // .border(Color.gray)


      
      VStack(alignment: .leading) {
        Text("Cesar Salad")
          .font(.title2)
          .foregroundColor(.green)
        
        HStack {
          Text("Fresh Ingredients")
            .font(.subheadline)
          
          Spacer()
          
          Text("The Entrees")
            .font(.subheadline)
        }
        Divider()

                        Text("All Details ")
                            .font(.title2)
                        Text("Si alguna vez has tenido una idea para crear una app o estás pensando en iniciarte en el mundo del desarrollo de apps para iPhone o iPad, este libro te ayudará a convertir esas ideas borrosas de tu cabeza en un diseño UI (diseño de interfaz de usuario) o en un prototipo con funcionalidades ordenadas de una manera agradable, que sean fáciles de usar para conseguir un buen diseño UX (diseño de la experiencia del usuario). No necesitas conocimientos previos de diseño para entender este libro..")
        
      }
      
      .padding()
     
    }
    
  }
  
}


struct DetailRecette_Previews: PreviewProvider {
    static var previews: some View {
      DetailRecette()
    }
}
