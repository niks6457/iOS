//
//  ViewController3.swift
//  pickerview5controller
//
//  Created by akash mac mini on 12/10/20.
//

import UIKit

class ViewController3: UIViewController,UIPickerViewDelegate,UIPickerViewDataSource
{
    var arr = ["kevin","dhaval","dilip","rishit","nik","..."]
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return arr.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return arr[row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        lbl1.text = arr[row]
    }

    @IBOutlet weak var lbl1: UILabel!
    @IBOutlet weak var picker: UIPickerView!
    override func viewDidLoad() {
        self.picker.delegate = self
        self.picker.dataSource = self
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
