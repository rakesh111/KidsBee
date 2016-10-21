//
//  FirstViewController.swift
//  KidsBee
//
//  Created by Rakesh on 20/10/16.
//  Copyright © 2016 sinergia. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet var webView: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //let url = NSURL(string: "www.google.com")
        //let requestObj = NSURLRequest(URL: url!)
        let url = NSURL (string: "www.sourcefreeze.com");
        let requestObj = NSURLRequest(URL: url!);
        webView.loadRequest(requestObj);
        view.addSubview(webView)
        
                // Do any additional setup after loading the view.
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
