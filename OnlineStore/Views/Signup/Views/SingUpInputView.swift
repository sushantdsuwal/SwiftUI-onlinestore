//
//  SingUpView.swift
//  OnlineStore
//
//  Created by Sushant Suwal on 29/02/2024.
//

import SwiftUI

struct SingUpInputView: View {
    
    @Binding var fullName: String
    @Binding var email: String
    @Binding var password: String
    @Binding var verifyPassword: String
    
    var body: some View {
        IconTextField(iconName: "person", text: $fullName, placeholder: "Full Name")
        IconTextField(iconName: "mail", text: $fullName, placeholder: "Your Email")
        IconTextField(iconName: "lock", text: $fullName, placeholder: "Password")
        IconTextField(iconName: "lock", text: $fullName, placeholder: "Password Again")
    }
}

#Preview {
    SingUpInputView(fullName: .constant("fullName"), email: .constant("email"), password: .constant("password"), verifyPassword: .constant("verifyPassword"))
}
