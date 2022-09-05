//
//  ProfileTab.swift
//  ToDoList
//
//  Created by Tú Trần Anh on 31/08/2022.
//

import SwiftUI

struct ProfileTab: View {
    @EnvironmentObject var viewModel: AuthViewModel
    var body: some View {
        Button(action: {viewModel.signOut()}) {
            Text("Log Out")
        }
    }
}

struct ProfileTab_Previews: PreviewProvider {
    static var previews: some View {
        ProfileTab()
    }
}
