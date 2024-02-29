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
        }
        .padding()
    }
}



#Preview {
    SignInScreen()
}
