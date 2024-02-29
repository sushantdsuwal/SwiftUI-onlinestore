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
            IntroHeaderView(
                title: "Welcome to Online Store",
                subTitle: "Sign in to continue"
            )
            
            SignInInputView(email: $email, password: $password)
                .padding(.top, 20)
        }
        .padding()
    }
}


struct SignInInputView: View {
    @Binding var email: String
    @Binding var password: String
    
    var body: some View {
        VStack(spacing: 15) {
            HStack {
                Image(systemName: "envelope")
                    .frame(width: 20, height: 20)
                    .padding(.leading, 10)
                
                TextField("Email", text: $email)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(.horizontal, 10)
                    .autocapitalization(.none)
            }
            
            HStack {
                Image(systemName: "lock")
                    .frame(width: 20, height: 20)
                    .padding(.leading, 10)
                
                SecureField("Password", text: $password)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(.horizontal, 10)
            }
        }
    }
}


struct IntroHeaderView: View {
    let title: String;
    let subTitle: String;
    
    var body: some View {
        VStack {
            Image(.logo)
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text(title)
                .padding([.bottom, .top], 5)
            Text(subTitle).fontWeight(.light)
        }
    }
}

#Preview {
    SignInScreen()
}
