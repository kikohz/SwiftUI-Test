//
//  ContentView.swift
//  SwiftUI-Test
//
//  Created by Bllgo on 2019/11/20.
//  Copyright © 2019 Bllgo. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List(urlServives) { urlServiceModel in
                NavigationLink(destination: DetailsIView(request: URLRequest(url: URL(string: urlServiceModel.api)!))) {
                    Image(urlServiceModel.sid).resizable().frame(width: 50, height: 50)
                    VStack(alignment: .leading) {
                        Text(urlServiceModel.name)
                        Text(urlServiceModel.details)
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                    }
                }
            }
            .navigationBarTitle(Text("短链接服务商"))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
