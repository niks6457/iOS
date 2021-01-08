//
//  ViewController.swift
//  RGB
//
//  Created by akash mac mini on 09/10/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var s1: UISlider!
    @IBOutlet weak var s2: UISlider!
    @IBOutlet weak var s3: UISlider!
    @IBAction func sa(_ sender: Any) {
        self.view.backgroundColor = UIColor(red:
        CGFloat(s1.value)/255, green:
        CGFloat(s2.value)/255, blue:
        CGFloat(s3.value)/255, alpha: 1)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

