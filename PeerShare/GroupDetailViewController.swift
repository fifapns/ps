//
//  GroupDetailViewController.swift
//  PeerShare
//
//  Created by Peace's Toy on 10/16/2558 BE.
//  Copyright © 2558 Fifa'Operation. All rights reserved.
//

import UIKit

class GroupDetailViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    var groupTitle:String = ""
    var groupMemberNumber:String = ""
    
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var GroupImg: UIView!
    @IBOutlet weak var memberNumber: UILabel!

    @IBOutlet weak var kPrice: UILabel!
   
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationItem.title = groupTitle
        GroupImg.layer.cornerRadius = 125/2.0
        
        tableView.delegate = self
        tableView.dataSource = self
        
        memberNumber.text = groupMemberNumber
        
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 6
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell") as UITableViewCell!
        
        cell.textLabel?.text = "PEACE"
        
        cell.imageView?.image = UIImage(named: "testimage")
        cell.imageView?.layer.cornerRadius = CGFloat((cell.imageView?.frame.width)!/2.0)
        cell.imageView?.clipsToBounds = true
        //cell.imageView?.layer.cornerRadius = cell.imageView!.frame.width/2.0
        //cell.imageView?.clipsToBounds = true
        
        
        cell.detailTextLabel?.text = "100"
       
        
    
        
        return cell!
    }

}
