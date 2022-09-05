//
//  WelcomeTabImage.swift
//  ToDoList
//
//  Created by Tú Trần Anh on 31/08/2022.
//

import SwiftUI

struct WelcomeLoginLink: View {
    var pageIndex: Int
    var toNextPage: () -> Void
    
    var body: some View {
        ZStack {
            Image(AppConstants.welcomes[pageIndex].bottom)
                .resizable(resizingMode: .stretch)
                .frame(
                    width: UIScreen.screenWidth,
                    height: UIScreen.screenHeight * 0.34
                )
            VStack{
                if pageIndex < 2 {
                    PrimaryButton(
                         title: AppStrings.getStarted,
                         onTap: toNextPage
                    )
                    .padding([.leading, .trailing], 41)
                    .padding(.bottom, 10)
                } else {
                    NavigationLink(destination: LoginScreen()) {
                        PrimaryButton(
                            title: AppStrings.getStarted,
                            isTap: false
                        )
                    }
                    .padding([.leading, .trailing], 41)
                    .padding(.bottom, 10)
                }
                
                NavigationLink(destination: LoginScreen()) {
                    Text(AppStrings.login)
                        .font(.system(size: 18))
                        .foregroundColor(.white)
                }
            }
        }
    }
}
