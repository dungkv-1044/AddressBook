//
//  ViewController.swift
//  AddressBook
//
//  Created by Khuất Dũng on 2/9/17.
//  Copyright © 2017 Apple Inc. All rights reserved.
//

import UIKit
import  os.log
class ViewController: UIViewController,UITextFieldDelegate {
    var contact: Contact?
    
    @IBOutlet weak var nameLabel: UITextField!
    @IBOutlet weak var phoneLabel: UITextField!

    @IBOutlet weak var saveButton: UIBarButtonItem!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let button = sender as? UIBarButtonItem, button === saveButton else {
            os_log("Save button is not press", log: OSLog.default, type: .debug)
            return
        }
        let name = nameLabel.text ?? ""
        let phone = phoneLabel.text ?? ""
        contact = Contact(name: name,address: "", phone: phone)
    }
    //MARK: Action
    @IBAction func cancel(_ sender: UIBarButtonItem) {
        dismiss(animated: true, completion: nil)
    }
    
}

