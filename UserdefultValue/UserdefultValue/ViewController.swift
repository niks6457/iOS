//
//  ViewController.swift
//  UserdefultValue
//
//  Created by AkashSir.com on 04/12/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var pass: UITextField!
    @IBOutlet weak var signbtnact: UIButton!
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       
    }
    @IBAction func loginact(_ sender: Any)
    {
        let MyHomePage = storyboard?.instantiateViewController(withIdentifier: "loginViewController") as! loginViewController
        self.navigationController?.pushViewController(MyHomePage, animated: true)
    }
    @IBAction func signupAct(_ sender: Any)
    {
        if name.text?.count == 0
        {
        
            let alertController = UIAlertController(title: "Alert", message: "Please Enter Name", preferredStyle: UIAlertController.Style.alert)
            alertController.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            self.present(alertController, animated: true, completion: nil)
        }
        else if email.text?.count == 0
        {
            let alertController = UIAlertController(title: "Alert", message: "Please Enter Email", preferredStyle: UIAlertController.Style.alert)
            alertController.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            self.present(alertController, animated: true, completion: nil)
        }
        else if pass.text?.count == 0
        {
            let alertController = UIAlertController(title: "Alert", message: "Please Enter Password", preferredStyle: UIAlertController.Style.alert)
            alertController.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            self.present(alertController, animated: true, completion: nil)
        }
        else
        {
            UserDefaults.standard.setValue(name.text ?? "", forKey: "Name")
            UserDefaults.standard.setValue(email.text ?? "", forKey: "EmailID")
            UserDefaults.standard.setValue(pass.text ?? "", forKey: "Password")
            let alert = UIAlertController(title: "Signup", message: "Signup Successfull", preferredStyle: .alert)
            let ok = UIAlertAction(title: "OK", style: .default, handler: nil)
            alert.addAction(ok)
            self.present(alert, animated: true, completion: nil)
        }
    }
}

