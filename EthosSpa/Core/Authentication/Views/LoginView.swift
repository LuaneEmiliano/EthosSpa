//
//  LoginView.swift
//  EthosSpa
//
//  Created by luane Niejelski on 11/8/23.
//

import SwiftUI

struct LoginView: View {
  @State private var email = ""
  @State private var password = ""
  
  var body: some View {
    NavigationStack {
      VStack {
          Spacer()
          //Logo goes here
        Image(.logoEthos)
            .resizable()
            .foregroundColor(Color.white)
            .frame(width: 220, height: 220)
          
          Spacer()
          
          VStack(spacing: 40) {
            CustomInputField(imageName: "envelope", placeholderText: "Email", text: $email)
            
            CustomInputField(imageName: "lock", placeholderText: "Password", isSecureField: true, text: $password)
          }
          .padding(.horizontal, 32)
          .padding(.top, 44)
          
          HStack {
            Spacer()
            NavigationLink {
              Text("Rest password view...")
            } label: {
              Text("Forgot password?")
                .font(.caption)
                .fontWeight(.bold)
                .foregroundColor(Color.otherButton)
                .padding(.top)
                .padding(.trailing, 24)
            }
          }
          Button {
            
          } label: {
            Text("Sign In")
              .font(.headline)
              .foregroundColor(Color.white)
              .frame(height: 55)
              .frame(maxWidth: .infinity)
              .background(Color.orangeButtons)
              .cornerRadius(10)
              .padding(40)
            
          }
      
          NavigationLink {
            RegistrationView()
              .navigationBarHidden(true)
          } label: {
            HStack {
              Text("Don't have an account?")
                .font(.footnote)
              
              Text("Sign Up")
                .font(.caption)
                .fontWeight(.semibold)
            }
            .padding(.bottom, 32)
            .foregroundColor(Color.otherButton)
          }
         
          Spacer()
        }
        .background(Color.viewColor)
      .navigationBarHidden(true)
    }
    }
  }

#Preview {
  LoginView()
}
