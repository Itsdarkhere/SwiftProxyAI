//
//  RecordingView.swift
//  ProxyAI
//
//  Created by Valtteri Juvonen on 3.8.2023.
//

import SwiftUI

struct RecordingView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                Text("Request")
                    .font(.subheadline)
                CombinedSetting {
                    OnOffOption(text: "Record Request Body")
                    SettingWithPage()
                }
                Text("Response")
                    .font(.subheadline)
                    .padding(.top, 10)
                CombinedSetting {
                    OnOffOption(text: "Record Response Body")
                    SettingWithPage()
                }
                OnOffOption(text: "Only Record Partial Opaque Bodies")
                Text("Limits the size of recorded request and response bodies when the connecting is encrypted or otherwise opaque.")
                    .font(.caption)
                    .padding(.bottom, 10)
                OnOffOption(text: "Record TCP Streams")
                Text("Records TCP streams for non-HTTP traffic.")
                    .font(.caption)
                    .padding(.bottom, 10)
                CombinedSetting {
                    SettingWithPage()
                    SettingWithPage()
                }
                Text("You can choose which hostnames to be the only ones to include in the recording, or Exclude hostnames that you want to ignore. Hostname matches may be exact or may use a wildcard.")
                    .font(.caption)
                Spacer()
            }
            .padding()
        }
    }
}

#Preview {
    RecordingView()
}
