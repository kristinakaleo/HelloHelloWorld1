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
        greetingButton.configuration = setupButton(with: "Show greeting")
        
 
    }


    @IBAction func greetingButtonPressed() {
        greetingLabel.isHidden.toggle()
        
        greetingButton.configuration = setupButton(with: greetingLabel.isHidden ? "Show greeting" : "Hide Greeting ")

    }
    
    private func setupButton(with title: String) -> UIButton.Configuration {
        var buttonConfiguration = UIButton.Configuration.filled()
        buttonConfiguration.baseBackgroundColor = #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1)
        buttonConfiguration.title = title
        buttonConfiguration.buttonSize = .large
        buttonConfiguration.cornerStyle = .large
        buttonConfiguration.attributedTitle?.font = UIFont.systemFont(ofSize: 24)
        return buttonConfiguration
        
    }
}

