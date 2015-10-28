//
//  ViewController.swift
//  Ireland
//
//  Created by Peter Lafferty on 28/10/2015.
//  Copyright © 2015 Peter Lafferty. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

        automaticallyAdjustsScrollViewInsets = false

        if let toolbarHeight = self.navigationController?.toolbar.frame.height {
            scrollView.contentInset.top = toolbarHeight
        } else {
            scrollView.contentInset.top = UIApplication.sharedApplication().statusBarFrame.height
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

