//
//  ViewController.swift
//  FoodOrder
//
//  Created by Paris on 11/3/16.
//  Copyright © 2016 domisu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var swhMon1: UISwitch!
    @IBOutlet weak var swhMon2: UISwitch!
    @IBOutlet weak var swhMon3: UISwitch!
    @IBOutlet weak var swhMon4: UISwitch!
    @IBOutlet weak var swhMon5: UISwitch!
    
    @IBOutlet weak var lblMon1: UILabel!
    @IBOutlet weak var lblMon2: UILabel!
    @IBOutlet weak var lblMon3: UILabel!
    @IBOutlet weak var lblMon4: UILabel!
    @IBOutlet weak var lblMon5: UILabel!
    
    @IBOutlet weak var tvwFoodOrder: UITextView!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tvwFoodOrder.text = "---ordered foods---\n"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func orderFood(_ sender: Any) {
        tvwFoodOrder.text = "---ordered foods---\n"
        
        if (swhMon1.isOn){
            tvwFoodOrder.text = tvwFoodOrder.text + lblMon1.text! + "\n"
        }
        
        if (swhMon2.isOn){
            tvwFoodOrder.text = tvwFoodOrder.text + lblMon2.text! + "\n"
        }
        
        if (swhMon3.isOn){
            tvwFoodOrder.text = tvwFoodOrder.text + lblMon3.text! + "\n"
        }
        
        if (swhMon4.isOn){
            tvwFoodOrder.text = tvwFoodOrder.text + lblMon4.text! + "\n"
        }
        
        if (swhMon5.isOn){
            tvwFoodOrder.text = tvwFoodOrder.text + lblMon5.text! + "\n"
        }
    }

}

