//
//  ViewController.swift
//  EK-swift-AsyncImageLoader
//
//  Created by Emre Koc on 5.06.2014.
//  Copyright (c) 2014 Emre Koc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
                            
    override func viewDidLoad() {
        
        var imageView:UIImageView!=UIImageView(frame: CGRectMake(0, (self.view.frame.size.height-200)/2, 320, 200))
        self.view.addSubview(imageView)
        imageView.setImageFromUrl("https://fbcdn-sphotos-b-a.akamaihd.net/hphotos-ak-xpa1/t1.0-9/166092_10152363379231808_1927984822_n.jpg")
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

