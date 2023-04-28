
import SwiftUI

struct AddRecipeView: View {
    @State private var recipeName: String = ""
    @State private var recipeDescription: String = ""
    @State private var recipeImage: UIImage?

    @State private var showImagePicker: Bool = false
    @State private var showActionSheet: Bool = false

    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Recipe Name")) {
                    TextField("Enter recipe name", text: $recipeName)
                }

                Section(header: Text("Recipe Description")) {
                    TextEditor(text: $recipeDescription)
                }

                Section(header: Text("Recipe Image")) {
                    if let image = recipeImage {
                        Image(uiImage: image)
                            .resizable()
                            .scaledToFit()
                    } else {
                        Image(systemName: "photo")
                            .resizable()
                            .scaledToFit()
                    }

                    Button(action: {
                        showActionSheet = true
                    }) {
                        Text("Choose Image")
                    }
                    .actionSheet(isPresented: $showActionSheet) {
                        ActionSheet(title: Text("Select Image"), message: Text("Choose an image for the recipe"), buttons: [
                            .default(Text("Photo Library"), action: {
                                showImagePicker = true
                            }),
                            .cancel()
                        ])
                    }
                }
            }
            .navigationBarTitle("Add Recipe")
            .navigationBarItems(trailing: Button(action: {
                // Save button action to submit the form
            }) {
                Text("Save")
            })
        }
    }
}


struct AddRecipeView_Previews: PreviewProvider {
    static var previews: some View {
        AddRecipeView()
    }
}
