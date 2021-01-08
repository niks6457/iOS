//
//  ViewController.swift
//  timeandinterval
//
//  Created by akash mac mini on 19/10/20.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var lbl1: UILabel!
    var time = 0
    var timer = Timer()
    
    @IBAction func btm1(_ sender: Any)
    {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(self.myaction),userInfo: nil, repeats: true)
    }
    
    @objc func myaction()
    {
        time += 1
        lbl1.text = String(time)
    }
    @IBAction func btn2(_ sender: Any)
    {
        timer.invalidate()
    }
    @IBAction func btn3(_ sender: Any)
    {
        timer.invalidate()
        time = 0
        lbl1.text = ("0")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

