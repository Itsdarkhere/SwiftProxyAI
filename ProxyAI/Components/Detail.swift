//
//  Detail.swift
//  ProxyAI
//
//  Created by Valtteri Juvonen on 2.8.2023.
//

import SwiftUI

struct Detail: View {
    
    var what: String
    var value: String
    
    var body: some View {
        Button {
            print("open detail")
        } label: {
            HStack {
                Text(what)
                Spacer()
                Text(value)
            }
            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
            .padding()
            .background(.black)
            .foregroundColor(.white)
        }
    }
}

#Preview {
    Detail(what: "Method", value: "POST")
}
