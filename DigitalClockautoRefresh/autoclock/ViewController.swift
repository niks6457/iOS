//
//  ViewController.swift
//  autoclock
//
//  Created by akash mac mini on 19/10/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var clocklbl: UILabel!
    var time = 0
    var timer = Timer()
    @objc func action()
    {
       let date = Date()
       let calender = Calendar.current
       let hour = String(calender.component(.hour, from: date))
       let min = String(calender.component(.minute, from: date))
       let sec = String(calender.component(.second, from: date))
       clocklbl.text = hour + ":" + min + ":" + sec
    }
    override func viewDidLoad() {
       /* let date = Date()
        let calender = Calendar.current
        let hour = String(calender.component(.hour, from: date))
        let min = String(calender.component(.minute, from: date))
        let sec = String(calender.component(.second, from: date))
        clocklbl.text = hour + ":" + min + ":" + sec*/
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector:#selector(self.action),userInfo: nil, repeats: true)
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

