//
//  StudyView.swift
//  ProlificAssistant
//
//  Created by Ben Selby on 20/12/2022.
//

import SwiftUI
import AppKit

struct StudyView: View {
    @State var studies: [Study] = []

    var body: some View {
        VStack(alignment: .leading) {
            Text("Active studies")
                .font(.title)

            List {
                if studies.count == 0 {
                    Spacer()
                    Text("No active studies")
                    Link("Create study..", destination: URL(string:"https://app.prolific.co")!)
                    Spacer()
                } else {
                    ForEach(studies, id: \.self) { study in
                        Link(study.name.prefix(50), destination: URL(string: study.getAppURL())!)
                            .padding(.bottom, 10.0).fixedSize()
                            .badge(study.total_available_places)
                    }
                }
            }
            .padding(-16.0)

            Button("Quit") {
                NSApplication.shared.terminate(self)
            }.keyboardShortcut("q")
        }
        .frame(width: 400.0)
        .task {
            await getStudies()
        }.padding(20)
    }

    /**
     Get studies from Prolific
     */
    func getStudies() async {
        let now = Date()
        print("Loading studies..." + now.ISO8601Format())
        studies = await Client().getStudies().results
    }
}
