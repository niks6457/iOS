//
//  ViewController2.swift
//  pickerview5controller
//
//  Created by akash mac mini on 12/10/20.
//

import UIKit

class ViewController2: UIViewController {

    @IBOutlet weak var txt1: UITextField!
    @IBOutlet weak var txt2: UITextField!
    @IBOutlet weak var txt3: UITextField!
    @IBOutlet weak var txt4: UITextField!
    @IBOutlet weak var lbl1: UILabel!
    @IBAction func btn1(_ sender: Any)
    {
        txt1.isHidden = false
        txt2.isHidden = false
        if txt3.text == txt4.text
        {
            lbl1.text = "Sign Up Successful"
        }
        else
        {
            lbl1.text = "Try Again"
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
