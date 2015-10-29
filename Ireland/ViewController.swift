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
        
        print(scrollView.frame.width)

        automaticallyAdjustsScrollViewInsets = false

        if self.navigationController?.toolbar.frame.height == nil {
            if UIApplication.sharedApplication().statusBarHidden == false {
                scrollView.contentInset.top = UIApplication.sharedApplication().statusBarFrame.height
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func viewWillTransitionToSize(size: CGSize, withTransitionCoordinator coordinator: UIViewControllerTransitionCoordinator) {
        print("viewWillTransitionToSize")
        if UIDevice.currentDevice().orientation.isLandscape.boolValue {
            print("landscape")
        } else {
            print("portraight")
        }
        
        super.viewWillTransitionToSize(size, withTransitionCoordinator: coordinator)
    }
/*
    override func willTransitionToTraitCollection(newCollection: UITraitCollection, withTransitionCoordinator coordinator: UIViewControllerTransitionCoordinator) {

        if newCollection.verticalSizeClass == .Compact {
            scrollView.contentInset.top = 0
        } else {
            scrollView.contentInset.top = UIApplication.sharedApplication().statusBarFrame.height
            print(UIApplication.sharedApplication().statusBarFrame.height)
        }
        
        super.willTransitionToTraitCollection(newCollection, withTransitionCoordinator: coordinator)
    }
  */

    override func traitCollectionDidChange(previousTraitCollection: UITraitCollection?) {
        super.traitCollectionDidChange(previousTraitCollection)

        
        if traitCollection.verticalSizeClass == .Compact {
            scrollView.contentInset.top = 0
        } else {
            scrollView.contentInset.top = UIApplication.sharedApplication().statusBarFrame.height
            //scrollView.contentOffset.y = -scrollView.contentInset.top
        }
    }

}

