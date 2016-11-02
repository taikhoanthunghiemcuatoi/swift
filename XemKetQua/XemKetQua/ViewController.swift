//
//  ViewController.swift
//  XemKetQua
//
//  Created by Paris on 11/2/16.
//  Copyright © 2016 domisu. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var txtDiem: UITextField!
    @IBOutlet weak var lblKetQua: UILabel!
    @IBOutlet weak var btnXemKetQua: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        btnXemKetQua.isEnabled = false
        txtDiem.delegate = self
        lblKetQua.backgroundColor = UIColor.clear
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func xemKetQua(_ sender: Any) {
        let diem = Float(txtDiem.text!)
        if (diem! >= 5){
            lblKetQua.text = "Ket qua: Dau roi!"
            lblKetQua.backgroundColor = UIColor.cyan
        }else{
            lblKetQua.text = "Ket qua: Tieu roi Luom oi!"
            lblKetQua.backgroundColor = UIColor.red
        }
    }
    
    //Ref: http://stackoverflow.com/questions/26919854/how-can-i-declare-that-a-text-field-can-only-contain-an-integer
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        let text = textField.text
        print("text: " + text!)
        if (Float(text!) != nil){
            btnXemKetQua.isEnabled = true
        }else{
            btnXemKetQua.isEnabled = false;
        }
        return true
    }

}

