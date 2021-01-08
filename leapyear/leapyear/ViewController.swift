//
//  ViewController.swift
//  leapyear
//
//  Created by akash mac mini on 09/10/20.
//

import UIKit

class ViewController: UIViewController {

  
    @IBOutlet weak var t1: UITextField!
    @IBOutlet weak var l1: UILabel!
    @IBAction func b1(_ sender: Any) {
        
        var a = Int(t1.text!)
        
        if a! % 4 == 0
        {
            l1.text = "leap year"
        }
        else
        {
            l1.text = "not leap year"
            
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

