//
//  WelcomeListDot.swift
//  ToDoList
//
//  Created by Tú Trần Anh on 31/08/2022.
//

import SwiftUI
struct WelcomeListDot: View {
    var pageIndex: Int
    var body: some View {
        HStack {
            ForEach(Array(AppConstants.welcomes.enumerated()), id: \.offset) { index, welcome in
                Image(systemName: "circle.fill")
                    .imageScale(.small)
                    .scaleEffect(0.7)
                    .foregroundColor(index == pageIndex ? Color(49,49,49) : Color(49,49,49).opacity(0.2))
            }
        }
        .padding(.bottom, 20)
    }
}
