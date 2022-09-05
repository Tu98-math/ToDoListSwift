//
//  QuickTab.swift
//  ToDoList
//
//  Created by Tú Trần Anh on 31/08/2022.
//

import SwiftUI

struct QuickTab: View {
    var body: some View {
        VStack {
            Text("Quick Notes")
                .font(.system(size: 20))
                .foregroundColor(AppColors.TextColor)
                .padding(.bottom, 10)
            Divider()
            ScrollView (.vertical, showsIndicators: false) {
                VStack (spacing: 16) {
                    QuickNoteItem()
                    QuickNoteItem()
                    QuickNoteItem()
                    QuickNoteItem()
                    QuickNoteItem()
                    QuickNoteItem()
                    QuickNoteItem()
                    QuickNoteItem()
                    QuickNoteItem()
                    QuickNoteItem()
                }.frame(width: UIScreen.screenWidth)
                .padding(.top, 10)
            }
            
        }
        
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

struct QuickTab_Previews: PreviewProvider {
    static var previews: some View {
        QuickTab()
    }
}


struct QuickNoteItem: View {
    var body: some View {
        VStack (alignment: .leading) {
            Rectangle()
                .frame(width: 121, height: 3)
                .foregroundColor(.red)
                .padding(.leading, 32)
            Text("Meeting with Jessica in Central Park at 10:30PM")
                .font(.system(size: 16))
                .padding(.trailing, 19)
                .padding(.leading, 32)
                .padding(.vertical, 16)
        }
        .cornerRadius(3)
        .padding(.horizontal, 16)
        .background(.white)
        .shadow(color: Color(224, 224, 224).opacity(0.5), radius: 9, x: 5, y: 5)
    }
}
