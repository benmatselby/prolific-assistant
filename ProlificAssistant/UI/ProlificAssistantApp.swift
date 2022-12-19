//
//  ProlificAssistantApp.swift
//  ProlificAssistant
//
//  Created by Ben Selby on 23/11/2022.
//

import SwiftUI
import AppKit

@main
struct ProlificAssistantApp: App {

    var body: some Scene {
        MenuBarExtra("Prolific", image: "Logo") {

            Button("Active studies") {
                Task {
                    let studies = await Client().getStudies().results
                    print(studies)
                }
            }
            Button("Quit") {
                NSApplication.shared.terminate(self)
            }.keyboardShortcut("q")
        }.menuBarExtraStyle(.window)
    }
}
