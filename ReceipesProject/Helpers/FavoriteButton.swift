//
//  FavoriteButton.swift
//  ReceipesProject
//
//  Created by sayadi imen on 27/4/2023.
//

import SwiftUI

struct FavoriteButton: View {
  
  @Binding var isSet: Bool

    var body: some View {
      Button {
                  isSet.toggle()
              } label: {
                  Label("Toggle Favorite", systemImage: isSet ? "heart.fill" : "heart")
                      .labelStyle(.iconOnly)
                      .foregroundColor(isSet ? .red : .gray)
              }
    }
}

struct FavoriteButton_Previews: PreviewProvider {
    static var previews: some View {
      FavoriteButton(isSet: .constant(true))
    }
}
