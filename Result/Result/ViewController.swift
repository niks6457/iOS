//
//  ViewController.swift
//  Result
//
//  Created by akash mac mini on 08/10/20.
//  Copyright © 2020 AkashTechnolabs. All rights reserved.
//

import UIKit
class ViewController: UIViewController {
    var g = 0
    @IBOutlet weak var t2: UITextField!
    @IBOutlet weak var t1: UITextField!
    @IBOutlet weak var t3: UITextField!
    @IBOutlet weak var t4: UITextField!
    @IBOutlet weak var t5: UITextField!
    @IBOutlet weak var t6: UITextField!
    @IBOutlet weak var l1: UILabel!
    @IBOutlet weak var l2: UILabel!
    @IBAction func b1(_ sender: Any)
    {
        var a = Int(t1.text!)
        var b = Int(t2.text!)
        var c = Int(t3.text!)
        var d = Int(t4.text!)
        var e = Int(t5.text!)
        var f = Int(t6.text!)
    
         g = a! + b! + c! + d! + e! + f!
        l1.text = String(g)
    }
    @IBAction func b2(_ sender: Any)
    {
        var h = g / 6
        l2.text = String(h)
        if h <= 33
        {
            self.view.backgroundColor = UIColor.red
        }
        else
        {
            self.view.backgroundColor = UIColor.green
        }

    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

