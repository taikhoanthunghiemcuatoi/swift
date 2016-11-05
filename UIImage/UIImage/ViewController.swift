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
    let sampleImageURL = "http://www.apple.com/euro/ios/ios8/a/generic/images/og.png"
    
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
                //downloadImageSync(url: url, imageView: imgResult)
                //downloadImage(url: url, imageView: imgResult)
                imgResult.downloadedFrom(url:url)
            }
        }
    }

    @IBAction func loadSpiderMan(_ sender: Any) {
        imgResult.image = loadImage(imageName: "spiderman-wallpaper")
    }
    
    @IBAction func loadHulk(_ sender: Any) {
        imgResult.image = loadImage(imageName: "5.jpg")
    }
    
    func loadImage(imageName: String) -> UIImage?{
        if let image = UIImage(named: imageName){
            return image
        }else{
            print("invalid image")
        }
        return nil
    }
    
    func downloadImageSync(url: URL, imageView: UIImageView){
        let imageData = try? Data(contentsOf: url)
        imageView.image = UIImage(data: imageData!)
    }
    
    func getDataFromUrl(url: URL, completion: @escaping (_ data: Data?, _  response: URLResponse?, _ error: Error?) -> Void) {
        URLSession.shared.dataTask(with: url) {
            (data, response, error) in
            completion(data, response, error)
            }.resume()
    }
    
    func downloadImage(url: URL, imageView: UIImageView) {
        print("Download Started")
        getDataFromUrl(url: url) { (data, response, error)  in
            guard let data = data, error == nil else { return }
            print(response?.suggestedFilename ?? url.lastPathComponent)
            print("Download Finished")
            DispatchQueue.main.async() { () -> Void in
                imageView.image = UIImage(data: data)
            }
        }
    }

}

extension UIImageView {
    func downloadedFrom(url: URL, contentMode mode: UIViewContentMode = .scaleAspectFit) {
        print("calling downloadedFrom")
        contentMode = mode
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            guard
                let httpURLResponse = response as? HTTPURLResponse, httpURLResponse.statusCode == 200,
                let mimeType = response?.mimeType, mimeType.hasPrefix("image"),
                let data = data, error == nil,
                let image = UIImage(data: data)
                else { return }
            DispatchQueue.main.async() { () -> Void in
                self.image = image
            }
            }.resume()
    }
    func downloadedFrom(link: String, contentMode mode: UIViewContentMode = .scaleAspectFit) {
        guard let url = URL(string: link) else { return }
        downloadedFrom(url: url, contentMode: mode)
    }
}

