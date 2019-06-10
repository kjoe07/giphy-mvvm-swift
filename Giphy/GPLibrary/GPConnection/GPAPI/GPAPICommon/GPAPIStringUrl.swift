//
//  GPAPIStringUrl.swift
//  Giphy
//
//  Created by Tirupati Balan on 10/06/19.
//  Copyright © 2019 Celerstudio. All rights reserved.
//

import Foundation

enum GPRequestMethod : Int {
    case RequestMethodGet = 1
    case RequestMethodPost = 2
    case RequestMethodPut = 3
    case RequestMethodDelete = 4
}

class GPAPIStringUrl {
    static let kSearchEndpoint = "/gifs/search?api_key=%@&q=%@&limit=%@&offset=%@"
    
    static func searchEndpoint(_ apiKey : String, query : String, limit : String, offset : String) -> String {
        return String(format: kSearchEndpoint, apiKey, query, limit, offset)
    }
}
