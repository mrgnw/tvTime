//
//  ServiceProvider.swift
//  tvTimeShelf
//
//  Created by Morgan Williams on 7/24/16.
//  Copyright © 2016 Morgan. All rights reserved.
//

import Foundation
import TVServices

class ServiceProvider: NSObject, TVTopShelfProvider {

    override init() {
        super.init()
    }

    // MARK: - TVTopShelfProvider protocol

    var topShelfStyle: TVTopShelfContentStyle {
        // Return desired Top Shelf style.
        return .inset
    }

    var topShelfItems: [TVContentItem] {
        // Create an array of TVContentItems.
        let breakingNewsIdentifier = TVContentIdentifier(identifier: "Breaking News", container: nil)!
        let breakingNewsSection = TVContentItem(contentIdentifier: breakingNewsIdentifier)
        breakingNewsSection?.title = "Breaking News"
        
        let martianRiotIdentifier = TVContentIdentifier(identifier:"Martians Riot", container: nil)!
        let martianRiotItem = TVContentItem(contentIdentifier: martianRiotIdentifier)
        
        breakingNewsSection?.topShelfItems = [(martianRiotItem)!]
        
        return [breakingNewsSection!]
    }

}

