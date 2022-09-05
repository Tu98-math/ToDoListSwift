//
//  PrimaryButton.swift
//  ToDoList
//
//  Created by Tú Trần Anh on 30/08/2022.
//

import SwiftUI

struct PrimaryButton: View {
    var title: String
    var onTap: () -> Void = {}
    var isTap: Bool = true
    var isOutline: Bool = true
    var backgroundColor: Color = .white
    var foregroundColor: Color = Color(49,49,49)
    var disable: Bool = false
    var body: some View {
        if isTap {
            Button(action: disable ? {} : onTap) {
                Text(title)
                    .foregroundColor(foregroundColor)
                    .font(.system(size: 18))
                    .fontWeight(.bold)
                    .frame(maxWidth: .infinity)
                    .padding([.vertical], 13)
                    .background(backgroundColor)
            }
            .cornerRadius(5)
            .opacity(disable ? 0.5 : 1)
        } else {
            Text(title)
                .foregroundColor(foregroundColor)
                .font(.system(size: 18))
                .fontWeight(.bold)
                .frame(maxWidth: .infinity)
                .padding([.vertical], 13)
                .background(backgroundColor)
                .cornerRadius(5)
                .opacity(disable ? 0.5 : 1)
                
        }
    }
}
