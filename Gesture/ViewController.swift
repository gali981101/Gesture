//
//  ViewController.swift
//  Gesture
//
//  Created by Terry Jason on 2023/7/17.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var myLabel: UILabel!
    
    var toggleImage = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView.isUserInteractionEnabled = true
        
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(changePic))
        
        imageView.addGestureRecognizer(gestureRecognizer)
    }

    @objc func changePic() {
        if toggleImage {
            change(imageName: "gta5", labelText: "GTA V")
        } else {
            change(imageName: "gta4", labelText: "GTA IV")
        }
    }
    
    func change(imageName: String, labelText: String) {
        imageView.image = UIImage(named: imageName)
        myLabel.text = labelText
        toggleImage.toggle()
    }
    
}

