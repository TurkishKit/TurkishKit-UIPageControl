//
//  ViewController.swift
//  TurkishKit-UIPageControl
//
//  Created by Berk Turan on 25.03.2019.
//  Copyright © 2019 Berk Turan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var myLabel: UILabel!
    @IBAction func changePage(_ sender: UIPageControl) {
        
        myLabel.text = "Current Page : \(sender.currentPage + 1)"
        
        switch sender.currentPage {
        case 0:
            self.view.backgroundColor = UIColor.blue
        case 1:
            self.view.backgroundColor = UIColor.gray
        case 2:
            self.view.backgroundColor = UIColor.orange
        default:
            self.view.backgroundColor = UIColor.brown
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        pageControl.numberOfPages = 4
        pageControl.pageIndicatorTintColor = UIColor.yellow
        pageControl.currentPageIndicatorTintColor = UIColor.blue
        pageControl.addTarget(self, action: #selector(changePage(_:)), for: .allTouchEvents)
    }
    
    

}

