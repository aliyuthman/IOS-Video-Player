//
//  ViewController.swift
//  video_player
//
//  Created by Aliyu Usman on 01/11/2023.
//

import UIKit
import AVKit
import AVFoundation

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        
        super.viewDidAppear(animated)
        
        playVideo()
    }
    
    
    
    private func playVideo(){
        
        guard let path = Bundle.main.path(forResource: "test", ofType: "mp4") else {
            
            debugPrint("Video.mp4 not foud")
            
            return
        }
    
        
        let player = AVPlayer(url: URL(fileURLWithPath: path ) )
        let playerController = AVPlayerViewController()
        
        
        playerController.player = player
        present(playerController, animated: true){
            
            player.play()
        }
        
        
    }
    

        
       
 
    
    
    
//    private func playVideo(){
//        
//        var videoPath = findVideo()
//        
//        let player = AVPlayer(url: URL(fileURLWithPath: videoPath ) )
//        
//        
//    }
//    
//    private func findVideo(){
//        
//        guard let path = Bundle.main.path(forResource: "test", ofType: "mp4") else {
//            
//            debugPrint("Video.mp4 not foud")
//            
//            return
//        }
//    }
    
    
}

