//
//  Producto8Slide3ViewController.swift
//  galderma2017
//
//  Created by Francisco Barrios Romo on 20-04-17.
//  Copyright © 2017 RentalApps. All rights reserved.
//

import UIKit
import Spring

class Producto8Slide3ViewController: UIViewController {
    @IBOutlet var btnExit: UIButton!
    
    @IBOutlet var Right: UISwipeGestureRecognizer!
    @IBOutlet var titulo1: SpringImageView!
    @IBOutlet var titulo2: SpringImageView!
    @IBOutlet var footer: SpringImageView!
    @IBOutlet var leftIMG: SpringImageView!
    @IBOutlet var rightIMG: SpringImageView!
    @IBOutlet var imgSemaforo: SpringImageView!
    
    @IBOutlet var item1: SpringImageView!
    @IBOutlet var item2: SpringImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        slide()
    }
    
    func slide(){
        self.view.removeGestureRecognizer(self.Right)
        btnExit.isHidden    = true
        
        imgSemaforo.opacity      = 0.0
        imgSemaforo.animation    = "slideDown"
        imgSemaforo.curve        = "easeIn"
        imgSemaforo.delay        = 0.1
        imgSemaforo.duration     = 0.5
        imgSemaforo.damping      = 1.0
        imgSemaforo.animate()
        
        titulo1.opacity      = 0.0
        titulo1.animation    = "fadeIn"
        titulo1.curve        = "easeIn"
        titulo1.delay        = 0.5
        titulo1.duration     = 0.5
        titulo1.animate()
        
        item1.opacity      = 0.0
        item1.animation    = "animalPop"
        item1.curve        = "easeIn"
        item1.delay        = 0.9
        item1.duration     = 0.5
        item1.animate()
        
        titulo2.opacity      = 0.0
        titulo2.animation    = "fadeIn"
        titulo2.curve        = "easeIn"
        titulo2.delay        = 0.5
        titulo2.duration     = 0.5
        titulo2.animate()
        
        item2.opacity      = 0.0
        item2.animation    = "animalPop"
        item2.curve        = "easeIn"
        item2.delay        = 0.9
        item2.duration     = 0.5
        item2.animate()
        
        leftIMG.opacity      = 0.0
        leftIMG.animation    = "slideRight"
        leftIMG.curve        = "easeIn"
        leftIMG.delay        = 1.4
        leftIMG.duration     = 0.5
        leftIMG.damping      = 1.0
        leftIMG.animate()
        
        rightIMG.opacity      = 0.0
        rightIMG.animation    = "slideLeft"
        rightIMG.curve        = "easeIn"
        rightIMG.delay        = 1.4
        rightIMG.duration     = 0.5
        rightIMG.damping      = 1.0
        rightIMG.animate()
        
        footer.opacity      = 0.0
        footer.animation    = "animalPop"
        footer.curve        = "easeIn"
        footer.delay        = 1.9
        footer.duration     = 0.5
        footer.animate()
      
    
        delay(delay:2.5){
            self.btnExit.isHidden    = false
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
