//
//  SettingWithPage.swift
//  ProxyAI
//
//  Created by Valtteri Juvonen on 2.8.2023.
//

import SwiftUI

struct SettingWithPage: View {
    var body: some View {
        HStack {
            Text("Hello Barbie")
            Spacer()
            HStack {
                Text("KEN")
                Image(systemName: "wifi.square.fill")
            }
        }
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
        .padding()
        .background(.black)
        .foregroundColor(.white)
    }
}

#Preview {
    SettingWithPage()
}
