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
    var category: String
    var description: String
    var isFavorite: Bool

    var imageName: Data?

    var image: Image? {
        if let data = imageName, let uiImage = UIImage(data: data) {
            return Image(uiImage: uiImage)
        }
        return nil
    }
  
}

