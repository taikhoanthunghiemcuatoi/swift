//
//  ViewController.swift
//  XemKetQua
//
//  Created by Paris on 11/2/16.
//  Copyright © 2016 domisu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtDiem: UITextField!
    @IBOutlet weak var lblKetQua: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func xemKetQua(_ sender: Any) {
        let diem = Float(txtDiem.text!)
        if (diem! >= 5){
            lblKetQua.text = "Ket qua: Dau roi!"
        }else{
            lblKetQua.text = "Ket qua: Tieu roi Luom oi!"
        }
    }

}

