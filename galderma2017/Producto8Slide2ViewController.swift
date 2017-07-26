//
//  Producto8Slide2ViewController.swift
//  galderma2017
//
//  Created by Francisco Barrios Romo on 20-04-17.
//  Copyright © 2017 RentalApps. All rights reserved.
//

import UIKit
import Spring

class Producto8Slide2ViewController: UIViewController {

    @IBOutlet var Left: UISwipeGestureRecognizer!
    
    @IBOutlet var btnExit: UIButton!
    
    @IBOutlet var imgSemaforo: SpringImageView!
    
    @IBOutlet var footer: SpringImageView!
    
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
        self.view.removeGestureRecognizer(self.Left)
        btnExit.isHidden    = true
        
        imgSemaforo.opacity      = 0.0
        imgSemaforo.animation    = "slideDown"
        imgSemaforo.curve        = "easeIn"
        imgSemaforo.delay        = 0.1
        imgSemaforo.duration     = 0.5
        imgSemaforo.damping      = 1.0
        imgSemaforo.animate()

        item1.opacity      = 0.0
        item1.animation    = "squeezeLeft"
        item1.curve        = "easeInOutCirc"
        item1.delay        = 0.5
        item1.damping      = 1.0
        item1.duration     = 2.5
        item1.velocity     = 1.0
        item1.animate()
        
        item2.opacity      = 0.0
        item2.animation    = "squeezeRight"
        item2.curve        = "easeInOutCirc"
        item2.delay        = 0.5
        item2.damping      = 1.0
        item2.duration     = 2.5
        item2.velocity     = 1.0
        item2.animate()
        
        footer.opacity      = 0.0
        footer.animation    = "animalPop"
        footer.curve        = "easeIn"
        footer.delay        = 3.0
        footer.damping      = 1.0
        footer.duration     = 0.5
        footer.animate()

        delay(delay:3.5){
            self.btnExit.isHidden    = false
            self.view.addGestureRecognizer(self.Left)
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
