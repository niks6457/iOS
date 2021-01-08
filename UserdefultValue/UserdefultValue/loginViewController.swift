//
//  loginViewController.swift
//  UserdefultValue
//
//  Created by AkashSir.com on 04/12/20.
//

import UIKit

class loginViewController: UIViewController {
    
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var pass: UITextField!
    var Storetext1 = ""
    var Storetext2 = ""
    @IBOutlet weak var loginbtnact: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        if let str = UserDefaults.standard.object(forKey: "EmailID") as? String {
            Storetext1 = str
        }
        if let str = UserDefaults.standard.object(forKey: "Password") as? String{
            Storetext2 = str
        }
        print("EmailId = \(Storetext1) Pass = \(Storetext2)")
    }
    // Do any additional setup after loading the view.
    @IBAction func loginact(_ sender: Any) {
        if email.text?.count == 0 {
            let alertController = UIAlertController(title: "Alert", message: "Please Enter EmailID", preferredStyle: UIAlertController.Style.alert)
            alertController.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            self.present(alertController, animated: true, completion: nil)
        }
        else if pass.text?.count == 0 {
            let alertController = UIAlertController(title: "Alert", message: "Please Enter Password", preferredStyle: UIAlertController.Style.alert)
            alertController.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            self.present(alertController, animated: true, completion: nil)
        }else{
            if email.text == Storetext1 && pass.text == Storetext2 {
                let storyboard = UIStoryboard(name: "Main", bundle: nil)
                let MyHomePage = storyboard.instantiateViewController(withIdentifier: "homepageViewController") as! homepageViewController
                self.navigationController?.pushViewController(MyHomePage, animated: true)
            }else{
                let alertController = UIAlertController(title: "Login", message: "User Does not exist", preferredStyle: UIAlertController.Style.alert)
                alertController.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
                self.present(alertController, animated: true, completion: nil)
            }
        }
    }
}
    

  


