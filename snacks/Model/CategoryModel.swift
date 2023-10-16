//
//  CategoryModel.swift
//  snacks
//
//  Created by Inam 07 on 16/10/2566 BE.
//

import Foundation
import SwiftUI

struct CatergoryModel : Identifiable,Hashable {
    var id: UUID = .init()
    var title : String
    var icon :String
}

var categoryListsItem :[CatergoryModel] = [

    CatergoryModel(title:"All", icon: ""),
    CatergoryModel(title: "Choco", icon: "cookie"),
    CatergoryModel(title: "Waffles", icon: "waffle"),
    CatergoryModel(title: "Coffee", icon: "coffee")


]
