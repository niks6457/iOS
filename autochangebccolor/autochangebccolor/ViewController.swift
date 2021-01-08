//
//  ViewController.swift
//  autochangebccolor
//
//  Created by akash mac mini on 28/10/20.
//

import UIKit

class ViewController: UIViewController {
    var time = 0
    var timer = Timer()
        override func viewDidLoad() {
            let redvalue = CGFloat(drand48())
            let greenvalue = CGFloat(drand48())
            let bluevalue = CGFloat(drand48())
            self.view.backgroundColor = UIColor(red: redvalue, green: greenvalue, blue: bluevalue, alpha: 1)
            timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(self.viewDidLoad), userInfo: nil, repeats: true)
            super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

