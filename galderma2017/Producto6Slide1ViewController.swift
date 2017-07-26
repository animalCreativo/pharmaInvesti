//
//  Producto6Slide1ViewController.swift
//  galderma2017
//
//  Created by Francisco Barrios Romo on 16-04-17.
//  Copyright © 2017 RentalApps. All rights reserved.
//

import UIKit
import Spring

class Producto6Slide1ViewController: UIViewController {

    @IBOutlet var Left: UISwipeGestureRecognizer!
    
    @IBOutlet var btnExit: UIButton!

    @IBOutlet var imgCirculo: SpringImageView!
    @IBOutlet var imbBoy: SpringImageView!
    
    @IBOutlet var item1: SpringImageView!
    @IBOutlet var item2: SpringImageView!
    @IBOutlet var item3: SpringImageView!
    @IBOutlet var sello: SpringImageView!
    
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
        
        imgCirculo.opacity      = 0.0
        imgCirculo.animation    = "fadeIn"
        imgCirculo.curve        = "easeIn"
        imgCirculo.delay        = 0.1
        imgCirculo.duration     = 0.5
        imgCirculo.animate()
        
        //imbBoy.opacity      = 0.0
        imbBoy.animation    = "swing"
        imbBoy.curve        = "easeIn"
        imbBoy.delay        = 0.3
        imbBoy.duration     = 2.5
        imbBoy.animate()
        
        item1.opacity      = 0.0
        item1.animation    = "animalPop"
        item1.curve        = "easeIn"
        item1.delay        = 0.9
        item1.duration     = 0.5
        item1.animate()
        
        item2.opacity      = 0.0
        item2.animation    = "animalPop"
        item2.curve        = "easeIn"
        item2.delay        = 1.2
        item2.duration     = 0.5
        item2.animate()
        
        item3.opacity      = 0.0
        item3.animation    = "animalPop"
        item3.curve        = "easeIn"
        item3.delay        = 1.5
        item3.duration     = 0.5
        item3.animate()
        
        sello.opacity      = 0.0
        sello.animation    = "animalPop"
        sello.curve        = "easeIn"
        sello.delay        = 2.0
        sello.duration     = 0.5
        sello.animate()
        
        delay(delay:2.8){
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
