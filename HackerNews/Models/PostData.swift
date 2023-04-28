//
//  PostData.swift
//  HackerNews
//
//  Created by bjorn on 4/28/23.
//

import Foundation

struct Results: Decodable {
    let hits: [Post]
}

struct Post: Decodable, Identifiable {
    let title: String
    let points: Int
    let url: String
    let objectID: String

    var id: String {
        return objectID
    }
}
