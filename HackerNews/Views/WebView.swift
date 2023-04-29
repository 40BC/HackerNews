//
//  WebView.swift
//  HackerNews
//
//  Created by bjorn on 4/29/23.
//

import Foundation
import WebKit
import SwiftUI

struct WebView: UIViewRepresentable {
    let urlString: String?
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        print("URL \(urlString ?? "no url")")
        if let safeUrl = urlString {
            if let url = URL(string: safeUrl) {
                let request = URLRequest(url: url)
                uiView.load(request)
            }
        }
    }
}
