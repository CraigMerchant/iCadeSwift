//
//  ViewController.swift
//  iCadeSwiftExample
//
//  Created by Craig Merchant on 25/01/2016.
//  Copyright © 2016 Craig Merchant. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override var keyCommands: [UIKeyCommand]? {
        return iCade.keyCommands(action: "keyPress:")
    }
    
    func keyPress(sender: UIKeyCommand) {
        
        if let key = iCadeKeys(rawValue: sender.input) {
            
            switch key {
            case .Up:
                print("Up")
            case .Down:
                print("Down")
            case .Left:
                print("left")
            case .Right:
                print("right")
            case .ButtonA:
                print("A")
            case .ButtonB:
                print("B")
            case .ButtonC:
                print("C")
            case .ButtonD:
                print("D")
            }
        }
    }

}

