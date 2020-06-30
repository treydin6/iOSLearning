//
//  ViewController.swift
//  Xylophone-app
//
//  Created by Treydin Winward on 6/29/20.
//  Copyright © 2020 Treydin Winward. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func keyPressed(_ sender: UIButton) {
        print("title: ", sender.currentTitle!)
        playSound(soundName: sender.currentTitle!)
    }
    
    func playSound(soundName: String) {
        let url = Bundle.main.url(forResource: "Sounds/\(soundName)", withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
    }
}

