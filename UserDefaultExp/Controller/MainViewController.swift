//  ViewController.swift
//  UserDefaultExp
//  Created by Muhammad Abdullah Al Mamun on 18/12/19.
//  Copyright © 2019 Muhammad Abdullah Al Mamun. All rights reserved.

import UIKit

class MainViewController: UIViewController {
    
    @IBOutlet weak var lbl: UILabel!
    
    @IBOutlet weak var switchbtn: UISwitch!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        if let userdefault = UserDefaults.standard.getValueofSwitch(),userdefault{
            //print(userdefault)
            switchbtn.setOn(true, animated: true)
            lbl.text = "True"
        }
        else{
            switchbtn.setOn(false, animated: true)
            lbl.text = "False"
        }
        
        
    }
    
    
    
    @IBAction func switchAction(_ sender: UISwitch) {
        
        if sender.isOn{
            UserDefaults.standard.setValueForSwitch(value: true)
            switchbtn.setOn(true, animated: true)
            lbl.text = "True"
        }
        else
        {
            UserDefaults.standard.setValueForSwitch(value: false)
            switchbtn.setOn(false, animated: true)
            lbl.text = "False"
        }
    }
    
    
}
