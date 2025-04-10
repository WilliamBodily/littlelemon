//
//  MenuList.swift
//  Restaurant
//
//  Created by William Bodily on 4/3/25.
//

import Foundation

protocol MenuListProtocol {
    var menu: [MenuItem] { get }
}

struct MenuList: Decodable {
    enum CodingKeys: String, CodingKey {
        case menu = "menu"
    }
    
    let menu: [MenuItem]
}
