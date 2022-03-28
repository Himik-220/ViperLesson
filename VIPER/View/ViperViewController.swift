//
//  ViewController.swift
//  VIPER
//
//  Created by Leonid Shchipkov on 21.03.2022.
//

import UIKit

class ViperViewController: UIViewController {
    
    @IBOutlet weak var textLabel: UILabel!
    var output: ViperViewOutput!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func didPressedAction(_ sender: UIButton) {
        output.didPressedAction()
    }
    
}

extension ViperViewController: ViperViewInput{
    func showFormattedString(_ string: String) {
        textLabel.text = string
    }
    
}
