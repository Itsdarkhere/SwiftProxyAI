//
//  PayloadView.swift
//  ProxyAI
//
//  Created by Valtteri Juvonen on 2.8.2023.
//

import SwiftUI

struct PayloadView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                ChapterText(text: "Overview")
                Overview()
                
                ChapterText(text: "Sizes")
                Sizes()
                
                ChapterText(text: "Request Header")
                RequestHeader()
                
                ChapterText(text: "Response Header")
                ResponseHeader()
                
                ChapterText(text: "Request Body")
                ViewButton()
                
                ChapterText(text: "Response Body")
                ViewButton()
            }
            .padding()
        }
    }
}

struct ChapterText: View {
    var text: String
    var body: some View {
        Text(text)
            .font(.title3)
            .foregroundStyle(.black)
    }
}
    
struct Overview: View {
    var body: some View {
        VStack(spacing: 0) {
            Detail(what: "URL", value: "https://valtteri.online.com")
            Detail(what: "Method", value: "POST")
            Detail(what: "Respoonse Code", value: "200 OK")
            Detail(what: "Protocol", value: "HTTP/1.1")
            Detail(what: "Kept Alive", value: "NO")
            Detail(what: "TLS", value: "TLS SDGHFF 1.1.2 SS")
            Detail(what: "Remote Address", value: "https://valtteri.online.com")
            Detail(what: "Notes", value: "-")
            Detail(what: "Error", value: "-")
        }
        .cornerRadius(10)
    }
}

struct Sizes: View {
    var body: some View {
        VStack(spacing: 0) {
            Detail(what: "Request Header", value: "724 B")
            Detail(what: "Request", value: "484 B")
            Detail(what: "Response Header", value: "559 B")
            Detail(what: "Response", value: "99 B")
        }
        .cornerRadius(10)
    }
}

struct RequestHeader: View {
    var body: some View {
        VStack(spacing: 0) {
            Detail(what: "HOST", value: "https://valtteri.online.com")
            Detail(what: "ACCEPT", value: "https://valtteri.online.com")
            Detail(what: "Apollographql-client-version", value: "https://valtteri.online.com")
            Detail(what: "Accept-Language", value: "https://valtteri.online.com")
            Detail(what: "Accept-encoding", value: "https://valtteri.online.com")
            Detail(what: "Content-Type", value: "https://valtteri.online.com")
            Detail(what: "X-Request-ID", value: "https://valtteri.online.com")
            Detail(what: "DeviceId", value: "https://valtteri.online.com")
            Detail(what: "User-Agent", value: "https://valtteri.online.com")
            Detail(what: "Content-Length", value: "https://valtteri.online.com")
            Detail(what: "Apollographql-client-name", value: "https://valtteri.online.com")
            Detail(what: "X-APOLLO-OPERATION-TYPE", value: "https://valtteri.online.com")
            Detail(what: "Connection", value: "https://valtteri.online.com")
            Detail(what: "Cookie", value: "https://valtteri.online.com")
            Detail(what: "X-APOLLO-OPERATION-NAME", value: "https://valtteri.online.com")
        }
        .cornerRadius(10)
    }
}

struct ResponseHeader: View {
    var body: some View {
        VStack(spacing: 0) {
            Detail(what: "Cache-Control", value: "https://valtteri.online.com")
            Detail(what: "Content-Type", value: "https://valtteri.online.com")
            Detail(what: "Date", value: "https://valtteri.online.com")
            Detail(what: "Expires", value: "https://valtteri.online.com")
            Detail(what: "Pragma", value: "https://valtteri.online.com")
            Detail(what: "Set-Cookie", value: "https://valtteri.online.com")
            Detail(what: "Transfer-Encoding", value: "https://valtteri.online.com")
            Detail(what: "Vary", value: "https://valtteri.online.com")
            Detail(what: "X-Content-Type-Options", value: "https://valtteri.online.com")
            Detail(what: "X-Frame-Options", value: "https://valtteri.online.com")
            Detail(what: "X-XSS-Protection", value: "https://valtteri.online.com")
            Detail(what: "X-Request-ID", value: "https://valtteri.online.com")
            ViewButton()
        }
        .background(.black)
        .cornerRadius(10)
    }
}

#Preview {
    PayloadView()
}
