//
//  QuickModel.swift
//  ToDoList
//
//  Created by Tú Trần Anh on 05/09/2022.
//

import Foundation

struct QuickModel: Identifiable, Hashable {
    
    var id: String
    var description: String?
    var color: Int?
    var authorId: String?
    var createTime: Date?
    var updateTime: Date?
}
