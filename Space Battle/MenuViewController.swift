//
//  MenuViewController.swift
//  Space Battle
//
//  Created by Ulad Daratsiuk-Demchuk on 2017-12-31.
//  Copyright © 2017 Uladzislau Daratsiuk. All rights reserved.
//

import UIKit
import AVFoundation

class MenuViewController: UIViewController {
    
    var audioPlayer = AVAudioPlayer()


    @IBOutlet weak var sound: UIButton!
    
    //SOUND BUTTON
    @IBAction func soundButton(_ sender: Any) {
            audioPlayer.pause()
        sound.setBackgroundImage(#imageLiteral(resourceName: "mute"), for: .normal)
    }
    
    
    //PLAYBUTTON
    @IBAction func playButton(_ sender: Any) {
        self.performSegue(withIdentifier: "play", sender: self.navigationController)
        
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "chewbacca", ofType: "mp3")!))
            audioPlayer.prepareToPlay()
            audioPlayer.play()
            
            
        }catch {
            
            print(error)
            
        }
        
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "menu", ofType: "mp3")!))
            audioPlayer.prepareToPlay()
            audioPlayer.play()
            
            
        }catch {
            
            print(error)
            
        }

        // Do any additional setup after loading the view.
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    override var prefersStatusBarHidden: Bool
    {
        return true
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
