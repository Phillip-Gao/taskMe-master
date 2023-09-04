//
//  LoginView.swift
//  taskMe
//
//  Created by Phillip Gao on 3/18/23.
//  Copyright © 2023 Phillip Gao. All rights reserved.
//

import SwiftUI
import FirebaseAuth

struct LoginView: View{
    
    enum Action{
        case signUp, resetPW
    }
    
    @State var showSheet = false
    @State var action : Action?
    @EnvironmentObject var userInfo: UserInfo
    var body: some View{
        SignInWithEmailView(showSheet: $showSheet, action: $action).sheet(isPresented: $showSheet) {
            if self.action == .signUp{
                SignUpView().environmentObject(self.userInfo)
            }
            else{
                ForgotPasswordView()
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View{
        LoginView()
    }
}
