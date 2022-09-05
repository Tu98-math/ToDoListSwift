//
//  Color.swift
//  ToDoList
//
//  Created by Tú Trần Anh on 30/08/2022.
//

import SwiftUI
    
extension Color {
    init(_ red: CGFloat, _ green: CGFloat, _ blue: CGFloat ) {
        self.init(red: red / 255.0, green: green / 255.0, blue: blue / 255.0)
    }
}
