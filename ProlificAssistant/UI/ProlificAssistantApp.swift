//
//  ProlificAssistantApp.swift
//  ProlificAssistant
//
//  Created by Ben Selby on 23/11/2022.
//

import SwiftUI

@main
struct ProlificAssistantApp: App {
    var body: some Scene {
        MenuBarExtra("Prolific", image: "Logo") {
            let v = "1"
            Button("Active studies" + v) {
            }
            Button("Draft studies") {
            }
            Button("Settings") {
            }
            Button("Quit") {
                NSApplication.shared.terminate(self)
            }.keyboardShortcut("q")
        }
    }
}
