//
//  ViewButton.swift
//  ProxyAI
//
//  Created by Valtteri Juvonen on 2.8.2023.
//

import SwiftUI

struct ViewButton: View {
    var body: some View {
        NavigationLink(destination: RawScreen(), label: {
            Text("View as text")
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                .padding()
                .background(.black)
                .foregroundColor(.blue)
                .fontWeight(.bold)
                .cornerRadius(5)
        })
    }
}

#Preview {
    ViewButton()
}
