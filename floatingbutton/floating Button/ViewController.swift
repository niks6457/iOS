//
//  ViewController.swift
//  floating Button
//
//  Created by akash mac mini on 03/11/20.
//

import UIKit
import Floaty
class ViewController: UIViewController{
   
    override func viewDidLoad() {
        super.viewDidLoad()
       let floaty = Floaty()
        
        floaty.addItem( "facebook", icon: UIImage(named: "fb")!)
        floaty.addItem("Instagram", icon: UIImage(named: "insta")!)
        floaty.addItem("Google", icon: UIImage(named: "google")!)
        floaty.addItem("LinkedIn", icon: UIImage(named: "ln")!)
        floaty.addItem("Whatsapp", icon: UIImage(named: "wp")!)
        self.view.addSubview(floaty)
        // Do any additional setup after loading the view.
    }


}

