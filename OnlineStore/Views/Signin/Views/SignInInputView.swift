//
//  SignInInputView.swift
//  OnlineStore
//
//  Created by Sushant Suwal on 29/02/2024.
//

import SwiftUI

struct SignInInputView: View {
    @Binding var email: String
    @Binding var password: String
    
    var body: some View {
        VStack(spacing: 15) {
            IconTextField(iconName: "envelope", text: $email, placeholder: "Email")
            IconTextField(iconName: "lock", text: $password, placeholder: "Password")
            
        }
    }
}

#Preview {
    SignInInputView(email: .constant("Email"), password: .constant("Password"))
        .padding()
}
