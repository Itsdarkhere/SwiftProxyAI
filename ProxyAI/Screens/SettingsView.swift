//
//  SettingsView.swift
//  ProxyAI
//
//  Created by Valtteri Juvonen on 3.8.2023.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink(destination: AIView(), label: {
                    Text("AI SETTINGS")
                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                        .padding()
                        .background(.black)
                        .foregroundColor(.white)
                        .cornerRadius(5)
                })
                
                NavigationLink(destination: RecordingView(), label: {
                    Text("Recording")
                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                        .padding()
                        .background(.black)
                        .foregroundColor(.white)
                        .cornerRadius(5)
                })
                
                NavigationLink(destination: SSLView(), label: {
                    Text("SSL Proxying")
                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                        .padding()
                        .background(.black)
                        .foregroundColor(.white)
                        .cornerRadius(5)
                })
                
                NavigationLink(destination: BlockView(), label: {
                    Text("Block List")
                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                        .padding()
                        .background(.black)
                        .foregroundColor(.white)
                        .cornerRadius(5)
                })
                
                NavigationLink(destination: DNSView(), label: {
                    Text("DNS Spoofing")
                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                        .padding()
                        .background(.black)
                        .foregroundColor(.white)
                        .cornerRadius(5)
                })
                
                Spacer()
            }
            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity)
            .padding()
        }
    }
}

#Preview {
    SettingsView()
}
