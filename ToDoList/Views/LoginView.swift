//
//  LoginView.swift
//  ToDoList
//
//  Created by Martin on 2023/06/07.
//

import SwiftUI

struct LoginView: View {
    
    @State var email = ""
    @State var password = ""
    
    var body: some View {
        NavigationView {
            VStack {
                // Header
                HeaderView(
                    title: "To Do List",
                    subtitle: "Get things done",
                    angle: 15,
                    background: .pink)
                
                // Login Form
                Form {
                    TextField("Email Address", text: $email)
                        .textFieldStyle(DefaultTextFieldStyle())
                        .autocapitalization(.none)
                        .autocorrectionDisabled()
                    
                    SecureField("Password", text: $password)
                        .textFieldStyle(DefaultTextFieldStyle())
                    
                    TDLButton(
                        title: "Log In",
                        background: .blue
                    ) {
                        // Attempt log in
                    }
                }
                .offset(y: -60)
                
                // Create Account
                VStack {
                    Text("New around here?")
                        .padding(.bottom, 5)
                    
                    NavigationLink("Create An Account",
                                  destination: RegisterView())
                }
                .padding(.top, 20)
                .padding(.bottom, 20)
                
                Spacer()
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
