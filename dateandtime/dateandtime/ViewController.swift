//
//  ViewController.swift
//  dateandtime
//
//  Created by akash mac mini on 16/10/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var datepicker: UIDatePicker!
       
    @IBOutlet weak var lbl1: UILabel!
    @IBOutlet weak var lbl2: UILabel!
    @IBOutlet weak var lbl3: UILabel!
    @IBOutlet weak var lbl4: UILabel!
    @IBAction func datepickeraction(_ sender: Any)
    {
        let date = DateFormatter()
        
        date.dateStyle = DateFormatter.Style.short
        date.timeStyle = DateFormatter.Style.short
        
        let str = date.string(from: datepicker.date)
        
        lbl1.text = date.string(from: datepicker.date)
    }
    
    @IBAction func datepickeraction1(_ sender: Any)
    {
        let date = DateFormatter()
        
        date.dateStyle = DateFormatter.Style.medium
        date.timeStyle = DateFormatter.Style.medium
        
        let str = date.string(from: datepicker.date)
        
        lbl2.text = date.string(from: datepicker.date)
    }
    @IBAction func datepickeraction2(_ sender: Any)
    {
        let date = DateFormatter()
        
        date.dateStyle = DateFormatter.Style.long
        date.timeStyle = DateFormatter.Style.long
        
        let str = date.string(from: datepicker.date)
        
        lbl3.text = date.string(from: datepicker.date)
    }
    @IBAction func datepickeraction3(_ sender: Any)
    {
        let date = DateFormatter()
        
        date.dateStyle = DateFormatter.Style.full
        date.timeStyle = DateFormatter.Style.full
        
        let str = date.string(from: datepicker.date)
        
        lbl4.text = date.string(from: datepicker.date)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

