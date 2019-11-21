//
//  DetailsIView.swift
//  SwiftUI-Test
//
//  Created by Bllgo on 2019/11/20.
//  Copyright © 2019 Bllgo. All rights reserved.
//

import SwiftUI
import WebKit

struct DetailsIView: View{
    
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
        Image("turtlerock")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .navigationBarTitle("图片展示",displayMode: .inline)
            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)  //让图片自适应大小
            
            Text("Start")
                .font(.largeTitle)
                .foregroundColor(.secondary)
                .padding()
        }
//
    }
//    let request: URLRequest
//    func makeUIView(context: Context) -> WKWebView  {
//        return WKWebView()
//    }
//
//    func updateUIView(_ uiView: WKWebView, context: Context) {
//        uiView.load(request)
//    }
}

struct DetailsIView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            DetailsIView()
        }
    }
}
