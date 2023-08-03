//
//  SwiftUIView.swift
//  ProxyAI
//
//  Created by Valtteri Juvonen on 1.8.2023.
//

import SwiftUI

struct SessionView: View {
    var body: some View {
        VStack {
            SessionInfoComponent()
            List(0..<20) { item in
                NavigationLink(destination: PayloadView(), label: {
                    NetworkCallComponent()
                })
            }
            .listStyle(.plain)
        }
        .padding()
    }
}

struct NetworkCallComponent: View {
    var body: some View {
        HStack {
            Image(systemName: "globe.europe.africa.fill")
                .foregroundColor(.black)
            
            Spacer()
            
            Text("1")
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .foregroundColor(.black)
            
            Spacer()
            
            Text(verbatim: "https://abs.twimgs.com")
                .fontWeight(.semibold)
                .foregroundColor(.black)
            
            Spacer()
            
            Image(systemName: "dot.radiowaves.left.and.right")
                .foregroundColor(.black)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .padding()
    }
}

struct SessionInfoComponent: View {
    var body: some View {
        HStack {
            Spacer()
            SessionDetail(text: "0", desc: "Hosts")
            Spacer()
            SessionDetail(text: "0", desc: "Requests")
            Spacer()
            SessionDetail(text: "0 B", desc: "Size")
            Spacer()
        }
        .frame(maxWidth: .infinity, maxHeight: 75)
        .padding(.vertical)
        .background(.black)
        .cornerRadius(10)
    }
}

#Preview {
    SessionView()
}
