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
    
    @State private var showError: Bool = false
    @State private var errorMessage: String = ""
    @State private var shouldNavigateToHome: Bool = false
    
    var body: some View {
        NavigationStack {
            VStack {
                AuthHeaderView(
                    title: "Welcome to Online Store",
                    subTitle: "Sign in to continue"
                )
                
                SignInInputView(
                    email: $email,
                    password: $password
                )
                
                PrimaryButton(title: "Sign In") {
                    signIn()
                }
                .padding([.top, .bottom], 20)
                
                LoginFooterView()
            }
            .padding()
            .alert(isPresented: $showError) {
                Alert(title: Text(email), message: Text(errorMessage), dismissButton: .default(Text("OK")))
            }
            .background(
                NavigationLink(
                    destination: shouldNavigateToHome ? HomeScreen() : nil,
                    isActive: $shouldNavigateToHome,
                    label: { EmptyView() }
                )
            )
        }
    }
    
    
    func signIn() {
        if validateCredentials() {
            shouldNavigateToHome = true
        } else {
            showError = true
            errorMessage = "Please enter a valid email and password."
        }
    }
    
    private func validateCredentials() -> Bool {
        return !email.isEmpty && !password.isEmpty
    }
    
}


#Preview {
    SignInScreen()
}

