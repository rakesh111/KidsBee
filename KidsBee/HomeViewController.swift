//
//  HomeViewController.swift
//  KidsBee
//
//  Created by Rakesh on 20/10/16.
//  Copyright © 2016 sinergia. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    
    var fruits:NSMutableArray = ["Apple","Orange","Pine Apple"]
    @IBOutlet var myTableView: UITableView!
    override func viewDidLoad() {
        
        
        
        self.myTableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "cell")
        
        myTableView.delegate = self
        myTableView.dataSource = self
        super.viewDidLoad()
        
        self.navigationController?.navigationBarHidden = false

        // Do any additional setup after loading the view.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return fruits.count
    }
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
//        var cell:UITableViewCell = self.myTableView.dequeueReusableCellWithIdentifier("cell")! as! HomeTableViewCell
//        
//        cell.textLabel?.text = self.fruits[indexPath.row] as! String
//        
        //        return celllet identifier = "Custom"
        
        let identifier = "cell"
        
        var cell: HomeTableViewCell! = tableView.dequeueReusableCellWithIdentifier(identifier) as? HomeTableViewCell
        
        if cell == nil {
            tableView.registerNib(UINib(nibName: "HomeTableViewCell", bundle: nil), forCellReuseIdentifier: identifier)
            cell = myTableView.dequeueReusableCellWithIdentifier(identifier) as? HomeTableViewCell
            cell.imageLBL.text = "Hello"
            
        }
       
        
        return cell

        
    }
    
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        if (indexPath.row == 0){
            
            self.navigationController?.pushViewController(FirstViewController(), animated: true)
            
            
        }
        
        else if(indexPath.row == 1){
            
            
            
            self.navigationController?.pushViewController(SecondViewController(), animated: true)
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
