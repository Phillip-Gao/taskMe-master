//
//  ContentView.swift
//  taskMe
//
//  Created by Phillip Gao on 3/16/23.
//  Copyright © 2023 Phillip Gao. All rights reserved.
//

import SwiftUI
import FirebaseAuth
import FirebaseStorage
import FirebaseDatabase

struct ContentView: View {
    
    @EnvironmentObject var userInfo: UserInfo
    @State var isTeen = false
    
    func getIsTeen() -> Bool{
        guard let uid  = Auth.auth().currentUser?.uid else {return false}
        var ref: DatabaseReference!
        ref = Database.database().reference()
        ref.child("users/\(uid)/isTeen").observe(DataEventType.value) { (snapshot) in
            guard let isTeen = snapshot.value as? Bool else {
                print("This did not work")
                return
            }
            self.isTeen = isTeen
            
        }
        return true
    }
    
    var body: some View {
        
        Group{
            if userInfo.isUserAuthenticated == .undefined{
                
                Text("Loading...")
            }
            else if userInfo.isUserAuthenticated == .signedOut{
                LoginView()
            }
            else if self.getIsTeen() && userInfo.isUserAuthenticated == .signedIn && self.isTeen == false{
                RequesterDefaultView()
            }
            else if self.getIsTeen()  && userInfo.isUserAuthenticated == .signedIn && self.isTeen == true{
                WorkerDefaultView()
            }
            else{
                
            }
        }.onAppear{
            self.userInfo.configureFirebaseStateDidChange()
            self.getIsTeen()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
