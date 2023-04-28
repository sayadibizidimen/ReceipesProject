//
//  EmptyReceipe.swift
//  ReceipesProject
//
//  Created by sayadi imen on 27/4/2023.
//

/*import SwiftUI

enum category: String{
  
  case breakfast = "breakfast"
  case Entrees = "Entrees"
  case MainCourse = "Main Course"
  case Desert = "Desert"

}

struct Receipe: Identifiable {
  var id: Int
  var name: String
  var category: category.RawValue
  var description: String
  var isFavorite: Bool


private var imageName: String
    var image: Image {
        Image(imageName)
    }
}

struct EmptyReceipe: View {
  
    var body: some View {
      
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct EmptyReceipe_Previews: PreviewProvider {
    static var previews: some View {
        EmptyReceipe()
    }
}



import Foundation
import SwiftUI

var receipe: Recette
enum category: String{
  
  case breakfast = "breakfast"
  case Entrees = "Entrees"
  case MainCourse = "Main Course"
  case Desert = "Desert"

}

struct Receipe: Identifiable {
  var id: Int
  var name: String
  var category: category.RawValue
  var description: String
  var isFavorite: Bool


private var imageName: String
    var image: Image {
        Image(imageName)
    }
}

struct EmptyReceipe: View {
  
  @EnvironmentObject var modelData: ModelData
  
  var recetteIndex: Int {
          modelData.Recettes.firstIndex(where: { $0.id == Receipe.id })!
      }
  var body: some View {
    ScrollView {
      VStack {
        
        VStack(alignment: .leading) {
          HStack{
            Text(TextField("Title", text: $Receipe.name))
            .font(.title2)
            .foregroundColor(.green)
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


struct EmptyReceipe_Previews: PreviewProvider {
  static var previews: some View {
    EmptyReceipe(recette: ModelData().Recettes[6])
      .environmentObject(ModelData())
  }
}
 */
/*


struct RecipeFormView: View {
    @State private var recipeName = ""
    @State private var ingredients = ""
    @State private var instructions = ""
    
    var body: some View {
        Form {
            Section(header: Text("Recipe Details")) {
                TextField("Recipe Name", text: $recipeName)
                TextEditor(text: $ingredients)
                    .frame(height: 100)
                    .border(Color.gray)
                    .padding(.vertical, 8)
                TextEditor(text: $instructions)
                    .frame(height: 150)
                    .border(Color.gray)
                    .padding(.vertical, 8)
            }
            
            Section {
                Button(action: saveRecipe) {
                    Text("Save Recipe")
                }
            }
        }
    }
    
    private func saveRecipe() {
        // Code to save the recipe to the database or a variable
    }
}
struct RecipeForm_Previews: PreviewProvider {
  
  static var previews: some View {
    RecipeFormView ()
  }
}
*/
/*import Foundation
import SwiftUI
import PhotosUI

struct RecipeFormView: View {
    @State var recipeName = ""
    @State var ingredients = ""
    @State var instructions = ""
    @State var image: UIImage? = nil
   // @State var showImagePicker = false

    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Recipe Details")) {
                    TextField("Recipe Name", text: $recipeName)
                    TextField("Ingredients", text: $ingredients)
                    TextField("Cooking Instructions", text: $instructions)
                }

                Section(header: Text("Image")) {
                    if image != nil {
                        Image(uiImage: image!)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(maxHeight: 200)
                    }

                  /* Button(action: {
                        showImagePicker = true
                    }, label: {
                        Text("Choose Image")
                    })
                    .sheet(isPresented: $showImagePicker, content: {
                        ImagePicker(image: $image)
                    })*/
                }

                Section {
                    Button(action: {
                        // Here, you can add the logic to save the recipe details entered by the user
                        print("Recipe saved successfully!")
                    }, label: {
                        Text("Save Recipe")
                    })
                }
            }
            .navigationTitle("Add Recipe")
        }
    }
}

struct RecipeForm_Previews: PreviewProvider {
  
  static var previews: some View {
    RecipeFormView ()
  }
}
*/
