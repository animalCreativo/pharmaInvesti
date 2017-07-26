//
//  Producto2ViewController.swift
//  galderma2017
//
//  Created by Francisco Barrios Romo on 05-02-17.
//  Copyright © 2017 RentalApps. All rights reserved.
//

import UIKit
import Spring

class Producto2ViewController: UIViewController {
    
    @IBOutlet weak var btnBack: UIButton!
    
    @IBOutlet weak var btnMenu: UIBarButtonItem!
    
    @IBOutlet weak var btnMenuSlideRight: UIButton!
    
    @IBOutlet var fondo: SpringImageView!
    
    @IBOutlet var flecha3: SpringImageView!
    @IBOutlet var flecha2: SpringImageView!
    @IBOutlet var flecha1: SpringImageView!
    
    @IBOutlet var titulo: SpringImageView!
    var gameTimer: Timer!
    
    
    @IBOutlet var Left: UISwipeGestureRecognizer!
    @IBAction func btnProsina(_ sender: Any) {
        self.gameTimer.invalidate()
        titulo.isHidden     = true
        flecha1.isHidden     = true
        flecha2.isHidden     = true
        flecha3.isHidden     = true
        
        self.fondo.isHidden     = false
        fondo.opacity      = 0.0
        fondo.animation    = "fadeIn"
        fondo.curve        = "easeIn"
        fondo.delay        = 0.1
        fondo.duration     = 0.3
        fondo.animate()
        
        delay(delay:0.5){
            
          self.view.addGestureRecognizer(self.Left)
        }
       
    }
    @IBOutlet var btnProsina: UIButton!
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
        
        slide()
        
    }
    
    func slide(){
        
        self.fondo.isHidden     = true
        self.btnProsina.isHidden  = true
        self.view.removeGestureRecognizer(self.Left)
     
        self.gameTimer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(self.runTimedCode), userInfo: nil, repeats: true)
        
     
            
    
        delay(delay:1.8){
            self.btnProsina.isHidden  = false
        }
        
    }
    

    
    

    func runTimedCode() {
        self.titulo.opacity      = 0.0
        self.titulo.animation    = "morph"
        self.titulo.curve        = "easeIn"
        self.titulo.delay        = 0.3
        self.titulo.duration     = 0.7
        self.titulo.repeatCount  = Float.infinity
        self.titulo.animate()
        
        self.flecha1.opacity      = 0.0
        self.flecha1.animation    = "fadeIn"
        self.flecha1.curve        = "easeIn"
        self.flecha1.delay        = 0.1
        self.flecha1.duration     = 0.3
        self.flecha1.repeatCount  = Float.infinity
        self.flecha1.animate()
        
        self.flecha2.opacity      = 0.0
        self.flecha2.animation    = "fadeIn"
        self.flecha2.curve        = "easeIn"
        self.flecha2.delay        = 0.4
        self.flecha2.duration     = 0.3
        self.flecha2.repeatCount  = Float.infinity
        self.flecha2.animate()
        
        self.flecha3.opacity      = 0.0
        self.flecha3.animation    = "fadeIn"
        self.flecha3.curve        = "easeIn"
        self.flecha3.delay        = 0.7
        self.flecha3.duration     = 0.3
        self.flecha3.repeatCount  = Float.infinity
        self.flecha3.animate()

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

