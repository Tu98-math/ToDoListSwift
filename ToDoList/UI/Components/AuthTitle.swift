//
//  AuthTitle.swift
//  ToDoList
//
//  Created by Tú Trần Anh on 31/08/2022.
//

import SwiftUI

struct AuthTitle: View {
    var title: String = ""
    var description: String = ""
    var body: some View {
        Text(title)
            .font(.system(size: 32))
            .fontWeight(.bold)
            .foregroundColor(Color(49,49,49))
            .padding(.bottom, 12)
            .padding(.top, 20)
        Text(description)
            .font(.system(size: 16))
            .foregroundColor(Color(155, 155, 155))
            .padding(.bottom, 48)
        
    }
}
