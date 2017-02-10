//
//  RoundedCornerButton.swift
//  AddressBook
//
//  Created by Hoang on 2/10/17.
//  Copyright © 2017 Apple Inc. All rights reserved.
//

import UIKit

@IBDesignable
class RoundedCornerButton: UIButton {
    @IBInspectable var roundedborderColor: UIColor! {
        didSet {
            self.layer.borderColor = roundedborderColor.cgColor
        }
    }
}

