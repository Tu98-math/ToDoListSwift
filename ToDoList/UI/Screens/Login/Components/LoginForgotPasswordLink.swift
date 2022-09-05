//
//  LoginForgotPasswordLink.swift
//  ToDoList
//
//  Created by Tú Trần Anh on 31/08/2022.
//

import SwiftUI

struct LoginForgotPasswordLink: View {
    var body: some View {
        NavigationLink(
            destination: ForgotPasswordScreen()
        ) {
            Text(AppStrings.forgotPassword)
                .font(.system(size: 20))
                .fontWeight(.bold)
                .foregroundColor(Color(49,49,49))
                .frame(width: UIScreen.screenWidth - 48, alignment: .trailing)
        }
    }
}

struct LoginForgotPasswordLink_Previews: PreviewProvider {
    static var previews: some View {
        LoginForgotPasswordLink()
    }
}
