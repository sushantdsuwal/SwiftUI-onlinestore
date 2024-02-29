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
            IconTextField(iconName: "envelope", text: $email, placeholder: "Email" )
                .onChange(
                    of: email,
                    perform: { newValue in
                        email = newValue
                    })
            
            
            IconTextField(iconName: "lock", text: $password, placeholder: "Password")
                .onChange(
                    of: password,
                    perform: { newValue in
                        password = newValue
                    })
            
        }
    }
}

#Preview {
    SignInInputView(
        email: .constant(""),
        password: .constant("")
        //        isEmailValid: true,
        //        isPasswordValid: false
    )
    .padding()
}
