//
//  ForgotPasswordView.swift
//  taskMe
//
//  Created by Phillip Gao on 3/18/23.
//  Copyright © 2023 Phillip Gao. All rights reserved.
//

import SwiftUI
import FirebaseAuth

struct ForgotPasswordView: View {
    @State var user: UserViewModel = UserViewModel()
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        NavigationView {
            ZStack{
            Color.black.edgesIgnoringSafeArea(.all)
            VStack {
                TextField("Enter email address", text: $user.email).autocapitalization(.none).keyboardType(.emailAddress)
                Button(action: {
                    Auth.auth().sendPasswordReset(withEmail: self.user.email) { (error) in
                        self.presentationMode.wrappedValue.dismiss()
                    }
                }) {
                    Text("Reset")
                        .frame(width: 200)
                        .padding(.vertical, 15)
                        .background(Color("Color1"))
                        .cornerRadius(8)
                        .foregroundColor(.white)
                        .opacity(user.isEmailValid(_email: user.email) ? 1 : 0.75)
                }
                .disabled(!user.isEmailValid(_email: user.email))
                Spacer()
            }.padding(.top)
                .frame(width: 300)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            .navigationBarTitle("Request a password reset", displayMode: .inline)
                .navigationBarItems(trailing: Button("Dismiss") {
                    self.presentationMode.wrappedValue.dismiss()
                })
        }
        }
    }
}


struct ForgotPasswordView_Previews: PreviewProvider {
    static var previews: some View {
        ForgotPasswordView()
    }
}
