//
//  ModernSignInView.swift
//  SignIn
//
//  Created by MacOS on 18/05/2022.
//

import SwiftUI

struct ModernSignInView: View {
    
    @State private var email = ""
    @State private var password = ""
    
    var body: some View {
        ZStack{
            Image("geometricBackground")
                .resizable()
                .ignoresSafeArea()
            VStack(alignment: .leading){
                
                Text("Hello")
                    .font(.largeTitle).bold()
                    .padding(.top, 50)
                Text("Welcome back.")
                    .font(.largeTitle).bold()
                Text("Good to see you again")
                    .fontWeight(.bold)
                    
                Spacer()
                
                loginSheet
                forgotPasswordText
                Spacer()
            }
            .padding()
        }
    }
}

struct ModernSignInView_Previews: PreviewProvider {
    static var previews: some View {
        ModernSignInView()
    }
}

//MARK: - EXTENSION
extension ModernSignInView{
    
    private var signInButton: some View{
        Button {
            //Sign In
        } label: {
            Text("Sign in")
                .fontWeight(.bold)
                .frame(height: 50)
                .frame(maxWidth: .infinity)
                .background(Color.black)
                .foregroundColor(.white)
                .cornerRadius(20)
        }
    }
    
    private var forgotPasswordText: some View{
        Button {
            //Recover password action
        } label: {
            Text("Forgot password")
                .foregroundColor(.gray)
        }
    }
    
//MARK: - Sheet
    
    private var loginSheet: some View{
        VStack(alignment: .leading, spacing: 30){
            Text("Log in")
                .font(.title).bold()
            
            GrayTextField(imageName: "envelope", imageColor: Color.gray, placeholderText: "Email", isSecureField: false, text: $email)
            
            GrayTextField(imageName: "lock.fill", imageColor: Color.gray, placeholderText: "Password", isSecureField: true, text: $password)
            
            signInButton
            

        }
        .padding()
        .background(Color.white)
        .clipShape(RoundedRectangle(cornerRadius: 20,style: .continuous))
        .shadow(color: Color.primary.opacity(0.2), radius: 10, x: 0, y: 5)
    }
}

