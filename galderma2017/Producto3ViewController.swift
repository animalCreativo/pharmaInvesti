//
//  Producto3ViewController.swift
//  galderma2017
//
//  Created by Francisco Barrios Romo on 05-02-17.
//  Copyright © 2017 RentalApps. All rights reserved.
//

import UIKit
import Spring
import AVFoundation

class Producto3ViewController: UIViewController {
    @IBOutlet weak var btnBack: UIButton!
    
    @IBOutlet weak var btnMenu: UIBarButtonItem!
    
    @IBOutlet weak var btnMenuSlideRight: UIButton!
    
    @IBOutlet var img1: SpringImageView!
    @IBOutlet var img2: SpringImageView!
    @IBOutlet var titulo: SpringImageView!
    
    @IBOutlet var producto: SpringImageView!
    @IBOutlet var texto1: SpringImageView!
    @IBOutlet var texto2: SpringImageView!
    
    @IBOutlet var not1: SpringImageView!
    @IBOutlet var not2: SpringImageView!
    @IBOutlet var not3: SpringImageView!
    @IBOutlet var not4: SpringImageView!
    
    @IBOutlet var alarm: SpringImageView!
    @IBOutlet var alarmLuz: SpringImageView!
    
    
    @IBOutlet var btnImg: SpringImageView!
    @IBOutlet var btn: UIButton!
    
    var player: AVAudioPlayer?
    var player2: AVAudioPlayer?
    
    @IBOutlet var btnNotificacion: UIButton!
    
    @IBAction func btnNotificacion(_ sender: Any) {
        
        alarm.isHidden = true
        
        not1.isHidden = false
        not2.isHidden = false
        
        not3.isHidden = false
        not4.isHidden = false
        
        btnNotificacion.isHidden = false
        
        not1.opacity      = 0.0
        not1.animation    = "animalPop"
        not1.curve        = "easeIn"
        not1.delay        = 0.2
        not1.duration     = 0.5
        not1.animate()
        
        not2.opacity      = 0.0
        not2.animation    = "animalPop"
        not2.curve        = "easeIn"
        not2.delay        = 0.7
        not2.duration     = 0.5
        not2.animate()
        
        not3.opacity      = 0.0
        not3.animation    = "animalPop"
        not3.curve        = "easeIn"
        not3.delay        = 1.2
        not3.duration     = 0.5
        not3.animate()
        
        not4.opacity      = 0.0
        not4.animation    = "animalPop"
        not4.curve        = "easeIn"
        not4.delay        = 1.7
        not4.duration     = 0.5
        not4.animate()
        
     
        img1.isHidden = false
        img2.isHidden = false
        titulo.isHidden = false
        producto.isHidden = false
        texto1.isHidden = false
        texto2.isHidden = false
        
        titulo.opacity      = 0.0
        titulo.animation    = "slideDown"
        titulo.curve        = "easeIn"
        titulo.delay        = 2.0
        titulo.duration     = 0.4
        titulo.animate()
        
        img1.opacity      = 0.0
        img1.animation    = "pop"
        img1.curve        = "easeIn"
        img1.delay        = 2.4
        img1.duration     = 0.8
        img1.repeatCount  = Float.infinity
        img1.animate()
        
        img2.opacity      = 0.0
        img2.animation    = "pop"
        img2.curve        = "easeIn"
        img2.delay        = 2.4
        img2.duration     = 0.8
        img2.repeatCount  = Float.infinity
        img2.animate()
        
        producto.opacity      = 0.0
        producto.animation    = "animalPop"
        producto.curve        = "easeIn"
        producto.delay        = 2.8
        producto.duration     = 0.3
        producto.animate()
        
        texto1.opacity      = 0.0
        texto1.animation    = "slideLeft"
        texto1.curve        = "easeIn"
        texto1.delay        = 3.2
        texto1.duration     = 0.4
        texto1.animate()
        
        texto2.opacity      = 0.0
        texto2.animation    = "slideLeft"
        texto2.curve        = "easeIn"
        texto2.delay        = 3.5
        texto2.duration     = 0.4
        texto2.animate()

        
        delay(delay: 0.2){
            self.player2?.play()
        }
        
        delay(delay: 0.7){
            self.player2?.play()
        }
        delay(delay: 1.2){
            self.player2?.play()
        }
        delay(delay: 1.7){
            self.player2?.play()
        }
        
        delay(delay: 4.0){
            self.btnImg.isHidden = false
        }
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        btnMenuSlideRight.addTarget(self.revealViewController(), action: #selector(SWRevealViewController.rightRevealToggle(_:)) , for: UIControlEvents.touchDown)
        
        if self.revealViewController() != nil {
            btnMenu.target = self.revealViewController()
            btnMenu.action = #selector(SWRevealViewController.rightRevealToggle(_:))
            
            self.view.addGestureRecognizer(self.revealViewController().tapGestureRecognizer())
            self.revealViewController().rightViewRevealWidth        = 268.0
            self.revealViewController().rightViewRevealOverdraw     = 0.0
            self.revealViewController().bounceBackOnOverdraw        = false
            self.revealViewController().springDampingRatio          = 1.0
            self.revealViewController().toggleAnimationDuration     = 0.7
            self.revealViewController().frontViewShadowRadius       = 10
            self.revealViewController().frontViewShadowOffset       = CGSize(width: 0, height: 2.5)
            self.revealViewController().frontViewShadowOpacity      = 1.0
            self.revealViewController().frontViewShadowColor        = UIColor.black
        }
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        
        guard let url = Bundle.main.url(forResource: "whats1", withExtension: "mp3") else {
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
        
        guard let url2 = Bundle.main.url(forResource: "whats2", withExtension: "mp3") else {
            print("url not found")
            return
        }
        
        
        
        do {
            /// this codes for making this app ready to takeover the device audio
            try AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryPlayback)
            try AVAudioSession.sharedInstance().setActive(true)
            
            /// change fileTypeHint according to the type of your audio file (you can omit this)
            player2 = try AVAudioPlayer(contentsOf: url2, fileTypeHint: AVFileTypeMPEGLayer3)
            
            // no need for prepareToPlay because prepareToPlay is happen automatically when calling play()
            //player!.play()
        } catch let error as NSError {
            print("error: \(error.localizedDescription)")
        }
        
        hidden()
        slide()
    }
    
    func slide(){
      
        alarm.opacity      = 0.0
        alarm.animation    = "pop"
        alarm.curve        = "easeIn"
        alarm.delay        = 0.8
        alarm.duration     = 1.0
        alarm.repeatCount  = Float.infinity
        alarm.damping      = 0.3
        alarm.velocity     = 0.2
        alarm.animate()
    
        delay(delay: 1.5){
            self.btnNotificacion.isHidden = false
        }
   
        self.player?.play()
      
   
        /*
        alarmLuz.opacity      = 0.0
        alarmLuz.animation    = "pop"
        alarmLuz.curve        = "easeIn"
        alarmLuz.delay        = 0.7
        alarmLuz.duration     = 0.5
        alarmLuz.repeatCount  = Float.infinity
        alarmLuz.animate()
  */
    }
    
    func hidden(){
        
        alarmLuz.isHidden = true
        img1.isHidden = true
        img2.isHidden = true
        titulo.isHidden = true
        producto.isHidden = true
        texto1.isHidden = true
        texto2.isHidden = true

        btnImg.isHidden = true
        
        btnNotificacion.isHidden = true
        not1.isHidden = true
        not2.isHidden = true
        not3.isHidden = true
        not4.isHidden = true

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        /*
         if segue.identifier == "play" {
         let nextScene =  segue.destinationViewController as! DaylongSun00ViewController
         // Pass the selected object to the new view controller.
         nextScene.video = "play"
         }
         */
        
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

