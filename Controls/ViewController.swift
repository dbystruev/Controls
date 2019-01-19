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
    @IBOutlet weak var `switch`: UISwitch!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var slider: UISlider!

    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    func updateUI() {
        button.setTitle("Нажато: \(count)", for: .normal)
        label.text = `switch`.isOn ? "Вкл" : "Выкл"
        
        view.backgroundColor = UIColor(
            hue: 0.5,
            saturation: 0.5,
            brightness: CGFloat(slider.value),
            alpha: 1
        )
    }

    @IBAction func buttonPressed() {
        count += 1
        
        if count % 2 == 0 {
            `switch`.isOn = !`switch`.isOn
        }
        
        updateUI()
    }
    
    @IBAction func switchToggled() {
        updateUI()
    }
    
    @IBAction func sliderMoved() {
        updateUI()
    }
}

