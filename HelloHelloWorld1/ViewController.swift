//
//  ViewController.swift
//  HelloHelloWorld1
//
//  Created by Кристина on 23.09.2023.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var greetingButton: UIButton!
    @IBOutlet weak var greetingLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        greetingLabel.isHidden = true
        greetingButton.layer.cornerRadius = 10
        greetingButton.setTitle("Show greeting", for: .normal)
 
    }


    @IBAction func greetingButtonPressed() {
       greetingLabel.isHidden.toggle()
    
//        if greetingLabel.isHidden {
 //           greetingButton.setTitle("Show greeting", for: .normal)
//        } else {
//            greetingButton.setTitle("Hide greeting", for: .normal)
//        }
        greetingButton.setTitle(greetingLabel.isHidden
                                ? "Show greeting"
                                : "Hide greeting",
                                for: .normal)
    }
}

