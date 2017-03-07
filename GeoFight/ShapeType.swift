//
//  ShapeType.swift
//  GeoFight
//
//  Created by Michael Vilabrera on 3/7/17.
//  Copyright © 2017 Michael Vilabrera. All rights reserved.
//

import Foundation


enum ShapeType: Int {
    case box = 0
    case sphere
    case pyramid
    case capsule
    case cylinder
    case cone
    case tube
    
    static func random() -> ShapeType {
        let maxValue = tube.rawValue
        let rand = arc4random_uniform(UInt32(maxValue + 1))
        return ShapeType(rawValue: Int(rand))!
    }
}
