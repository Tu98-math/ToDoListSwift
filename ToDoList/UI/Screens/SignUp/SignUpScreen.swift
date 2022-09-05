//
//  SignUpScreen.swift
//  ToDoList
//
//  Created by Tú Trần Anh on 31/08/2022.
//

import SwiftUI

struct SignUpScreen: View {
    @State private var fullName: String = ""
    @State private var username: String = ""
    @State private var password: String = ""
    @State private var confirmPassword: String = ""
    
    var body: some View {
        ScrollView{
            VStack (alignment: .leading) {
                buildTitle()
                buildFullNameInput()
                buildUsernameInput()
                buildPasswordInput()
                buildPasswordConfirmInput()
                buildSubmitButton()
                buildLoginLink()
            }.padding(.all, 24)
        }
    }
    
    var disableForm: Bool {
        fullName.count < 5 ||
        username.count < 6 || password.count < 6 || !username.contains("@") || password != confirmPassword
    }
    
    @ViewBuilder
    func buildTitle() -> some View {
        AuthTitle(
            title: AppStrings.createAccount,
            description: AppStrings.signUpDescription
        )
    }
    
    @ViewBuilder
    func buildFullNameInput() -> some View {
        Text(AppStrings.fullName)
        TextField(
            AppStrings.fullNameHint,
            text: $fullName
        )
        .padding(.vertical, 11)
        Divider()
        .padding(.bottom, 32)
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
    func buildPasswordConfirmInput() -> some View {
        Text(AppStrings.confirmPassword)
            .font(.system(size: 20))
            .foregroundColor(Color(49,49,49))
        SecureField(
            AppStrings.confirmPasswordHint,
            text: $confirmPassword
        )
            .padding(.vertical, 11)
        Divider()
            .padding(.bottom, 12)
    }
    
    @ViewBuilder
    func buildSubmitButton() -> some View {
        PrimaryButton(
            title: AppStrings.signUp,
            backgroundColor: AppColors.PrimaryColor,
            foregroundColor: Color.white,
            disable: disableForm
        )
        .padding(.top, 20)
    }
    
    @ViewBuilder
    func buildLoginLink() -> some View {
        HStack {
            Spacer()
            Text(AppStrings.alreadyHaveAnAccount)
            NavigationLink(
                destination: LoginScreen()
            ) {
                Text(AppStrings.login)
                    .foregroundColor(AppColors.PrimaryColor)
                    .fontWeight(.bold)
            }
            Spacer()
        }
        .padding(.top,10)
    }
}

struct SignUpScreen_Previews: PreviewProvider {
    static var previews: some View {
        SignUpScreen()
    }
}
