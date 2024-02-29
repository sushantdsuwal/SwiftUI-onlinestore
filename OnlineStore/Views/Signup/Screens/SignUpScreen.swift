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
                
                Button(action: {
                    signup()
                }) {
                    Text("Sign Up")
                        .foregroundColor(.white)
                        .font(.headline)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .cornerRadius(4)
                }
                .padding(.top, 20)
                
                HStack {
                    Text("Have an account? ")
                    Text("Sign In")
                        .foregroundColor(.blue)
                    
                }
            }
            .padding()
        }
    }
    
    func signup() {}
}


#Preview {
    SignUpScreen()
}
