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
        NavigationStack {
            VStack {
                AuthHeaderView(
                    title: "Welcome to Online Store",
                    subTitle: "Sign in to continue"
                )
                
                SignInInputView(email: $email, password: $password)
                
                PrimaryButton(title: "Sign In") { signIn() }
                    .padding([.top, .bottom], 20)
                
                LoginFooterView()
            }
            .padding()
        }
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
            
            
            HStack {
                Text("Don't have an account?")
                NavigationLink(destination: SignUpScreen()) {
                    Text("Register")
                        .foregroundColor(.blue)
                }
                
            }
        }
    }
}



#Preview {
    SignInScreen()
}

