//
//  ViewController.swift
//  TraficLight
//
//  Created by Алексей on 13.04.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var redLight: UIView!
    @IBOutlet var yellowLight: UIView!
    @IBOutlet var greenLight: UIView!
    @IBOutlet var startButtonLabel: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lighthsOff()
        redLight.layer.cornerRadius = 75
        yellowLight.layer.cornerRadius = 75
        greenLight.layer.cornerRadius = 75
    }

    @IBAction func buttonDidTapped() {
        startButtonLabel.setTitle(
            startButtonLabel.isHidden ? "START" : "NEXT", for: .normal
        )
        
        if redLight.alpha == 1 {
            yellowLight.alpha = 1
            redLight.alpha = 0.3
        } else if yellowLight.alpha == 1 {
            greenLight.alpha = 1
            yellowLight.alpha = 0.3
        } else {
            redLight.alpha = 1
            greenLight.alpha = 0.3
        }
    }
    
    private func lighthsOff () {
        redLight.alpha = 0.3
        yellowLight.alpha = 0.3
        greenLight.alpha = 0.3
        
    }
}
