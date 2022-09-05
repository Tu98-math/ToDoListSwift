//
//  QuickViewModel.swift
//  ToDoList
//
//  Created by Tú Trần Anh on 05/09/2022.
//

import Foundation
import Firebase

class QuickViewModel: ObservableObject {
    
    @Published var list = [QuickModel]()
    
    func getData() {
        // Get a reference to the database
        let db = Firestore.firestore()
        
        // Read the documents at a specific path
        db.collection("quick").getDocuments { snapshot, error in
            
            // Check for errors
            if error == nil {
                // No errors
                
                if let snapshot = snapshot {
                    
                    // Update the list property in the main thread
                    DispatchQueue.main.async {
                       
                        // Get all the documents and create Todos
                        self.list = snapshot.documents.map { d in
                            
                            // Create a Todo item for each document returned
                            return QuickModel(
                                id: d.documentID,
                                description: d["description"] as? String,
                                color: d["color"] as? Int ,
                                authorId: d["authorId"] as? String ,
                                createTime: d["createTime"] as? Date,
                                updateTime: d["updateTime"] as? Date
                            )
                        }
                    }
                    
                    
                }
            }
            else {
                print("Error Get Data" )
            }
        }
    }
}
