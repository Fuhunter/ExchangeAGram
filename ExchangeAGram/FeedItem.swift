//
//  FeedItem.swift
//  ExchangeAGram
//
//  Created by Niclas Günther on 26.11.14.
//  Copyright (c) 2014 Niclas Günther. All rights reserved.
//

import Foundation
import CoreData

@objc(FeedItem)
class FeedItem: NSManagedObject {

    @NSManaged var caption: String
    @NSManaged var image: NSData
    @NSManaged var latitude: NSNumber
    @NSManaged var longitude: NSNumber
    @NSManaged var thumbNail: NSData
    @NSManaged var uniqueID: String
    @NSManaged var filtered: NSNumber

}
