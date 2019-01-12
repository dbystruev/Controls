//
//  ViewController.swift
//  Controls
//
//  Created by Denis Bystruev on 12/01/2019.
//  Copyright © 2019 Denis Bystruev. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var count = 0
    
    @IBOutlet weak var button: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func buttonPressed() {
        count += 1
        button.setTitle("Нажато: \(count)", for: .normal)
    }
}

