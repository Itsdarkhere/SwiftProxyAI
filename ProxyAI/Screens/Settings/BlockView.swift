//
//  BlockView.swift
//  ProxyAI
//
//  Created by Valtteri Juvonen on 3.8.2023.
//

import SwiftUI

struct BlockView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                OnOffOption(text: "Enabled")
                ExpandableSetting(text: "Blocking action", current: "Drop connection")
                Text("BLOCK MATCHES")
                    .font(.subheadline)
                    .padding(.top, 10)
                Text("No block matches added")
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                    .padding()
                    .background(.black)
                    .foregroundColor(.white)
                Text("Add matches to the block list to block matching requests")
                    .font(.caption)
            }
            .padding()
        }
    }
}

#Preview {
    BlockView()
}
