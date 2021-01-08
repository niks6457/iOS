//
//  ViewController4.swift
//  pickerview5controller
//
//  Created by akash mac mini on 12/10/20.
//

import UIKit

class ViewController4: UIViewController {

    @IBOutlet weak var txt1: UITextField!
    @IBOutlet weak var txt2: UITextField!
    @IBOutlet weak var txt3: UITextField!
    @IBOutlet weak var lbl1: UILabel!
    @IBOutlet weak var lbl2: UILabel!
    
    
    var d = 0
    @IBAction func btn1(_ sender: Any)
    {
        var a = Int(txt1.text!)
        var b = Int(txt2.text!)
        var c = Int(txt3.text!)
        d = a! + b! + c!
        lbl1.text = String(d)
    }
    @IBAction func btn2(_ sender: Any)
    {
        var e = d / 3
        lbl2.text = String(e)
        if e <= 33
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
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
