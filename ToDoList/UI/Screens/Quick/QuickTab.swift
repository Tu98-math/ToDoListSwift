//
//  QuickTab.swift
//  ToDoList
//
//  Created by Tú Trần Anh on 31/08/2022.
//

import SwiftUI

struct QuickTab: View {
    @ObservedObject var model = QuickViewModel()
    
    init() {
        model.getData()
    }
    
    var body: some View {
        VStack {
            Text("Quick Notes")
                .font(.system(size: 20))
                .foregroundColor(AppColors.TextColor)
                .padding(.bottom, 10)
            Divider()
            ScrollView (.vertical, showsIndicators: false) {
                ForEach(model.list, id: \.self) { item in
                    QuickNoteItem(
                        description: item.description,
                        color: item.color
                    )
                    .frame(width: UIScreen.screenWidth)
                    .padding(.top, 10)
                }
            }
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .onAppear() {
            
        }
    }
}

struct QuickTab_Previews: PreviewProvider {
    static var previews: some View {
        QuickTab()
    }
}



