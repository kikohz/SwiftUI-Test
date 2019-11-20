//
//  DetailsIView.swift
//  SwiftUI-Test
//
//  Created by Bllgo on 2019/11/20.
//  Copyright © 2019 Bllgo. All rights reserved.
//

import SwiftUI
import WebKit

struct DetailsIView: UIViewRepresentable{
    let request: URLRequest
    func makeUIView(context: Context) -> WKWebView  {
        return WKWebView()
    }
      
    func updateUIView(_ uiView: WKWebView, context: Context) {
        uiView.load(request)
    }
}

struct DetailsIView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsIView(request: URLRequest(url: URL(string: "https://www.apple.com")!))
    }
}
