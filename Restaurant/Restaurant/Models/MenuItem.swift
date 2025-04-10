//
//  MenuItem.swift
//  Restaurant
//
//  Created by William Bodily on 4/3/25.
//

import Foundation

protocol MenuItemProtocol {
    var id: UUID { get }
    var title: String { get }
    var description: String { get }
    var price: String { get }
    var image: String { get }
    var category: String { get }
}

struct MenuItem: Decodable, Hashable, Identifiable {
    let id = UUID()
    let title: String
    let description: String
    let price: String
    let image: String
    let category: String
}
