//
//  SignInScreen.swift
//  OnlineStore
//
//  Created by Sushant Suwal on 29/02/2024.
//

import SwiftUI

struct SignInScreen: View {
    @State private var email: String = ""
    @State private var password: String = ""
    
    var body: some View {
        VStack {
            AuthHeaderView(
                title: "Welcome to Online Store",
                subTitle: "Sign in to continue"
            )
            
            SignInInputView(email: $email, password: $password)
                .padding(.top, 20)
            
            Button(action: {
                signIn()
            }) {
                Text("Sign In")
                    .foregroundColor(.white)
                    .font(.headline)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
                    .cornerRadius(4)
            }
            .padding(.top, 20)
            
            LoginFooterView()
            
        }
        .padding()
    }
    
    func signIn() {}
    
}


struct LoginFooterView: View {
    var body: some View {
        VStack{
            Divider()
                .padding(.vertical, 20)
            
            Text("OR")
                .foregroundColor(.secondary)
            
            Text("Forgot Password?")
                .foregroundColor(.blue)
                .padding(.vertical, 5)
            
            Text("Don’t have an account? Register")
                .foregroundColor(.blue)
        }
    }
}



#Preview {
    SignInScreen()
}

