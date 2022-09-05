//
//  LoginScreen.swift
//  ToDoList
//
//  Created by Tú Trần Anh on 30/08/2022.
//

import SwiftUI

struct LoginScreen: View {
    @State private var username: String = ""
    @State private var password: String = ""
    
    @EnvironmentObject var authModel: AuthViewModel
    
    var body: some View {
        ScrollView{
            VStack (alignment: .leading) {
                buildTitle()
                buildUsernameInput()
                buildPasswordInput()
                buildForgotPasswordLink()
                buildLoginButton()
                buildSignUpLink()
            }.padding(.all, 24)
        }
        .background(.white)
    }
    
    var disableForm: Bool {
        username.count < 6 || password.count < 6 || !username.contains("@")
    }
    
    @ViewBuilder
    func buildTitle() -> some View {
        AuthTitle(
            title: AppStrings.loginTitle,
            description: AppStrings.loginDescription
        )
    }
    
    @ViewBuilder
    func buildUsernameInput() -> some View {
        Text(AppStrings.username)
        TextField(
            AppStrings.usernameHint,
            text: $username
        )
        .padding(.vertical, 11)
        Divider()
        .padding(.bottom, 32)
    }
    
    @ViewBuilder
    func buildPasswordInput() -> some View {
        Text(AppStrings.password)
            .font(.system(size: 20))
            .foregroundColor(Color(49,49,49))
        SecureField(
            AppStrings.passwordHint,
            text: $password
        )
            .padding(.vertical, 11)
        Divider()
            .padding(.bottom, 12)
    }
    
    @ViewBuilder
    func buildForgotPasswordLink() -> some View {
        LoginForgotPasswordLink()
    }
    
    @ViewBuilder
    func buildLoginButton() -> some View {
        PrimaryButton(
            title: AppStrings.login,
            onTap: {
                authModel.signIn(email: username, password: password)
            },
            backgroundColor: Color(249, 96, 96),
            foregroundColor: Color.white,
            disable: disableForm
        )
        .padding(.top, 80)
    }
    
    @ViewBuilder
    func buildSignUpLink() -> some View {
        HStack {
            Spacer()
            Text(AppStrings.dontHaveAccount)
            NavigationLink(
                destination: SignUpScreen()
            ) {
                Text(AppStrings.signUp)
                    .foregroundColor(AppColors.PrimaryColor)
                    .fontWeight(.bold)
            }
            Spacer()
        }
        .padding(.top,10)
    }
}

struct LoginScreen_Previews: PreviewProvider {
    static var previews: some View {
        LoginScreen()
    }
}


