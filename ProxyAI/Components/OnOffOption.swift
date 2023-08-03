//
//  OnOffOption.swift
//  ProxyAI
//
//  Created by Valtteri Juvonen on 2.8.2023.
//

import SwiftUI

struct OnOffOption: View {
    var text: String
    @State var isOn = false
    var body: some View {
        HStack {
            Text(text)
            Spacer()
            Toggle("", isOn: $isOn)
        }
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
        .padding()
        .background(.black)
        .foregroundColor(.white)
    }
}

#Preview {
    OnOffOption(text: "Proxying")
}
