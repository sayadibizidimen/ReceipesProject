//
//  Recette.swift
//  ReceipesProject
//
//  Created by sayadi imen on 17/3/2023.
//

import Foundation
import SwiftUI


struct Recette: Hashable, Codable, Identifiable {
  
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
    var isFavorite: Bool

  
  private var imageName: String
      var image: Image {
          Image(imageName)
      }
  
}
