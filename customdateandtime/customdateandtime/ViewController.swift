//
//  ViewController.swift
//  customdateandtime
//
//  Created by akash mac mini on 16/10/20.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var datepicker: UIDatePicker!
    @IBOutlet weak var lbl1: UILabel!
    @IBOutlet weak var lbl2: UILabel!
    @IBOutlet weak var lbl3: UILabel!
    @IBAction func datepickeraction1(_ sender: Any)
    {
        let date = DateFormatter()
        date.dateFormat = "dd/MM/yyyy hh:mm a"
        let str = date.string(from: datepicker.date)
        lbl1.text = date.string(from: datepicker.date)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let mydate = Date()
        let mycalender = Calendar.current
        
        //time
        let hour = String(mycalender.component(.hour, from: mydate))
        let min = String(mycalender.component(.minute, from: mydate))
        let sec = String(mycalender.component(.second, from: mydate))
        let nanosec = String(mycalender.component(.nanosecond, from: mydate))
        //date
        let today = String(mycalender.component(.day, from: mydate))
        let month = String(mycalender.component(.month, from: mydate))
        let years = String(mycalender.component(.year, from: mydate))
        
        lbl2.text = hour + ":" + min + ":" + sec + ":" + nanosec
        lbl3.text = today + "/" + month + "/" + years
        // Do any additional setup after loading the view.
    }


}

