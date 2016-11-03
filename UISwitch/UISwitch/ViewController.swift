//
//  ViewController.swift
//  UISwitch
//
//  Created by Paris on 11/3/16.
//  Copyright © 2016 domisu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var swhOnOff: UISwitch!
    @IBOutlet weak var lblOnOff: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        swhOnOff.setOn(false, animated: true)
        lblOnOff.text = "Off"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onoff(_ sender: Any) {
        if (swhOnOff.isOn){
            lblOnOff.text = "On"
            self.view.backgroundColor = UIColor.green
        }else{
            lblOnOff.text = "Off"
            self.view.backgroundColor = UIColor.white
        }
    }

}

