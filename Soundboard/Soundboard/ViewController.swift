//
//  ViewController.swift
//  Soundboard
//
//  Created by Zvonimir Pavlović on 27/05/2020.
//  Copyright © 2020 Zvonimir Pavlović. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    let drakeSound = URL(fileURLWithPath: Bundle.main.path(forResource: "Drake", ofType: "mp3")!)
    let weekndSound = URL(fileURLWithPath: Bundle.main.path(forResource: "Weeknd", ofType: "mp3")!)
    let tygaSound = URL(fileURLWithPath: Bundle.main.path(forResource: "Tyga", ofType: "mp3")!)
    
    
    var audioPlayer: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func onDrakeClick(_ sender: Any) {
        playSound(content: drakeSound)
    }
    @IBAction func onWeekndClick(_ sender: Any) {
        playSound(content: weekndSound)
    }
    
    @IBAction func onTygaClick(_ sender: Any) {
        playSound(content: tygaSound)
    }
    
    private func playSound(content: URL){
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: content)
            audioPlayer.play()
        }catch {
            print("Couldnt load file.")
        }
    }
}

