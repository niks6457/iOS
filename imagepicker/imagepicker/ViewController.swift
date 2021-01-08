//
//  ViewController.swift
//  imagepicker
//
//  Created by akash mac mini on 22/10/20.
//

import UIKit

class ViewController: UIViewController,UINavigationControllerDelegate,UIImagePickerControllerDelegate {

    @IBOutlet weak var imgview: UIImageView!
    
    let myimagecontroller = UIImagePickerController()
    
    @IBAction func imgpicker(_ sender: Any)
    {
        myimagecontroller.sourceType = .photoLibrary
        myimagecontroller.allowsEditing = true
        self.present(myimagecontroller, animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
        if let image = info[UIImagePickerController.InfoKey.originalImage] as? UIImage
        {
            imgview.image = image
            
        }
        dismiss(animated: true, completion: nil)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        myimagecontroller.delegate = self
        
        // Do any additional setup after loading the view.
    }


}

