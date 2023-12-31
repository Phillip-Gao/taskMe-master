//
//  UserInfo.swift
//  Fire Base Set 4 Gao
//
//  Created by Phillip Gao on 2/10/23.
//  Copyright © 2023 Phillip Gao. All rights reserved.
//

import Foundation
import FirebaseAuth

class UserInfo: ObservableObject{
    
    enum FBAuthState{
        case undefined, signedOut, signedIn
    }
    
    @Published var isUserAuthenticated: FBAuthState = .undefined
    
    func configureFirebaseStateDidChange(){
        if Auth.auth().currentUser != nil {
            self.isUserAuthenticated = .signedIn
        }
        else{
            self.isUserAuthenticated = .signedOut
        }
    }
}
