//
//  AppConstants.swift
//  ToDoList
//
//  Created by Tú Trần Anh on 31/08/2022.
//

import Foundation

struct AppConstants {
    static let welcomes: [WelcomeModel]  = [
        WelcomeModel(
            title: "Welcome to aking",
            image: "welcome_0",
            description: "Whats going to happen tomorrow?",
            bottom: "welcome_bottom_0"
        ),
        WelcomeModel(
            title: "Work happens",
            image: "welcome_1",
            description: "Get notified when work happens.",
            bottom: "welcome_bottom_1"
        ),
        WelcomeModel(
            title: "Tasks and assign",
            image: "welcome_2",
            description: "Task and assign them to colleagues.",
            bottom: "welcome_bottom_2"
        )
    ]
}
