//
//  DataModel.swift
//  First App
//
//  Created by Rohit Deshmukh on 12/23/22.
//

import Foundation

struct TableData: Hashable {
    var id: Int
    var title: String
}

class DataModel: NSObject {
    static let data = [
        TableData(id: 1, title: "Title")
    ]
}
