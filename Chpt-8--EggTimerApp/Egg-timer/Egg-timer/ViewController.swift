//
//  ViewController.swift
//  Egg-timer
//
//  Created by Treydin Winward on 6/30/20.
//  Copyright © 2020 Treydin Winward. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    var player: AVAudioPlayer!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    
    let eggTimes = ["Soft": 300, "Medium": 420, "Hard": 720]
    var totalTime = 0
    var secondsPassed = 0
    var timer = Timer()
    
    @IBAction func SelectedEggPressed(_ sender: UIButton) {
        timer.invalidate()
        
        let hardness = sender.currentTitle!
        totalTime = eggTimes[hardness]!
        progressBar.progress = 0
        secondsPassed = 0
        titleLabel.text = hardness
        
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)    }
    
    @objc func updateTimer() {
        if secondsPassed < totalTime {
            progressBar.progress = Float(secondsPassed) / Float(totalTime)
            
            secondsPassed += 1
        } else {
            timer.invalidate()
            playSound()
            titleLabel.text = "DONE!"
            progressBar.progress = 1
            
        }
    }
    
    func playSound() {
        let url = Bundle.main.url(forResource: "alarm_sound", withExtension: "mp3")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
    }
    
}

