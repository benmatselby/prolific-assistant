//
//  ContentView.swift
//  ProlificAssistant
//
//  Created by Ben Selby on 23/11/2022.
//

import SwiftUI
import WebKit

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
//            WKWebView()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
