//
//  ForgotPasswordScreen.swift
//  ToDoList
//
//  Created by Tú Trần Anh on 30/08/2022.
//

import SwiftUI

struct ForgotPasswordScreen: View {
    @State private var username: String = ""
    
    var body: some View {
        ScrollView{
            VStack (alignment: .leading) {
                buildTitle()
                buildUsernameInput()
                buildLoginButton()
            }.padding(.all, 24)
        }
    }
    
    @ViewBuilder
    func buildTitle() -> some View {
        AuthTitle(
            title: AppStrings.forgotPassword,
            description: AppStrings.forgotPasswordDescription
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
    }
    
    var disableForm: Bool {
        username.count < 6 || !username.contains("@")
    }
    
    @ViewBuilder
    func buildLoginButton() -> some View {
        PrimaryButton(
            title: AppStrings.sendRequest,
            backgroundColor: Color(249, 96, 96),
            foregroundColor: Color.white,
            disable: disableForm
        )
        .padding(.top, 80)
    }
}

struct ForgotPasswordScreen_Previews: PreviewProvider {
    static var previews: some View {
        ForgotPasswordScreen()
    }
}
