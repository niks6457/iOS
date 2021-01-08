//
//  ViewController.swift
//  task
//
//  Created by akash mac mini on 19/10/20.
//

import UIKit

class ViewController: UIViewController {
   @IBOutlet weak var otplbl: UILabel!
    @IBOutlet weak var resetbtm: UIButton!
    var time = 30
    var timer = Timer()
       @objc func action()
    {   time -= 1
        otplbl.text = String(time)
        if time == 0
        {    resetbtm.isHidden = false
            timer.invalidate()
            time = 30
        }
    }
    @IBAction func startbtn(_ sender: Any)
    {        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(Self.action), userInfo: nil, repeats: true)
    }
    @IBAction func resetbtn(_ sender: Any)
    {        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(Self.action), userInfo: nil, repeats: true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

