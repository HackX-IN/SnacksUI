//
//  ProductList.swift
//  snacks
//
//  Created by Inam 07 on 16/10/2566 BE.
//

import Foundation
import SwiftUI

struct ProductList : Identifiable {
    
    var id: UUID = .init()
    var title:String
    var image:String
    var color:Color
    var price:Int
    var category:String
}


var productListItem : [ProductList] = [

    ProductList(title: "Good Source ", image: "snack", color: .pink, price: 8, category: "Choco"),
    ProductList(title: "Unreal Muffins ", image: "snack", color: .yellow, price: 8, category: "Choco"),
    ProductList(title: "Good Protien ", image: "products", color: Color(.systemBlue), price: 8, category: "Chips"),
    ProductList(title: "Good HoneyChoco ", image: "snack", color: .purple, price: 8, category: "Choco"),
    ProductList(title: "Lays", image: "products", color: .orange, price: 8, category: "Chips"),
    ProductList(title: "Parles", image: "products", color: .brown, price: 8, category: "Chips"),



]
