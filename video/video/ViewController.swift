//
//  ViewController.swift
//  video
//
//  Created by akash mac mini on 21/10/20.
//

import UIKit
import AVKit

class ViewController: UIViewController {

    @IBAction func btn(_ sender: Any) {
        if let path = Bundle.main.path(forResource: "003", ofType: "mp4")
        {
            let videourl = URL(fileURLWithPath: path)
            let myplayer = AVPlayer(url: videourl)
            let videoplayerwithcontroller = AVPlayerViewController()
            
            videoplayerwithcontroller.player = myplayer
            present(videoplayerwithcontroller, animated: true, completion:
            {
                videoplayerwithcontroller.player?.play()
            })
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

