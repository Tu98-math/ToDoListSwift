//
//  HomeScreen.swift
//  ToDoList
//
//  Created by Tú Trần Anh on 31/08/2022.
//

import SwiftUI

struct HomeScreen: View {
    @State var currentTab: Tab = .MyTask
    
    init() {
        UITabBar.appearance().isHidden = true
    }
    
    var body: some View {
        VStack {
            TabView (selection: $currentTab) {
                MyTaskTab()
                    .tag(Tab.MyTask)
                MenuTab()
                    .tag(Tab.Menu)
                QuickTab()
                    .tag(Tab.Quick)
                ProfileTab()
                    .tag(Tab.Profile)
            }
            buildCustomBar()
        }
    }
    
    @ViewBuilder
    func buildCustomBar() -> some View {
        HStack {
            VStack {
                Button(
                    action: {
                        if (currentTab != .MyTask) {
                            currentTab = .MyTask
                        }
                    }
                ) {
                    Image("My Task")
                        .foregroundColor(.white)
                }
                .padding(.top, 17)
                Text("My Task")
                    .foregroundColor(.white)
            }
            .opacity(currentTab == .MyTask ? 1 : 0.6)
            Spacer()
            VStack {
                Button(
                    action: {
                        if (currentTab != .Menu) {
                            currentTab = .Menu
                        }
                    }
                ) {
                    Image("Menu")
                        .foregroundColor(.white)
                   
                }
                .padding(.top, 17)
                Text("Menu")
                    .foregroundColor(.white)
            }
            .opacity(currentTab == .Menu ? 1 : 0.6)
            Spacer()
            VStack {
                Button(
                    action: {}
                ) {
                    Image("add")
                        .padding(.all, 20)
                        .background(
                            LinearGradient(
                                gradient:
                                    Gradient(colors: [Color(246, 136, 136), AppColors.PrimaryColor]), startPoint: .leading, endPoint: .trailing
                            )
                        )
                        .cornerRadius(100)
                }
                .offset(y: -25)
            }
            
            Spacer()
            VStack {
                Button(
                    action: {
                        if (currentTab != .Quick) {
                            currentTab = .Quick
                        }
                    }
                ) {
                    Image("Quick")
                        .aspectRatio(contentMode: .fit)
                        .foregroundColor(.white)
                }
                .padding(.top, 17)
                Text("Quick")
                    .foregroundColor(.white)
            }
            .opacity(currentTab == .Quick ? 1 : 0.6)
            Spacer()
            VStack {
                Button(
                    action: {
                        if (currentTab != .Profile) {
                            currentTab = .Profile
                        }
                    }
                ) {
                    Image("Profile")
                        .foregroundColor(.white)
                }
                .padding(.top, 17)
                Text("Profile")
                    .foregroundColor(.white)
            }
            .opacity(currentTab == .Profile ? 1 : 0.6)
        }
        .padding(.horizontal, 12)
        .background(Color(41, 46, 78))
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}


enum Tab: String, CaseIterable {
    case MyTask = "My Task"
    case Menu = "Menu"
    case Quick = "Quick"
    case Profile = "Profile"
}
