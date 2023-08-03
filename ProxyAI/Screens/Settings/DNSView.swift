//
//  DNSView.swift
//  ProxyAI
//
//  Created by Valtteri Juvonen on 3.8.2023.
//

import SwiftUI

struct DNSView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                OnOffOption(text: "Enabled")
                Text("BLOCK MATCHES")
                    .font(.subheadline)
                    .padding(.top, 10)
                
                Text("No mappings added")
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                    .padding()
                    .background(.black)
                    .foregroundColor(.white)
                    .font(.caption)
                
                Text("Spoof DNS lookups by specifying your own host name to remote address mappings.")
                    .font(.caption)
            }
            .padding()
        }
    }
}

#Preview {
    DNSView()
}
