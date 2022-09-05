//
//  QuickNoteItem.swift
//  ToDoList
//
//  Created by Tú Trần Anh on 05/09/2022.
//

import Foundation
import SwiftUI

struct QuickNoteItem: View {
    var description: String?
    var color: Int?
    
    var body: some View {
        HStack {
            VStack (alignment: .leading) {
                Rectangle()
                    .frame(width: 121, height: 3)
                    .foregroundColor(AppColors.quickColor[color ?? 0])
                    .padding(.leading, 32)
                Text(description ?? "")
                    .font(.system(size: 16))
                    .padding(.trailing, 19)
                    .padding(.leading, 32)
                    .padding(.vertical, 16)
            }
            Spacer()
        }
        .cornerRadius(3)
        .background(.white)
        .shadow(color: Color(224, 224, 224).opacity(0.5), radius: 9, x: 5, y: 5)
        .padding(.horizontal, 16)
    }
}
