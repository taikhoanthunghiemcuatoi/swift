//
//  ViewController.swift
//  UIImage
//
//  Created by Paris on 11/4/16.
//  Copyright © 2016 domisu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtURL: UITextField!
    @IBOutlet weak var imgResult: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func loadImageURL(_ sender: Any) {
        //http://stackoverflow.com/questions/24231680/loading-downloading-image-from-url-on-swift
        if let text = txtURL.text{
            if let url = URL(string: text){
                let imageData = try? Data(contentsOf: url)
                imgResult.image = UIImage(data: imageData!)
            }
        }
    }

    @IBAction func loadSpiderMan(_ sender: Any) {
        imgResult.image = UIImage(named: "spiderman-wallpaper")
    }
    
    @IBAction func loadHulk(_ sender: Any) {
        imgResult.image = UIImage(named: "5.jpg")
    }
}

