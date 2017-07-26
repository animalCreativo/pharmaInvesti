//
//  Producto3ViewController.swift
//  galderma2017
//
//  Created by Francisco Barrios Romo on 05-02-17.
//  Copyright © 2017 RentalApps. All rights reserved.
//

import UIKit
import Spring

class Producto3ViewController: UIViewController {
    @IBOutlet weak var btnBack: UIButton!
    
    @IBOutlet weak var btnMenu: UIBarButtonItem!
    
    @IBOutlet weak var btnMenuSlideRight: UIButton!
    
    
    @IBOutlet var girl: SpringImageView!
    
    @IBOutlet var textoGirl: SpringImageView!
    
    @IBOutlet var notGirl: SpringImageView!
    
    @IBOutlet var man: SpringImageView!
    
    @IBOutlet var textoMan: SpringImageView!
    
    @IBOutlet var notMan: SpringImageView!
    
    @IBOutlet var Left: UISwipeGestureRecognizer!
    
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
        self.view.removeGestureRecognizer(self.Left)
        
        girl.opacity      = 0.0
        girl.animation    = "animalPop"
        girl.curve        = "easeIn"
        girl.delay        = 0.1
        girl.duration     = 0.5
        girl.animate()
        
        textoGirl.opacity      = 0.0
        textoGirl.animation    = "animalPop"
        textoGirl.curve        = "easeIn"
        textoGirl.delay        = 0.6
        textoGirl.duration     = 0.8
        textoGirl.animate()
        
        notGirl.opacity      = 0.0
        notGirl.animation    = "fadeIn"
        notGirl.curve        = "easeIn"
        notGirl.delay        = 1.5
        notGirl.duration     = 0.3
        notGirl.animate()

        man.opacity      = 0.0
        man.animation    = "animalPop"
        man.curve        = "easeIn"
        man.delay        = 2.0
        man.duration     = 0.5
        man.animate()
        
        textoMan.opacity      = 0.0
        textoMan.animation    = "animalPop"
        textoMan.curve        = "easeIn"
        textoMan.delay        = 2.6
        textoMan.duration     = 0.8
        textoMan.animate()
        
        notMan.opacity      = 0.0
        notMan.animation    = "fadeIn"
        notMan.curve        = "easeIn"
        notMan.delay        = 3.5
        notMan.duration     = 0.3
        notMan.animate()
        
        delay(delay:4.0){
          self.view.addGestureRecognizer(self.Left)
        }
  
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

