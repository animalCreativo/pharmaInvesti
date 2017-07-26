//
//  P1Pop2ViewController.swift
//  galderma2017
//
//  Created by Francisco Barrios Romo on 18-03-17.
//  Copyright © 2017 RentalApps. All rights reserved.
//

import UIKit
import Spring
class P1Pop2ViewController: UIViewController {
    @IBOutlet var btnExit: UIButton!
    
    @IBOutlet var titulo: SpringImageView!
    @IBOutlet var item1: SpringImageView!
    @IBOutlet var item2: SpringImageView!

    @IBOutlet var texto1: SpringImageView!
    @IBOutlet var texto2: SpringImageView!
    
    
    @IBOutlet var blueGirl1: SpringImageView!
    @IBOutlet var blueGirl2: SpringImageView!
    @IBOutlet var blueGirl3: SpringImageView!
    @IBOutlet var blueGirl4: SpringImageView!
    @IBOutlet var blueGirl5: SpringImageView!
    @IBOutlet var blueGirl6: SpringImageView!
    @IBOutlet var blueGirl7: SpringImageView!
    
    @IBOutlet var pinkGirl1: SpringImageView!
    @IBOutlet var pinkGirl2: SpringImageView!
    @IBOutlet var pinkGirl3: SpringImageView!
    

    
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
    
        blueGirl1.opacity      = 0.0
        blueGirl1.animation    = "fadeInRight"
        blueGirl1.curve        = "easeIn"
        blueGirl1.delay        = 0.4
        blueGirl1.duration     = 0.5
        blueGirl1.animate()
        
        blueGirl2.opacity      = 0.0
        blueGirl2.animation    = "fadeInRight"
        blueGirl2.curve        = "easeIn"
        blueGirl2.delay        = 0.7
        blueGirl2.duration     = 0.5
        blueGirl2.animate()
        
        blueGirl3.opacity      = 0.0
        blueGirl3.animation    = "fadeInRight"
        blueGirl3.curve        = "easeIn"
        blueGirl3.delay        = 1.0
        blueGirl3.duration     = 0.5
        blueGirl3.animate()
        
        blueGirl4.opacity      = 0.0
        blueGirl4.animation    = "fadeInRight"
        blueGirl4.curve        = "easeIn"
        blueGirl4.delay        = 1.3
        blueGirl4.duration     = 0.5
        blueGirl4.animate()
        
        blueGirl5.opacity      = 0.0
        blueGirl5.animation    = "fadeInRight"
        blueGirl5.curve        = "easeIn"
        blueGirl5.delay        = 1.6
        blueGirl5.duration     = 0.5
        blueGirl5.animate()
        
        blueGirl6.opacity      = 0.0
        blueGirl6.animation    = "fadeInRight"
        blueGirl6.curve        = "easeIn"
        blueGirl6.delay        = 1.9
        blueGirl6.duration     = 0.5
        blueGirl6.animate()
        
        blueGirl7.opacity      = 0.0
        blueGirl7.animation    = "fadeInRight"
        blueGirl7.curve        = "easeIn"
        blueGirl7.delay        = 2.1
        blueGirl7.duration     = 0.5
        blueGirl7.animate()
    
        pinkGirl1.opacity      = 0.0
        pinkGirl1.animation    = "fadeInLeft"
        pinkGirl1.curve        = "easeIn"
        pinkGirl1.delay        = 1.0
        pinkGirl1.duration     = 0.5
        pinkGirl1.animate()
        
        pinkGirl2.opacity      = 0.0
        pinkGirl2.animation    = "fadeInLeft"
        pinkGirl2.curve        = "easeIn"
        pinkGirl2.delay        = 0.7
        pinkGirl2.duration     = 0.5
        pinkGirl2.animate()
        
        pinkGirl3.opacity      = 0.0
        pinkGirl3.animation    = "fadeInLeft"
        pinkGirl3.curve        = "easeIn"
        pinkGirl3.delay        = 0.4
        pinkGirl3.duration     = 0.5
        pinkGirl3.animate()
        
        texto1.opacity      = 0.0
        texto1.animation    = "animalPop"
        texto1.curve        = "easeIn"
        texto1.delay        = 2.4
        texto1.duration     = 0.4
        texto1.animate()
        
        texto2.opacity      = 0.0
        texto2.animation    = "animalPop"
        texto2.curve        = "easeIn"
        texto2.delay        = 2.7
        texto2.duration     = 0.4
        texto2.animate()
        
        delay(delay:3.0){
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

