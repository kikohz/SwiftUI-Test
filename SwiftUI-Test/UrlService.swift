//
//  UrlService.swift
//  SwiftUI-Test
//
//  Created by Bllgo on 2019/11/20.
//  Copyright © 2019 Bllgo. All rights reserved.
//

import SwiftUI

struct UrlServiceModel:Codable ,Identifiable{
    var id: Int?
    var name:String
    var sid:String
    var api:String
    var parameter:String
    var details:String
    var enabled:Bool
}

let urlServives = loadService()
func loadService() -> [UrlServiceModel] {
    let jsonPath = Bundle.init(for: AppDelegate.self).path(forResource: "service", ofType: "json")
    let data = try! Data.init(contentsOf: URL(fileURLWithPath: jsonPath!), options:.mappedIfSafe)
    let decoder = JSONDecoder()
    decoder.keyDecodingStrategy = .convertFromSnakeCase
    let services = try! decoder.decode([UrlServiceModel].self, from: data)
    return services
}
