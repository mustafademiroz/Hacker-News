//
//  PostData.swift
//  HACKERNEWS
//
//  Created by mustafa demiröz on 10.08.2021.
//

import Foundation


struct Results: Decodable{
    
    let hits: [Post]
}

struct Post: Decodable, Identifiable{
    
    var id: String {
        return objectID
    }
    
    let objectID: String
    let points: Int
    let title: String
    let url: String?
    
}
