//
//  ContentView.swift
//  ProxyAI
//
//  Created by Valtteri Juvonen on 28.7.2023.
//

import SwiftUI

struct ContentView: View {
    
    @State private var vibrateOnRing = false
    
    var body: some View {
        ZStack {
            Color(.black)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack(alignment: .leading) {
                VStack {
                    Spacer()
                    Text("ProxyAI")
                        .foregroundColor(.white)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .font(.title)
                        .padding(.bottom, 10)
                }
                .padding(.horizontal)
                .frame(height: 100)
                
                VStack {
                    Button {
                        print("Clicked test api")
                    } label: {
                        ButtonComponent(text: "Test API")
                    }
                    
                    ToggleComponent(vibrateOnRing: $vibrateOnRing)
                    
                    SessionComponent()
                    
                    Spacer()
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .padding()
                .background(Color.white)
                .cornerRadius(12)
                .edgesIgnoringSafeArea(.bottom)
            }
        }
    }
}

struct ButtonComponent: View {
    var text: String;

    var body: some View {
        Text(text)
            .frame(maxWidth: .infinity, maxHeight: 50)
            .padding(.vertical)
            .background(Color.black)
            .foregroundColor(.white)
            .fontWeight(.bold)
            .cornerRadius(10)
    }
}

struct ToggleComponent: View {
    @Binding var vibrateOnRing: Bool
    
    var body: some View {
        HStack {
            Text("OFF")
                .fontWeight(.semibold)
                .foregroundColor(.white)
                .padding(.horizontal)
            
            Toggle("", isOn: $vibrateOnRing)
                .padding(.horizontal)
        }
        .frame(maxWidth: .infinity, maxHeight: 50)
        .padding(.vertical)
        .background(.black)
        .cornerRadius(10)
    }
}

struct SessionComponent: View {
    var body: some View {
        HStack(spacing: 40) {
            SessionDetail(text: "0", desc: "Hosts")
            SessionDetail(text: "0", desc: "Requests")
            SessionDetail(text: "0 B", desc: "Size")
        }
        .frame(maxWidth: .infinity, maxHeight: 50)
        .padding(.vertical)
        .background(.black)
        .cornerRadius(10)
    }
}

struct SessionDetail: View {
    var text: String
    var desc: String
    
    var body: some View {
        VStack {
            Text(text)
            Text(desc)
                .fontWeight(.semibold)
        }
        .foregroundColor(.white)
    }
}

#Preview {
    ContentView()
}
