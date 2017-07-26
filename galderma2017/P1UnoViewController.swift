//
//  P1UnoViewController.swift
//  galderma2017
//
//  Created by Francisco Barrios Romo on 05-02-17.
//  Copyright © 2017 RentalApps. All rights reserved.
//

import UIKit
import Spring
class P1UnoViewController: UIViewController {

    @IBOutlet weak var btnBack: UIButton!
    @IBOutlet weak var btnMenu: UIBarButtonItem!
    
    @IBOutlet weak var btnMenuSlideRight: UIButton!
    @IBOutlet var Right: UISwipeGestureRecognizer!

    @IBOutlet var titulo: SpringImageView!

    @IBOutlet var circle: SpringImageView!
    @IBOutlet var bottle: SpringImageView!
    
    @IBOutlet var item1: SpringImageView!
    @IBOutlet var item2: SpringImageView!
    @IBOutlet var item3: SpringImageView!
    
    @IBOutlet var texto1: SpringImageView!
    @IBOutlet var texto2: SpringImageView!
    @IBOutlet var texto3: SpringImageView!
    
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
        self.view.removeGestureRecognizer(self.Right)
        
        titulo.opacity      = 0.0
        titulo.animation    = "animalPop"
        titulo.curve        = "easeIn"
        titulo.delay        = 0.1
        titulo.duration     = 0.5
        titulo.animate()
        
        circle.opacity      = 0.0
        circle.animation    = "zoomIn"
        circle.curve        = "easeIn"
        circle.delay        = 0.4
        circle.duration     = 0.5
        circle.animate()
        
        bottle.opacity      = 0.0
        bottle.animation    = "animalPop"
        bottle.curve        = "easeIn"
        bottle.delay        = 0.7
        bottle.duration     = 0.5
        bottle.animate()
        
        item1.opacity      = 0.0
        item1.animation    = "animalPop"
        item1.curve        = "easeIn"
        item1.delay        = 1.2
        item1.duration     = 0.4
        item1.animate()
        
       	texto1.opacity      = 0.0
        texto1.animation    = "animalPop"
        texto1.curve        = "easeIn"
        texto1.delay        = 1.2
        texto1.duration     = 0.4
        texto1.animate()
        
        item2.opacity      = 0.0
        item2.animation    = "animalPop"
        item2.curve        = "easeIn"
        item2.delay        = 1.6
        item2.duration     = 0.4
        item2.animate()
        
       	texto2.opacity      = 0.0
        texto2.animation    = "animalPop"
        texto2.curve        = "easeIn"
        texto2.delay        = 1.6
        texto2.duration     = 0.4
        texto2.animate()
        
        
        item3.opacity      = 0.0
        item3.animation    = "animalPop"
        item3.curve        = "easeIn"
        item3.delay        = 1.9
        item3.duration     = 0.4
        item3.animate()
        
       	texto3.opacity      = 0.0
        texto3.animation    = "animalPop"
        texto3.curve        = "easeIn"
        texto3.delay        = 1.9
        texto3.duration     = 0.4
        texto3.animate()
        
        
        
        
        delay(delay:2.5){
            self.view.addGestureRecognizer(self.Right)
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

