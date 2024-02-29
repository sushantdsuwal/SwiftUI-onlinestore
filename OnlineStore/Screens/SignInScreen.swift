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
            ZStack(alignment: .leading) {
                HStack {
                    Image(systemName: "envelope")
                        .frame(width: 20)
                    TextField("Email", text: $email)
                        .padding(.horizontal, 10)
                        .autocapitalization(.none)
                        .foregroundColor(.primary)
                }
            }
            .padding(10)
            .overlay(
                RoundedRectangle(cornerRadius: 4)
                    .stroke(Color.black, lineWidth: 1)
            )
            
            ZStack(alignment: .leading) {
                HStack {
                    Image(systemName: "lock")
                        .frame(width: 20)
                    
                    SecureField("Password", text: $password)
                        .padding(.horizontal, 10)
                        .foregroundColor(.primary)
                }
            }
            .padding(10)
            .overlay(
                RoundedRectangle(cornerRadius: 4)
                    .stroke(Color.black, lineWidth: 1)
            )
            
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
