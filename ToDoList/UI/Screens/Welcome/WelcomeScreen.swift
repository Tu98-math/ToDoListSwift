//
//   WelcomeScreen.swift
//  ToDoList
//
//  Created by Tú Trần Anh on 30/08/2022.
//

import SwiftUI

struct WelcomeScreen: View {
    @State var pageIndex = 0
    
    @State var showLoginPage = false
    
    var body: some View {
       VStack {
           buildTabImage()
           
           buildListDot()
       
           buildLoginLink()
       }
       .frame(width: UIScreen.screenWidth, height: UIScreen.screenHeight)
       .ignoresSafeArea()
       .overlay(
        Group {
            if showLoginPage {
                LoginScreen().transition(.move(edge: .trailing))
            }
        }
       )
    }
    
    @ViewBuilder
    func buildTabImage() -> some View {
        TabView (selection: $pageIndex) {
            ForEach(Array(AppConstants.welcomes.enumerated()), id: \.offset) { index, welcome in
                VStack {
                    Image(welcome.image)
                        .padding()
                    Text(welcome.title)
                        .font(.system(size: 24))
                        .fontWeight(.bold)
                        .foregroundColor(Color(49,49,49))
                    Text(welcome.description)
                        .font(.system(size: 18))
                        .foregroundColor(Color(49,49,49))

                }
                .tag(index)
                .padding()
            }
        }
    }
    
    @ViewBuilder
    func buildListDot() -> some View {
        WelcomeListDot(pageIndex: pageIndex)
    }
    
    @ViewBuilder
    func buildLoginLink() -> some View {
        WelcomeLoginLink(
            pageIndex: pageIndex,
            toNextPage: { pageIndex += 1 },
            toLogin: { withAnimation{ showLoginPage =  true }}
        )
    }
}

struct WelcomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeScreen()
    }
}
