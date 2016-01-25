//
//  iCade.swift
//  iCadeSwift
//
//  Created by Craig Merchant on 25/01/2016.
//  Copyright © 2016 Craig Merchant. All rights reserved.
//

import UIKit

enum iCadeKeys: String {
    case Up = "a", Down = "d", Left = "z", Right = "e", ButtonA = "y", ButtonB = "h", ButtonC = "u", ButtonD = "j"
    
    static let allValues = [Up,Down,Left,Right,ButtonA,ButtonB,ButtonC,ButtonD]
}

class iCade: NSObject {
    class func keyCommands(action action: Selector) -> [UIKeyCommand]? {
        
        var keyCommands: [UIKeyCommand] = []
        
        for key in iCadeKeys.allValues {
            keyCommands.append(UIKeyCommand(input: key.rawValue, modifierFlags: [], action: action))
        }
        
        return keyCommands
    }
}
