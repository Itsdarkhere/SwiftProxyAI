//
//  ContentView.swift
//  ProxyAI
//
//  Created by Valtteri Juvonen on 28.7.2023.
//

import SwiftUI

struct MainView: View {
    
    @State private var vibrateOnRing = false
    @State private var showingSheet = false
    
    var body: some View {
        NavigationView {
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
                    
                    VStack(alignment: .leading) {
                        Text("Status")
                        ToggleComponent(vibrateOnRing: $vibrateOnRing)
                        
                        Text("Current Session")
                            .padding(.top, 5)
                        NavigationLink(destination: SessionView(), label: {
                            SessionComponent()
                        })
                        
                        Button {
                            showingSheet.toggle()
                        } label: {
                            ButtonComponent(text: "Open settings")
                        }
                        .sheet(isPresented: $showingSheet) {
                            SettingsView()
                        }
                        
                        Spacer()
                    }
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .padding()
                    .background(Color.white)
                    .cornerRadius(12)
                    .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                }
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
            Text(vibrateOnRing ? "ON" : "OFF")
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
        HStack() {
            SessionDetail(text: "0", desc: "Hosts")
            Spacer()
            SessionDetail(text: "0", desc: "Requests")
            Spacer()
            SessionDetail(text: "0 B", desc: "Size")
            Spacer()
            Image(systemName: "chevron.right")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 15)
                .foregroundColor(.white)
        }
        .frame(maxWidth: .infinity, maxHeight: 75)
        .padding()
        .background(.black)
        .cornerRadius(10)
    }
}

struct SessionDetail: View {
    var text: String
    var desc: String
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(text)
                .fontWeight(.medium)
                .font(.subheadline)
            Text(desc)
                .fontWeight(.semibold)
        }
        .foregroundColor(.white)
    }
}

#Preview {
    MainView()
}
