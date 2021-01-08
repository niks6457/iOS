//
//  ViewController.swift
//  slider
//
//  Created by akash mac mini on 09/10/20.
//

import UIKit

class ViewController: UIViewController {

  
    @IBOutlet weak var l1: UILabel!
    @IBOutlet weak var s1: UISlider!
    @IBAction func sA1(_ sender: Any)
    
    {
        l1.text = String (Int(s1.value))
        if s1.value == 50
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

