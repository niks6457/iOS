//
//  ViewController5.swift
//  pickerview5controller
//
//  Created by akash mac mini on 12/10/20.
//

import UIKit

class ViewController5: UIViewController,UIPickerViewDelegate,UIPickerViewDataSource {
    var arr = Array(1900...2300)
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return arr.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return String(arr[row])
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        lbl1.isHidden = false
        if arr[row] % 4 == 0 {
            lbl1.text = "Leap Year"
        }
        else
        {
            lbl1.text = "Not Leap Year"
        }
        
        txt1.text = String(arr[row])
    }
    @IBOutlet weak var txt1: UITextField!
    @IBOutlet weak var picker: UIPickerView!
    @IBOutlet weak var lbl1: UILabel!
   @IBAction func btn1(_ sender: Any)
    {
        var a = Int(txt1.text!)
        lbl1.isHidden = false
        if a! % 4 == 0
        {
            lbl1.text = "Leap Year"
        }
        else
        {
            lbl1.text = "Not Leap Year"
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        self.picker.delegate = self
        self.picker.dataSource = self
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
