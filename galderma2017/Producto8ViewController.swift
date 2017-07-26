//
//  Producto8ViewController.swift
//  galderma2017
//
//  Created by Francisco Barrios Romo on 20-04-17.
//  Copyright © 2017 RentalApps. All rights reserved.
//

import UIKit
import Spring

class Producto8ViewController: UIViewController {
    @IBOutlet weak var btnMenu: UIBarButtonItem!
    @IBOutlet weak var btnMenuSlideRight: UIButton!

    @IBOutlet var semaforo: SpringImageView!
    
    @IBOutlet var luz1: SpringImageView!
    @IBOutlet var luz2: SpringImageView!
    @IBOutlet var luz3: SpringImageView!
    
    @IBOutlet var itemVerde1: SpringImageView!
    @IBOutlet var itemVerde2: SpringImageView!
    @IBOutlet var itemVerde3: SpringImageView!
    
    @IBOutlet var item1: SpringImageView!
    @IBOutlet var item2: SpringImageView!
    @IBOutlet var item3: SpringImageView!
    
    @IBOutlet var footer: SpringImageView!
    
    @IBOutlet var imgBtn: SpringImageView!

    @IBOutlet var btn1: UIButton!
    
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
        
        btn1.isHidden = true
        
        semaforo.opacity      = 0.0
        semaforo.animation    = "slideDown"
        semaforo.curve        = "easeIn"
        semaforo.delay        = 0.1
        semaforo.duration     = 0.4
        semaforo.damping      = 1.0
        semaforo.animate()
        
        item1.opacity      = 0.0
        item1.animation    = "fadeIn"
        item1.curve        = "easeIn"
        item1.delay        = 0.4
        item1.duration     = 0.4
        item1.animate()
        
        item2.opacity      = 0.0
        item2.animation    = "fadeIn"
        item2.curve        = "easeIn"
        item2.delay        = 0.6
        item2.duration     = 0.4
        item2.animate()
        
        item3.opacity      = 0.0
        item3.animation    = "fadeIn"
        item3.curve        = "easeIn"
        item3.delay        = 0.8
        item3.duration     = 0.4
        item3.animate()
        
        itemVerde1.opacity      = 0.0
        itemVerde1.animation    = "fadeIn"
        itemVerde1.curve        = "easeIn"
        itemVerde1.delay        = 1.2
        itemVerde1.duration     = 0.4
        itemVerde1.animate()
        
        luz1.opacity      = 0.0
        luz1.animation    = "fadeIn"
        luz1.curve        = "easeIn"
        luz1.delay        = 1.2
        luz1.duration     = 0.4
        luz1.animate()
        
        itemVerde2.opacity      = 0.0
        itemVerde2.animation    = "fadeIn"
        itemVerde2.curve        = "easeIn"
        itemVerde2.delay        = 1.6
        itemVerde2.duration     = 0.4
        itemVerde2.animate()
        
        luz2.opacity      = 0.0
        luz2.animation    = "fadeIn"
        luz2.curve        = "easeIn"
        luz2.delay        = 1.6
        luz2.duration     = 0.4
        luz2.animate()
        
        itemVerde3.opacity      = 0.0
        itemVerde3.animation    = "fadeIn"
        itemVerde3.curve        = "easeIn"
        itemVerde3.delay        = 2.0
        itemVerde3.duration     = 0.4
        itemVerde3.animate()
        
        luz3.opacity      = 0.0
        luz3.animation    = "fadeIn"
        luz3.curve        = "easeIn"
        luz3.delay        = 2.0
        luz3.duration     = 0.4
        luz3.animate()
        
        imgBtn.opacity      = 0.0
        imgBtn.animation    = "animalPop"
        imgBtn.curve        = "easeIn"
        imgBtn.delay        = 2.5
        imgBtn.duration     = 0.4
        imgBtn.animate()
        
        footer.opacity      = 0.0
        footer.animation    = "fadeIn"
        footer.curve        = "easeIn"
        footer.delay        = 2.8
        footer.duration     = 0.4
        footer.animate()
        
        delay(delay:3.2){
            self.btn1.isHidden = false
        }
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
