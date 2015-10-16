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
        var count = 1
        
        for var i = count; i <= 8; ++i,++count{
            
            var circleBtn = UIButton(frame: CGRectMake(x_start, y_start, square_x, square_x))
            var label = UILabel(frame: CGRectMake(x_start+18, y_start+110, 80, 21))
            circleBtn.backgroundColor = UIColor.redColor()
            circleBtn.layer.cornerRadius = square_x/2.0;
            circleBtn.tag = i
            circleBtn.addTarget(self, action: "buttonClicked:", forControlEvents: UIControlEvents.TouchUpInside)
            
            self.view.addSubview(circleBtn)
            
            x_start = (x_start + y + square_x)
            
            //label.center = CGPointMake(160, 284)
            label.textAlignment = NSTextAlignment.Center
            label.text = "I'am a test label"
            self.view.addSubview(label)
            
            if count % 3 == 0{
                y_start = y_start+square_x+21
                x_start = CGFloat(10.0)
                //count = 0
            }
            
        }

    }
    
    func buttonClicked(a:UIButton) -> Void
    {
        print("Button \(a.tag) was clicked!")
        
        var vc = self.storyboard?.instantiateViewControllerWithIdentifier("groupdetailviewcontroller").childViewControllers.first as! GroupDetailViewController
        vc.groupTitle = "TEST"
        vc.groupMemberNumber = "4"
        
        
        self.navigationController?.pushViewController(vc, animated: true)
        
    }

    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    


}
