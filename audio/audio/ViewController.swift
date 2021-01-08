//
//  ViewController.swift
//  audio
//
//  Created by akash mac mini on 21/10/20.
//

import UIKit
import AVKit

class ViewController: UIViewController {

    
    var audioplay = AVAudioPlayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        do{
            let url = URL.init(fileURLWithPath: Bundle.main.path(forResource: "Yalgaar", ofType: "mp3")!)
            
            audioplay = try AVAudioPlayer(contentsOf: url)
            audioplay.prepareToPlay()
            audioplay.volume = 10
        }catch let error{
            NSLog(error.localizedDescription)
        }
        // Do any additional setup after loading the view.
    }

    
    @IBAction func pl(_ sender: Any) {
        audioplay.play()
    }
    @IBAction func pu(_ sender: Any) {
        audioplay.pause()
    }
    
}

