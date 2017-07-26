//
//  Producto3Slide2ViewController.swift
//  galderma2017
//
//  Created by Francisco Barrios Romo on 22-03-17.
//  Copyright © 2017 RentalApps. All rights reserved.
//

import UIKit
import Spring

class Producto3Slide2ViewController: UIViewController {
    @IBOutlet weak var btnBack: UIButton!
    
    @IBOutlet weak var btnMenu: UIBarButtonItem!
    
    @IBOutlet weak var btnMenuSlideRight: UIButton!
    
    
    @IBOutlet var titulo: SpringImageView!
    
    @IBOutlet var imgProducto: SpringImageView!
 
    @IBOutlet var imgMenta: SpringImageView!
    
    @IBOutlet var imgBtn1: SpringImageView!
    
    @IBOutlet var imgBtn2: SpringImageView!
    
    @IBOutlet var btn1: UIButton!
    
    @IBOutlet var btn2: UIButton!
    
    @IBOutlet var right: UISwipeGestureRecognizer!
    
    
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
        self.view.removeGestureRecognizer(self.right)
        btn1.isHidden = true
        btn2.isHidden = true
        
        titulo.opacity      = 0.0
        titulo.animation    = "animalPop"
        titulo.curve        = "easeIn"
        titulo.delay        = 0.1
        titulo.duration     = 0.4
        titulo.animate()
        
        imgProducto.opacity      = 0.0
        imgProducto.animation    = "slideLeft"
        imgProducto.curve        = "easeIn"
        imgProducto.delay        = 0.4
        imgProducto.duration     = 0.4
        imgProducto.animate()
        
        imgMenta.opacity      = 0.0
        imgMenta.animation    = "animalPop"
        imgMenta.curve        = "easeIn"
        imgMenta.delay        = 0.9
        imgMenta.duration     = 0.4
        imgMenta.animate()
        
        imgBtn1.opacity      = 0.0
        imgBtn1.animation    = "fadeIn"
        imgBtn1.curve        = "easeIn"
        imgBtn1.delay        = 1.4
        imgBtn1.duration     = 0.4
        imgBtn1.animate()
        
        imgBtn2.opacity      = 0.0
        imgBtn2.animation    = "fadeIn"
        imgBtn2.curve        = "easeIn"
        imgBtn2.delay        = 1.6
        imgBtn2.duration     = 0.4
        imgBtn2.animate()
        
        
        delay(delay:2.0){
            self.btn1.isHidden = false
            self.btn2.isHidden = false
            self.view.addGestureRecognizer(self.right)
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

