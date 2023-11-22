//
//  LoginView.swift
//  SteadySteps
//
//  Created by Robert Homa on 2023-11-16.
//

import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    @State private var isUserLoggedIn = false
    @State private var logInSuccess = false
    @ViewBuilder
    var body: some View {
        NavigationView {
            VStack {
                Text("Welcome to SteadySteps!")
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .padding(.bottom, 50)
                    .font(.system(size: 50))
                
                Image("steadysteps-icon") // Logo
                    .resizable()
                    .scaledToFill()
                    .frame(width: 175, height: 175)
                    .padding(.bottom, 45)
                
                VStack(spacing: 24) {
                    InputView(text: $email, title: "Employee Email", placeholderText: "name@company.com")
                        .autocapitalization(.none)
                    
                    InputView(text: $password, title: "Account Password", isSecure: true, placeholderText: "Enter password...")
                    
                    
                }
                .padding(.horizontal)
                .padding(.top, 12)
                
                
                HStack {
                    NavigationLink(
                        destination: HomeScreenView().navigationBarBackButtonHidden(true),
                        label: {
                            VStack {
                                Text("Sign in")
                                    .fontWeight(.bold)
                                Image(systemName: "arrow.right")
                            }
                            .foregroundColor(.blue)
                            .frame(width: UIScreen.main.bounds.width - 32, height: 48)
                        })
                        .background(Color.orange)
                        .cornerRadius(12)
                        .padding(.top, 50)
                    
                }
                
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
