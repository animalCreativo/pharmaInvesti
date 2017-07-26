//
//  Producto3Slide3ViewController.swift
//  galderma2017
//
//  Created by Francisco Barrios Romo on 22-03-17.
//  Copyright © 2017 RentalApps. All rights reserved.
//

import UIKit
import Spring

class Producto3Slide3ViewController: UIViewController {

    @IBOutlet var btnExit: UIButton!
    
    @IBOutlet var titulo: SpringImageView!
    @IBOutlet var texto: SpringImageView!
    @IBOutlet var imgProducto: SpringImageView!
    
    @IBOutlet var imgBtn1: SpringImageView!
    @IBOutlet var imgBtn2: SpringImageView!
    @IBOutlet var imgBtn3: SpringImageView!
    @IBOutlet var imgBtn4: SpringImageView!
    
    @IBOutlet var btn1: UIButton!
    @IBOutlet var btn2: UIButton!
    @IBOutlet var btn3: UIButton!
    @IBOutlet var btn4: UIButton!

    
    override func viewDidLoad() {
        super.viewDidLoad()
     
    
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        
        slide()
        
    }
    
    func slide(){
        
        self.btn1.isHidden = true
        self.btn2.isHidden = true
        self.btn3.isHidden = true
        self.btn4.isHidden = true
        
        titulo.opacity      = 0.0
        titulo.animation    = "animalPop"
        titulo.curve        = "easeIn"
        titulo.delay        = 0.1
        titulo.duration     = 0.5
        titulo.animate()
        
        texto.opacity      = 0.0
        texto.animation    = "fadeIn"
        texto.curve        = "easeIn"
        texto.delay        = 0.4
        texto.duration     = 0.5
        texto.animate()
        
        imgProducto.opacity      = 0.0
        imgProducto.animation    = "squeezeUp"
        imgProducto.curve        = "easeIn"
        imgProducto.delay        = 0.9
        imgProducto.duration     = 0.5
        imgProducto.animate()
        
        imgBtn1.opacity      = 0.0
        imgBtn1.animation    = "animalPop"
        imgBtn1.curve        = "easeIn"
        imgBtn1.delay        = 1.4
        imgBtn1.duration     = 0.5
        imgBtn1.animate()
        
        imgBtn2.opacity      = 0.0
        imgBtn2.animation    = "animalPop"
        imgBtn2.curve        = "easeIn"
        imgBtn2.delay        = 1.7
        imgBtn2.duration     = 0.5
        imgBtn2.animate()
        
        imgBtn3.opacity      = 0.0
        imgBtn3.animation    = "animalPop"
        imgBtn3.curve        = "easeIn"
        imgBtn3.delay        = 2.0
        imgBtn3.duration     = 0.5
        imgBtn3.animate()
        
        imgBtn4.opacity      = 0.0
        imgBtn4.animation    = "animalPop"
        imgBtn4.curve        = "easeIn"
        imgBtn4.delay        = 2.3
        imgBtn4.duration     = 0.5
        imgBtn4.animate()
        
        delay(delay:2.8){
            self.btn1.isHidden = false
            self.btn2.isHidden = false
            self.btn3.isHidden = false
            self.btn4.isHidden = false
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

