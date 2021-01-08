//
//  ViewController1.swift
//  pickerview5controller
//
//  Created by akash mac mini on 12/10/20.
//

import UIKit

class ViewController1: UIViewController {

    @IBOutlet weak var txt1: UITextField!
    @IBOutlet weak var txt2: UITextField!
    @IBOutlet weak var lbl1: UILabel!
    //@IBAction func btnconfirmalert (_ sender : UIButton )
    
    @IBAction func btn1(_ sender: UIButton)
    {
        let confirmalert = UIAlertController(title: "OK", message: "Login Successful", preferredStyle: .alert)
        
        
        if (txt1.text = nil) == (txt2.text = nil)
        {
            lbl1.isHidden = true
            let ok = UIAlertAction(title: "OK", style: .default)
            {
              (alert) in
          }
          let canceaction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
          
          confirmalert.addAction(ok)
          confirmalert.addAction(canceaction)
          
          self.present(confirmalert, animated: true, completion: nil)
        }
        else
        {
            lbl1.isHidden = false
            lbl1.text = "Username and Password Mismatch"
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        lbl1.isHidden = true
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
