//
//  ViewController.swift
//  TraficLight
//
//  Created by Armen Madoyan on 16.09.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var redColorView: UIView!
    @IBOutlet var yellowCollrView: UIView!
    @IBOutlet var greenColorView: UIView!
    @IBOutlet var startButton: UIButton!
    
    var tapped = true
    override func viewDidLoad() {
        super.viewDidLoad()
        redColorView.layer.cornerRadius = 85
        yellowCollrView.layer.cornerRadius = 85
        greenColorView.layer.cornerRadius = 85
        startButton.layer.cornerRadius = 15
    }
    
    @IBAction func startButtonTapped() {
        startButton.setTitle("NEXT", for: .normal)
       
        if tapped {
            tapped = false
            redColorView.alpha = 1
        } else if redColorView.alpha == 1{
            redColorView.alpha = 0.3
            yellowCollrView.alpha = 1
        } else if yellowCollrView.alpha == 1 {
            yellowCollrView.alpha = 0.3
            greenColorView.alpha = 1
        } else if greenColorView.alpha == 1 {
            greenColorView.alpha = 0.3
            redColorView.alpha = 1
        }
        
    }
}





