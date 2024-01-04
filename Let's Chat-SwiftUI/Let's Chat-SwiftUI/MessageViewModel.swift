//
//  MessageViewModel.swift
//  Let's Chat-SwiftUI
//
//  Created by Hmoo Myat Theingi on 04/01/2024.
//

import Foundation
import FirebaseCore
import FirebaseFirestore
import FirebaseAuth

class MessageViewModel:ObservableObject{
    let db = Firestore.firestore()
    @Published var messageStatus=""
    @Published var user:User?
    
    init()  {
        fetchUser()
    }
    
    private func fetchUser() {
        db.collection("users").getDocuments { querySnapshot, error in
            if let e = error{
                self.messageStatus="\(e.localizedDescription)"
            }else{
                if let snapshotDocuments = querySnapshot?.documents {
                    for document in snapshotDocuments {
                        let data = document.data()
                        let uid = data["uid"] as? String ?? ""
                        let email = data["email"] as? String ?? ""
                        self.user = User(uid: uid, email: email)
                    }
                }
                
            }
            
            
        }
    }
    
}
