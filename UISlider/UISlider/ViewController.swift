//
//  ViewController.swift
//  UISlider
//
//  Created by Paris on 11/4/16.
//  Copyright © 2016 domisu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var sldNumbers: UISlider!
    @IBOutlet weak var lblValue: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        sldNumbers.minimumValue = 0
        sldNumbers.maximumValue = 100
        lblValue.text = String(convertFloat2Int(value: sldNumbers.value))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func selectNumber(_ sender: Any) {
        let value = sldNumbers.value
        print(value)
        lblValue.text = String(convertFloat2Int(value: value))
    }
    
    func convertFloat2Int(value: Float) -> Int{
        return Int(value)
    }
    
    //this function will generate a number in range: min..(max-1)
    func genRandom() -> Int{
        let min: UInt32 = 5
        let max: UInt32 = 11
        let delta :UInt32 = max-min
        let n = min + arc4random()%(delta)
        return Int(n)
    }
}

