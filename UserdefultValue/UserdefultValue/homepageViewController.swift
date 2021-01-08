//
//  homepageViewController.swift
//  UserdefultValue
//
//  Created by AkashSir.com on 04/12/20.
//

import UIKit

class homepageViewController: UIViewController {

    @IBOutlet weak var lable1: UILabel!
    @IBOutlet weak var lable2: UILabel!
    @IBOutlet weak var lable3: UILabel!
    @IBOutlet weak var logoutact: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let str = UserDefaults.standard.value(forKey: "EmailID") as? String {
            lable1.text = str
        }
        if let str = UserDefaults.standard.value(forKey: "FirstName") as? String {
            lable2.text = str
        }
        if let str = UserDefaults.standard.value(forKey: "Password") as? String {
            lable3.text = str
        }

        // Do any additional setup after loading the view.
    }
    
    @IBAction func logoutact(_ sender: Any) {
        UserDefaults.standard.removeObject(forKey: "FirstName")
        UserDefaults.standard.removeObject(forKey: "EmailID")
        UserDefaults.standard.removeObject(forKey: "Password")
        let MyHomePage = storyboard?.instantiateViewController(withIdentifier: "loginViewController") as! loginViewController
        self.navigationController?.pushViewController(MyHomePage, animated: true)
        let alertController = UIAlertController(title: "Logout", message: "Logout successfully", preferredStyle: UIAlertController.Style.alert)
        alertController.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        self.present(alertController, animated: true, completion: nil)
    }
    
    

}
