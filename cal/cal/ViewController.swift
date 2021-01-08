//
//  ViewController.swift
//  cal
//
//  Created by akash mac mini on 09/10/20.
//

import UIKit
class ViewController: UIViewController {
    @IBOutlet weak var t1: UITextField!
    @IBOutlet weak var t2: UITextField!
    @IBOutlet weak var l1: UILabel!
    @IBAction func p1(_ sender: Any) {
        var a = Int(t1.text!)
        var b = Int(t2.text!)
        var c = a! + b!
        l1.text = String(c)
    }
    @IBAction func p2(_ sender: Any) {
        var a = Int(t1.text!)
        var b = Int(t2.text!)
        var d = a! - b!
        l1.text = String(d)
    }
    @IBAction func p3(_ sender: Any) {
        var a = Int(t1.text!)
        var b = Int(t2.text!)
        var e = a! * b!
        l1.text = String(e)
    }
    @IBAction func p4(_ sender: Any) {
        var a = Int(t1.text!)
        var b = Int(t2.text!)
        var f = a! / b!
        l1.text = String(f)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

