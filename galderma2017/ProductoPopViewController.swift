//
//  ProductoPopViewController.swift
//  galderma2017
//
//  Created by Francisco Barrios Romo on 22-03-17.
//  Copyright © 2017 RentalApps. All rights reserved.
//

import UIKit
import Spring
import AVFoundation

class ProductoPopViewController: UIViewController {
    @IBOutlet var btnExit: UIButton!

    @IBOutlet var texto1: SpringImageView!
    @IBOutlet var texto2: SpringImageView!
   
    @IBOutlet var img: SpringImageView!
    
    @IBOutlet var imgSound: SpringImageView!
    
    @IBOutlet var soundicon: SpringImageView!
    @IBOutlet var botones: SpringImageView!
  
    @IBOutlet var btnSound: UIButton!
    
    
    var player: AVAudioPlayer?
    
    var a = true
    @IBAction func btnSound(_ sender: Any) {
        
        if (a){
            player?.play()
            a = false
        }else {
            player!.stop()
            a = true
        }
        
    }
    
    @IBAction func btnExit(_ sender: Any) {
        
        if (!a){
            player!.stop()
            a = true
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)

        
        guard let url = Bundle.main.url(forResource: "sonido", withExtension: "mp3") else {
            print("url not found")
            return
        }
        
        
        
        do {
            /// this codes for making this app ready to takeover the device audio
            try AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryPlayback)
            try AVAudioSession.sharedInstance().setActive(true)
            
            /// change fileTypeHint according to the type of your audio file (you can omit this)
            player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileTypeMPEGLayer3)
            
            // no need for prepareToPlay because prepareToPlay is happen automatically when calling play()
            //player!.play()
        } catch let error as NSError {
            print("error: \(error.localizedDescription)")
        }
        
        
        slide()

    }
    
    func slide(){
        btnExit.isHidden    = true
        btnSound.isHidden    = true
        
        texto1.opacity      = 0.0
        texto1.animation    = "animalPop"
        texto1.curve        = "easeIn"
        texto1.delay        = 0.1
        texto1.duration     = 0.5
        texto1.animate()
        
        texto2.opacity      = 0.0
        texto2.animation    = "animalPop"
        texto2.curve        = "easeIn"
        texto2.delay        = 0.4
        texto2.duration     = 0.5
        texto2.animate()
        
        img.opacity      = 0.0
        img.animation    = "fadeInUp"
        img.curve        = "easeIn"
        img.delay        = 0.9
        img.duration     = 0.5
        img.animate()
        
        botones.opacity      = 0.0
        botones.animation    = "fadeInRight"
        botones.curve        = "easeIn"
        botones.delay        = 1.4
        botones.duration     = 0.5
        botones.animate()
        
        
        
        imgSound.opacity      = 0.0
        imgSound.animation    = "fadeInRight"
        imgSound.curve        = "easeIn"
        imgSound.delay        = 1.9
        imgSound.duration     = 0.5
        imgSound.animate()
        
        soundicon.opacity      = 0.0
        soundicon.animation    = "pop"
        soundicon.curve        = "easeIn"
        soundicon.delay        = 2.4
        soundicon.duration     = 0.5
        soundicon.repeatCount  = Float.infinity
        soundicon.animate()
 
        delay(delay:3.0){
            self.btnSound.isHidden = false
            self.btnExit.isHidden    = false
        }
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       
         if segue.identifier == "back" {
         let nextScene =  segue.destination as! Producto2Slide2ViewController
         // Pass the selected object to the new view controller.
         nextScene.back = true
         }
   
        
    }
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}

