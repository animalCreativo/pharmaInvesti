//
//  P1Pop3ViewController.swift
//  galderma2017
//
//  Created by Francisco Barrios Romo on 18-03-17.
//  Copyright © 2017 RentalApps. All rights reserved.
//

import UIKit
import Spring

class P1Pop3ViewController: UIViewController {
    @IBOutlet var btnExit: UIButton!
    
    @IBOutlet var titulo: SpringImageView!
    @IBOutlet var item1: SpringImageView!
    @IBOutlet var item2: SpringImageView!
 
    @IBOutlet var texto1: SpringImageView!
    @IBOutlet var texto2: SpringImageView!
    @IBOutlet var texto3: SpringImageView!
    @IBOutlet var texto4: SpringImageView!

    @IBOutlet var img: SpringImageView!
    
    @IBOutlet var pinkGirl: SpringImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        
        slide()
        
    }
    
    func slide(){
        btnExit.isHidden    = true
        
        titulo.opacity      = 0.0
        titulo.animation    = "animalPop"
        titulo.curve        = "easeIn"
        titulo.delay        = 0.1
        titulo.duration     = 0.5
        titulo.animate()
        
        item1.opacity      = 0.0
        item1.animation    = "fadeIn"
        item1.curve        = "easeIn"
        item1.delay        = 0.4
        item1.duration     = 0.5
        item1.animate()
        
        item2.opacity      = 0.0
        item2.animation    = "animalPop"
        item2.curve        = "easeIn"
        item2.delay        = 0.9
        item2.duration     = 0.5
        item2.animate()
        
        pinkGirl.opacity      = 0.0
        pinkGirl.animation    = "animalPop"
        pinkGirl.curve        = "easeIn"
        pinkGirl.delay        = 1.4
        pinkGirl.duration     = 0.5
        pinkGirl.animate()
        
        img.opacity      = 0.0
        img.animation    = "animalPop"
        img.curve        = "easeIn"
        img.delay        = 1.8
        img.duration     = 0.5
        img.animate()
        
        texto1.opacity      = 0.0
        texto1.animation    = "fadeInRight"
        texto1.curve        = "easeIn"
        texto1.delay        = 2.0
        texto1.duration     = 0.5
        texto1.animate()
        
        texto2.opacity      = 0.0
        texto2.animation    = "fadeInRight"
        texto2.curve        = "easeIn"
        texto2.delay        = 2.3
        texto2.duration     = 0.5
        texto2.animate()

        texto3.opacity      = 0.0
        texto3.animation    = "fadeInLeft"
        texto3.curve        = "easeIn"
        texto3.delay        = 2.7
        texto3.duration     = 0.5
        texto3.animate()
        
        texto4.opacity      = 0.0
        texto4.animation    = "fadeInLeft"
        texto4.curve        = "easeIn"
        texto4.delay        = 3.0
        texto4.duration     = 0.5
        texto4.animate()
        
        
        delay(delay:3.5){
            self.btnExit.isHidden    = false
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

