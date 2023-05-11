import SwiftUI
import Firebase
import Foundation
import FirebaseStorage
import FirebaseFirestore

let db = Firestore.firestore()

struct AddRecipeView: View {
  
    @State private var recipeName: String = ""
    @State private var recipeDescription: String = ""
    @State private var recipeImage: UIImage?

    @State private var showImagePicker: Bool = false
    @State private var showActionSheet: Bool = false

    @StateObject private var recipeManager = RecipeManager()

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
                        guard let user = Auth.auth().currentUser else {
                            // Handle error when user is not signed in
                            return
                        }
                      
                      let newRecipe = Recette(id: 0, name: recipeName, category: "", description: recipeDescription, isFavorite: false, imageName: recipeImage?.jpegData(compressionQuality: 0.8))

                      var recipeData = ["name": newRecipe.name, "description": newRecipe.description]

                        // Upload image to Firebase Storage
                        if let imageData = newRecipe.imageName {
                            let storageRef = Storage.storage().reference()
                            let imageRef = storageRef.child("\(UUID().uuidString).jpg")
                            imageRef.putData(imageData, metadata: nil) { metadata, error in
                                guard error == nil else {
                                    // Handle error when image upload fails
                                    return
                                }
                                imageRef.downloadURL { url, error in
                                    guard let downloadURL = url else {
                                        // Handle error when image download URL is nil
                                        return
                                    }
                                    recipeData["imageURL"] = downloadURL.absoluteString
                                    saveRecipeData(user: user, recipeData: recipeData)
                                }
                            }
                        } else {
                            saveRecipeData(user: user, recipeData: recipeData)
                        }

                    }) {
                        Text("choose")
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

    func saveRecipeData(user: User, recipeData: [String: Any]) {
        db.collection("users").document(user.uid).collection("recipes").addDocument(data: recipeData) { error in
            guard error == nil else {
                // Handle error when recipe save fails
                return
            }
            // Handle successful recipe save
        }
    }
}


struct AddRecipeView_Previews: PreviewProvider {
    static var previews: some View {
        AddRecipeView()
    }
}


