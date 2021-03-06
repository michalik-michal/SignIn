//
//  DogSignInView.swift
//  SignIn
//
//  Created by MacOS on 20/05/2022.
//

import SwiftUI

struct DogSignInView: View {
    
    @State private var phoneNumber = ""
    @State private var password = ""
    
    var body: some View {
        ZStack{
            Color.creamGreen
                .ignoresSafeArea()
            VStack{
                dogImage
                    
                VStack(alignment: .leading){
                    welcomeBack
                    signIn
                    
                    GrayTextField(imageName: "phone.fill",
                                  imageColor: .orange,
                                  placeholderText: "Phone number",
                                  text: $phoneNumber)
                        .shadow(color: Color.primary.opacity(0.2), radius: 10, x: 0, y: 5)
                    
                    GrayTextField(imageName: "lock.fill",
                                  imageColor: .orange,
                                  placeholderText: "Password",
                                  text: $password)
                        .shadow(color: Color.primary.opacity(0.2), radius: 10, x: 0, y: 5)
                    
                    forgotPasswordText
                    signInButton
                    Spacer()
                }
                signUpText
            }
            .padding()
        }
    }
}

struct DogSignInView_Previews: PreviewProvider {
    static var previews: some View {
        DogSignInView()
    }
}
//MARK: - EXTENSION
extension DogSignInView{
    
//MARK: - Image
    private var dogImage: some View{
        Image("dogIcon")
            .resizable()
            .frame(width: 350, height: 350)
    }
    
//MARK: - Header Text
    private var welcomeBack: some View{
        Text("Welcome back")
            .foregroundColor(.white)
            .font(.largeTitle).bold()
            .shadow(color: Color.primary.opacity(0.2), radius: 10, x: 0, y: 5)
        
    }
    private var signIn: some View{
        Text("Sign In")
            .foregroundColor(.white)
            .font(.title).bold()
            .shadow(color: Color.primary.opacity(0.2), radius: 10, x: 0, y: 5)
    }
    
//MARK: - Action
    private var forgotPasswordText: some View{
        Button {
            // Forgot password action
        } label: {
            Text("Forgot password")
                .foregroundColor(.gray).bold()
        }
    }
    
    private var signInButton: some View{
        Button {
            //Sign user in
        } label: {
            Text("Sign In")
                .bold()
                .frame(height: 50)
                .frame(maxWidth: .infinity)
                .background(Color.orange)
                .foregroundColor(.white)
                .cornerRadius(30)
                .shadow(color: Color.primary.opacity(0.2), radius: 10, x: 0, y: 5)
        }
    }
    
    private var signUpText: some View{
        HStack{
            Text("New user?")
                .foregroundColor(.gray)
            NavigationLink{
                //Take user to Sign Up screen
            }label:{
                Text("Sign Up")
                    .bold()
                    .foregroundColor(.orange)
            }
        }
    }
}
