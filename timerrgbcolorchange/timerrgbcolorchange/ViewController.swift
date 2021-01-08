//
//  ViewController.swift
//  timerrgbcolorchange
//
//  Created by akash mac mini on 29/10/20.
//

import UIKit

class ViewController: UIViewController {
     var time = 0
    var timer = Timer()
    @IBOutlet weak var rgbbtn: UIButton!
    @IBAction func rgbbtnact(_ sender: Any) {
        let red = CGFloat(drand48())
        let green = CGFloat(drand48())
        let blue = CGFloat(drand48())
        self.view.backgroundColor = UIColor(red: red,green:green, blue: blue, alpha: 1)
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(rgbbtnact(_:)), userInfo: nil, repeats: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        rgbbtnact((Any).self)
        // Do any additional setup after loading the view.
    }


}

