//
//  LoginFooterView.swift
//  OnlineStore
//
//  Created by Sushant Suwal on 01/03/2024.
//

import SwiftUI

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
    LoginFooterView()
}
