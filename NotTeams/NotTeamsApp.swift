//
//  NotTeamsApp.swift
//  NotTeams
//
//  Created by Robert Mukhtarov on 03.05.2022.
//

import SwiftUI

@main
struct NotTeamsApp: App {
    @NSApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .onAppear {
                    NSWindow.allowsAutomaticWindowTabbing = false
                }
        }
        .commands {
            SidebarCommands()
        }
    }
}
