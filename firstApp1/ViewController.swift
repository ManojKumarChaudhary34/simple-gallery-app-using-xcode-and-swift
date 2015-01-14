//
//  ViewController.swift
//  firstApp1
//
//  Created by Whyte, Damian on 09/01/2015.
//  Copyright (c) 2015 Whyte, Damian. All rights reserved.
//

import UIKit

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var background: UIView!
    @IBOutlet weak var imageView: UIImageView!
    
    //tracks our image
    var imageNumber: NSInteger!
    
    let images: [String] = ["cone", "bomb", "world"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.imageNumber = 0;
        self.imageView.image = UIImage(named: images[imageNumber])
    
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    @IBAction func actionButton(sender: UIButton) {
 
        if(imageNumber < (images.count - 1)) {
            imageNumber = imageNumber + 1
        } else {
            imageNumber = 0;
        }
        
        self.imageView.image = UIImage(named: images[imageNumber])
        
    }
}

