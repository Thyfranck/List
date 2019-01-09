//
//  ViewController.swift
//  List
//
//  Created by Franck Tchouambou on 1/8/19.
//  Copyright © 2019 Franck. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
       
    
        
    }
    
    
    @IBOutlet weak var textField: UITextField!
    
    @IBAction func shouldAdd(_ sender: UIButton) {
        
       let text = textField.text ?? ""
        
        if !text.isEmpty {
        itemsController.add(text)
        
            textField.text = ""
        }
        
        let joined = itemsController.items.joined(separator: "\n")
        
        label.text = joined 
    
    
    }
    
    
    
    
    @IBOutlet weak var label: UILabel!
    

    
    @IBAction func shouldReset(_ sender: UIButton) {
        
        itemsController.resetItems()
        
        
        label.text = ""
    }
    
    
    let itemsController = ItemsController()

}

