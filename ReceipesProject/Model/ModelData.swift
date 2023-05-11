import FirebaseFirestore
import FirebaseFirestoreSwift

final class ModelData: ObservableObject {
    private var db = Firestore.firestore()
    @Published var Recettes: [Recette] = []

    func loadData() {
        db.collection("recettes").getDocuments() { (querySnapshot, error) in
            if let error = error {
                print("Error getting documents: \(error)")
            } else {
                self.Recettes = querySnapshot?.documents.compactMap {
                    try? $0.data(as: Recette.self)
                } ?? []
            }
        }
    }
}

