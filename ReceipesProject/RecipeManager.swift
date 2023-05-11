import FirebaseFirestore
import FirebaseFirestoreSwift
import SwiftUI
import Firebase
import FirebaseDatabase
import Foundation

class RecipeManager: ObservableObject {
    let db = Firestore.firestore()
    @Published var recipes = [Recette]()
    
  func addRecipe(recipe: Recette) {
      do {
          var data = try Firestore.Encoder().encode(recipe)
          data.removeValue(forKey: "id")
          let _ = db.collection("recipes").addDocument(data: data)
      } catch {
          print(error)
      }
  }

    
    func getRecipes() {
        db.collection("recipes").addSnapshotListener { querySnapshot, error in
            guard let documents = querySnapshot?.documents else {
                print("Error fetching documents: \(error!)")
                return
            }
            
            self.recipes = documents.compactMap { document in
                do {
                    let recipe = try document.data(as: Recette.self)
                    return recipe
                } catch {
                    print(error)
                }
                return nil
            }
        }
    }
}

