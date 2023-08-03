//
//  ExpandableSetting.swift
//  ProxyAI
//
//  Created by Valtteri Juvonen on 2.8.2023.
//

import SwiftUI

struct ExpandableSetting: View {
    var text: String
    var current: String
    var body: some View {
        HStack {
            Text(text)
            Spacer()
            Text(current)
        }
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
        .padding()
        .background(.black)
        .foregroundColor(.white)
    }
}

#Preview {
    ExpandableSetting(text: "Post", current: "Request")
}
