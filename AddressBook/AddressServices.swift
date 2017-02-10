//
//  AddressServices.swift
//  AddressBook
//
//  Created by Apple on 2/9/17.
//  Copyright © 2017 Apple Inc. All rights reserved.
//

import Foundation

class AddressServices {
    var people :[Contact] {
        return [Contact(name: "as", address: "sss", phoneNumber: "1111"), Contact(name: "The", address: "VanCon", phoneNumber: "123233323") ]
    }
}
struct  Contact{
    var name: String = ""
    var address: String = ""
    var phoneNumber: String = ""
}
