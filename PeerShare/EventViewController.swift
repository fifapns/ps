//
//  EventViewController.swift
//  PeerShare
//
//  Created by Peace's Toy on 10/16/2558 BE.
//  Copyright © 2558 Fifa'Operation. All rights reserved.
//

import UIKit

class EventViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
//        Circle2.layer.cornerRadius = Circle2
        
        var square_x = CGFloat(((375)-40)/3.0)
        var y = CGFloat(10)
        var y_start = CGFloat(119.0)
        var x_start = CGFloat(10.0)
        var count = 0
        
        for var i = count; i < 8; ++i,++count{
            
            var circle = UIView(frame: CGRectMake(x_start, y_start, square_x, square_x))
            var label = UILabel(frame: CGRectMake(x_start+18, y_start+110, 80, 21))
            circle.backgroundColor = UIColor.redColor()
            circle.layer.cornerRadius = square_x/2.0;
            
            self.view.addSubview(circle)
            
            x_start = (x_start + y + square_x)
            
            //label.center = CGPointMake(160, 284)
            label.textAlignment = NSTextAlignment.Center
            label.text = "I'am a test label"
            self.view.addSubview(label)
            
            
            
            if count == 2 {
                y_start = y_start+square_x+21+y
                x_start = CGFloat(10.0)
                count = 0
            }
            
            
            
        }

    }

    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    


}
