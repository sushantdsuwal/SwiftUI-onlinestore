//
//  SignUpScreen.swift
//  OnlineStore
//
//  Created by Sushant Suwal on 29/02/2024.
//

import SwiftUI

struct SignUpScreen: View {
    
    @State private var fullName: String = ""
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var verifyPassword: String = ""
    
    @Environment(\.presentationMode) var presentationMode
    
    
    var body: some View {
        NavigationStack {
            VStack{
                AuthHeaderView(title: "Let's Get Started", subTitle: "Create an new account")
                    .padding()
                
                
                SingUpInputView(
                    fullName: $fullName,
                    email: $email,
                    password:$password,
                    verifyPassword:$verifyPassword
                )
                
                PrimaryButton(title: "Sign Up") { signup() }
                    .padding([.top, .bottom], 20)
                
                HStack {
                    Text("Have an account?")
                    Button(action: {
                        presentationMode.wrappedValue.dismiss()
                    }) {
                        Text("Sign In")
                            .foregroundColor(.blue)
                    }
                }
                
            }
            .padding()
        }
        .navigationBarBackButtonHidden(true)
    }
    
    func signup() {}
}


#Preview {
    SignUpScreen()
}
