//
//  SSLView.swift
//  ProxyAI
//
//  Created by Valtteri Juvonen on 3.8.2023.
//

import SwiftUI

struct SSLView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                CombinedSetting {
                    OnOffOption(text: "Include")
                    SettingWithPage()
                    SettingWithPage()
                }
                Text("Add host names to the include list to enable SSL proxying for those hosts.")
                    .font(.caption)
                    .padding(.bottom, 10)
                
                Text("The Exclude list excludes host names matched by the include list; such as if you've used a wildcard in include and need to exclude specific host names matched by that wildcard.")
                    .font(.caption)
                    .padding(.bottom, 10)
                
                Text("You may need to force-close and re-open an app in order for its requests to be visible after changing SSL proxying settings.")
                    .font(.caption)
                    .padding(.bottom, 10)
                
                Text("CA Certificate")
                    .font(.subheadline)
                
                VStack {
                    HStack {
                        Text("Certificate Status")
                        Text("Proxy not running")
                    }
                    
                    Button {
                        print("do something")
                    } label: {
                        Text("Install SSL Certificate")
                    }
                    
                    Button {
                        print("do something")
                    } label: {
                        Text("Reset SSL Certficate")
                    }
                }
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                .background(.black)
                .foregroundColor(.white)
                
                
                Text("SSL proxying requires that you install and trust a CA certificate create by Charles for your device.")
                    .font(.caption)
                    .padding(.bottom, 10)
                
                Text("INSTRUCTIONS")
                    .font(.caption)
                    .padding(.bottom, 10)
                
                Text("Part one: install the certificate")
                    .font(.caption)
                    .padding(.bottom, 10)
                
                Text("1. Ensure Charles is active, using the switch on the main screen of Charles.")
                    .font(.caption)
                Text("2. Tap 'Install SSL Certificate' above")
                    .font(.caption)
                Text("3. Safari prompts you to allow a configuration profile to be downloaded. Tap Allow.")
                    .font(.caption)
                Text("4. If you have an Apple Watch you may be prompted to choose a device to download to; choose your IPhone or IPad.")
                    .font(.caption)
                Text("5. Open the settings app, tap 'Profile Downloaded' to access the new profile.")
                    .font(.caption)
                Text("6. Tap install to start the installation process; read the warning, then tap install again.")
                    .font(.caption)
                    .padding(.bottom, 10)
                
                Text("Part two: Trust the certificate")
                    .font(.caption)
                    .padding(.bottom, 10)
                
                Text("1. Open Settings app")
                    .font(.caption)
                Text("2: Navigate to General {'>'} About {'>'} Certificate Trust Settings")
                    .font(.caption)
                Text("3: Find the certificate 'Charles Proxy CA (2 Jan 2023, IPhone)' and switch it on.")
                    .font(.caption)
                Text("4: Read the warning, then tap Continue.")
                    .font(.caption)
                    .padding(.bottom, 10)
                
                Text("Finally, return to Charles and check the Certificate Status above. When the certificate is correctly installed and trusted, it will read 'Trusted'.")
                    .font(.caption)
                
                Spacer()
            }
            .padding()
        }
    }
}

#Preview {
    SSLView()
}
