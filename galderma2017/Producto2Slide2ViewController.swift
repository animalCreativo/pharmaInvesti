//
//  Producto2Slide2ViewController.swift
//  galderma2017
//
//  Created by Francisco Barrios Romo on 22-03-17.
//  Copyright © 2017 RentalApps. All rights reserved.
//

import UIKit
import Spring

class Producto2Slide2ViewController: UIViewController {
    @IBOutlet weak var btnBack: UIButton!
    
    @IBOutlet weak var btnMenu: UIBarButtonItem!
    
    @IBOutlet weak var btnMenuSlideRight: UIButton!
    
    @IBOutlet var texto1: SpringImageView!
    @IBOutlet var texto2: SpringImageView!
    @IBOutlet var texto3: SpringImageView!
    
    @IBOutlet var imagen: SpringImageView!
    @IBOutlet var imagenbtnBeneficios: SpringImageView!
    
    @IBOutlet var fondoSplash: SpringImageView!
    @IBOutlet var flecha3: SpringImageView!
    @IBOutlet var flecha2: SpringImageView!
    @IBOutlet var flecha1: SpringImageView!
    @IBOutlet var titulo: SpringImageView!
    
    @IBOutlet var fondo: UIImageView!

    @IBOutlet var btnBeneficios: UIButton!
    
    var back = false

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
        
        if (back) {
            self.btnBeneficios.isHidden    = true
            self.titulo.isHidden  = true
            self.flecha3.isHidden = true
            self.flecha2.isHidden = true
            self.flecha1.isHidden = true
            slideNormal(fdelay: 0.0)
        }else {
          slide()
        }
        
        
        
    }
    
    func slide(){
        
       
        self.btnBeneficios.isHidden    = true
        intro()
        slideNormal(fdelay: 2.9)

    }
    
    func slideNormal(fdelay: CGFloat){
        
        self.fondoSplash.isHidden = true
        texto1.opacity      = 0.0
        texto1.animation    = "animalPop"
        texto1.curve        = "easeIn"
        texto1.delay        = 0.1 + fdelay
        texto1.duration     = 0.5
        texto1.animate()
        
        texto2.opacity      = 0.0
        texto2.animation    = "fadeIn"
        texto2.curve        = "easeIn"
        texto2.delay        = 0.4 + fdelay
        texto2.duration     = 0.5
        texto2.animate()
        
        texto3.opacity      = 0.0
        texto3.animation    = "animalPop"
        texto3.curve        = "easeIn"
        texto3.delay        = 0.9 + fdelay
        texto3.duration     = 0.5
        texto3.animate()
        
        imagen.opacity      = 0.0
        imagen.animation    = "fadeInRight"
        imagen.curve        = "easeIn"
        imagen.delay        = 1.4 + fdelay
        imagen.duration     = 0.5
        imagen.animate()
        
        imagenbtnBeneficios.opacity      = 0.0
        imagenbtnBeneficios.animation    = "fadeInLeft"
        imagenbtnBeneficios.curve        = "easeIn"
        imagenbtnBeneficios.delay        = 1.8 + fdelay
        imagenbtnBeneficios.duration     = 0.5
        imagenbtnBeneficios.animate()
        

        delay(delay:2.5+Double(fdelay)){
            self.btnBeneficios.isHidden    = false
        }
    }
    
    func intro(){
        
        fondo.image = UIImage(named:"prosinaSlide1Fondo")
        self.fondoSplash.isHidden = true
        self.titulo.opacity      = 0.0
        self.titulo.animation    = "morph"
        self.titulo.curve        = "easeIn"
        self.titulo.delay        = 0.3
        self.titulo.duration     = 0.7
        self.titulo.repeatCount  = 3
        self.titulo.animate()
    
        self.flecha1.opacity      = 0.0
        self.flecha1.animation    = "fadeIn"
        self.flecha1.curve        = "easeIn"
        self.flecha1.delay        = 0.1
        self.flecha1.duration     = 0.3
        self.flecha1.repeatCount  = 3
        self.flecha1.animate()
    
        self.flecha2.opacity      = 0.0
        self.flecha2.animation    = "fadeIn"
        self.flecha2.curve        = "easeIn"
        self.flecha2.delay        = 0.4
        self.flecha2.duration     = 0.3
        self.flecha2.repeatCount  = 3
        self.flecha2.animate()
    
        self.flecha3.opacity      = 0.0
        self.flecha3.animation    = "fadeIn"
        self.flecha3.curve        = "easeIn"
        self.flecha3.delay        = 0.7
        self.flecha3.duration     = 0.3
        self.flecha3.repeatCount  = 3
        self.flecha3.animate()
        
        delay(delay:2.4){
            
            self.fondoSplash.isHidden = false
            self.fondoSplash.opacity      = 0.0
            self.fondoSplash.animation    = "fadeIn"
            self.fondoSplash.curve        = "easeIn"
            self.fondoSplash.delay        = 0.1
            self.fondoSplash.duration     = 0.5
            self.fondoSplash.animate()
            self.titulo.isHidden  = true
            self.flecha3.isHidden = true
            self.flecha2.isHidden = true
            self.flecha1.isHidden = true
        }
        
        delay(delay: 2.9){
            self.fondoSplash.isHidden = true
            self.fondo.image = UIImage(named:"prosinaSlide2Fondo")
            
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

