//
//  Producto4Slide2ViewController.swift
//  galderma2017
//
//  Created by Francisco Barrios Romo on 16-04-17.
//  Copyright © 2017 RentalApps. All rights reserved.
//

import UIKit
import Spring

class Producto4Slide2ViewController: UIViewController {
    @IBOutlet weak var btnMenu: UIBarButtonItem!
    @IBOutlet weak var btnMenuSlideRight: UIButton!
    
    @IBOutlet var imgCuadro: SpringImageView!
    
    @IBOutlet var imgItem1: SpringImageView!
    
    @IBOutlet var imgItem2: SpringImageView!
    
    @IBOutlet var Right: UISwipeGestureRecognizer!
    
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
        
        imgCuadro.opacity      = 0.0
        imgCuadro.animation    = "slideUp"
        imgCuadro.curve        = "easeIn"
        imgCuadro.delay        = 0.1
        imgCuadro.duration     = 0.5
        imgCuadro.damping      = 1.0
        imgCuadro.animate()
        
        imgItem1.opacity      = 0.0
        imgItem1.animation    = "animalPop"
        imgItem1.curve        = "easeIn"
        imgItem1.delay        = 0.4
        imgItem1.duration     = 0.4
        imgItem1.animate()
        
        imgItem2.opacity      = 0.0
        imgItem2.animation    = "animalPop"
        imgItem2.curve        = "easeIn"
        imgItem2.delay        = 0.9
        imgItem2.duration     = 0.4
        imgItem2.animate()

        delay(delay:1.5){
            self.view.addGestureRecognizer(self.Right)
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
