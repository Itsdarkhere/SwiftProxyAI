//
//  CombinedSetting.swift
//  ProxyAI
//
//  Created by Valtteri Juvonen on 2.8.2023.
//

import SwiftUI

struct CombinedSetting<Content: View>: View {
    let content: Content
    
    init(@ViewBuilder content: () -> Content) {
        self.content = content()
    }
    
    var body: some View {
        VStack(spacing: 0) {
            content
        }
    }
}

#Preview {
    CombinedSetting {
        ExpandableSetting(text: "Nothing", current: "0")
        ExpandableSetting(text: "Also", current: "Nothing")
    }
}
