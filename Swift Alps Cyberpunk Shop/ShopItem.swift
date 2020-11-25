//
//  ShopItem.swift
//  Swift Alps Cyberpunk Shop
//
//  Created by Roxana Jula on 25/11/2020.
//

import Foundation

struct ShopItem: Codable, Equatable, Identifiable {
    let id: String
    let name: String
    let description: String
    let price: Int

    static let all: [ShopItem] = Bundle.main.decode("shopItems.json")
}

