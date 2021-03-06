//
//  Product.swift
//  ShoeUI
//
//  Created by MINH DUC NGUYEN on 12/07/2022.
//

import SwiftUI

//MARK: - Product Model and Sample Data

struct Product: Identifiable {
    var id = UUID().uuidString
    var productImage: String
    var productTitle: String
    var productPrice: String
    var productBG: Color
    var isLike: Bool = false
    var productRaiting: Int
}

var products = [
    Product(productImage: "nike1", productTitle: "Nike Air Force 1 React Men's Shoes", productPrice: "$100.0", productBG: Color("BG1"), productRaiting: 5),
    Product(productImage: "nike2", productTitle: "Nike Air Force 1 '07 LV8 Men's Shoes", productPrice: "$110.0", productBG: Color("BG2"), isLike: true, productRaiting: 4),
    Product(productImage: "nike3", productTitle: "Nike Air Force 1 Men's Boot", productPrice: "$120.0", productBG: Color("BG3"), isLike: true, productRaiting: 1),
    Product(productImage: "nike4", productTitle: "Nike Air Force 1 React Men's Shoes", productPrice: "$130.0", productBG: Color("BG5"), productRaiting: 4),
    Product(productImage: "nike5", productTitle: "Nike Air Force 1 '07 LX Men's Shoe", productPrice: "$140.0", productBG: Color("BG5"), productRaiting: 2),
    Product(productImage: "nike6", productTitle: "Nike Air Force 1 Low By You Unlocked", productPrice: "$150.0", productBG: Color("BG1"), isLike: true, productRaiting: 4),
    Product(productImage: "nike7", productTitle: "Air Jordan 1 Retro High OG Shoes", productPrice: "$160.0", productBG: Color("BG2"), productRaiting: 3),
    Product(productImage: "nike8", productTitle: "Nike Air Force 1 Low By You Unlocked", productPrice: "$170.0", productBG: Color("BG3"), productRaiting: 5)
]
