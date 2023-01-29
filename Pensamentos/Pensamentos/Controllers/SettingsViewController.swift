//
//  SettingsViewController.swift
//  Pensamentos
//
//  Created by Vinicius Loss on 29/01/23.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var swAutorefresh: UISwitch!
    @IBOutlet weak var slTimeInterval: UISlider!
    @IBOutlet weak var scColorScheme: UISegmentedControl!
    @IBOutlet weak var lbTimeInterval: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func chageAutorefresh(_ sender: UISwitch) {
    }
    
    @IBAction func changeTimeInterval(_ sender: UISlider) {
    }
    
    
    @IBAction func changeColorscheme(_ sender: UISegmentedControl) {
    }
}
