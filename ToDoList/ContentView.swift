//
//  ContentView.swift
//  ToDoList
//
//  Created by Tú Trần Anh on 30/08/2022.
//

import SwiftUI


struct ContentView: View {
    
    @EnvironmentObject var viewModel: AuthViewModel
    
    var body: some View {
        
        NavigationView {
            if viewModel.signedIn {
                HomeScreen()
            } else {
                WelcomeScreen()
            }
        }
        .navigationBarTitle("")
        .navigationBarHidden(true)
        .onAppear {
            viewModel.signedIn = viewModel.isSignedIn
        }
        
    }
}
