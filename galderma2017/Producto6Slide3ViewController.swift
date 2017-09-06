//
//  Producto6Slide3ViewController.swift
//  galderma2017
//
//  Created by Francisco Barrios Romo on 16-04-17.
//  Copyright © 2017 RentalApps. All rights reserved.
//

import UIKit
import Spring

class Producto6Slide3ViewController: UIViewController {
    @IBOutlet var btnExit: UIButton!
    
    @IBOutlet var Right: UISwipeGestureRecognizer!
    @IBOutlet var titulo: SpringImageView!
    @IBOutlet var imgCenter: SpringImageView!

    @IBOutlet var sello: SpringImageView!
    
    @IBOutlet var cal1FC: SpringImageView!
    
    @IBOutlet var cal1: SpringImageView!
    @IBOutlet var cal2: SpringImageView!
    @IBOutlet var cal3: SpringImageView!
    
    @IBOutlet var cal4: SpringImageView!
    
    @IBOutlet var texto1: SpringImageView!
    @IBOutlet var texto2: SpringImageView!
    
    @IBOutlet var glass1: BabyMilk1!
    
    @IBOutlet var glass2: BabyMilk2!
    
    
    var gameTimer: Timer!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        glass1.backgroundColor = UIColor.clear
        glass2.backgroundColor = UIColor.clear
        self.glass1.Valor = 0
        self.glass2.Valor = 0
        slide()
    }
    
    func slide(){
        self.view.removeGestureRecognizer(self.Right)
        btnExit.isHidden    = true
        
        titulo.opacity      = 0.0
        titulo.animation    = "animalPop"
        titulo.curve        = "easeIn"
        titulo.delay        = 0.1
        titulo.duration     = 0.5
        titulo.animate()
        
        imgCenter.opacity      = 0.0
        imgCenter.animation    = "fadeIn"
        imgCenter.curve        = "easeIn"
        imgCenter.delay        = 0.5
        imgCenter.duration     = 0.5
        imgCenter.animate()
        
        sello.opacity      = 0.0
        sello.animation    = "fadeIn"
        sello.curve        = "easeIn"
        sello.delay        = 0.9
        sello.duration     = 0.5
        sello.animate()
        
        texto1.opacity      = 0.0
        texto1.animation    = "pop"
        texto1.curve        = "easeIn"
        texto1.delay        = 1.2
        texto1.duration     = 0.3
        texto1.animate()
        
        texto2.opacity      = 0.0
        texto2.animation    = "pop"
        texto2.curve        = "easeIn"
        texto2.delay        = 1.2
        texto2.duration     = 0.3
        texto2.animate()
        
        cal1FC.opacity      = 0.0
        cal1FC.animation    = "animalPop"
        cal1FC.curve        = "easeIn"
        cal1FC.delay        = 1.5
        cal1FC.duration     = 0.4
        cal1FC.animate()
        
        cal1.opacity      = 0.0
        cal1.animation    = "animalPop"
        cal1.curve        = "easeIn"
        cal1.delay        = 1.5
        cal1.duration     = 0.4
        cal1.animate()

        self.cal4.isHidden = true
        self.cal3.isHidden = true
        self.cal2.isHidden = true
        
        delay(delay:1.9){
            
            self.cal3.isHidden = false
            self.cal2.isHidden = false
            self.cal4.isHidden = false
            
            
            self.cal1FC.opacity      = 0.0
            self.cal1FC.animation    = "pop"
            self.cal1FC.curve        = "easeIn"
            self.cal1FC.delay        = 0.2
            self.cal1FC.duration     = 0.9
            self.cal1FC.repeatCount  = Float.infinity
            self.cal1FC.animate()
            
            self.cal1.opacity      = 0.0
            self.cal1.animation    = "fall"
            self.cal1.curve        = "easeIn"
            self.cal1.delay        = 0.2
            self.cal1.duration     = 3.0
            self.cal1.velocity     = 0.1
            self.cal1.animate()
            
            self.cal2.opacity      = 0.0
            self.cal2.animation    = "fall"
            self.cal2.curve        = "easeIn"
            self.cal2.delay        = 0.6
            self.cal2.duration     = 3.0
            self.cal2.velocity     = 0.1
            self.cal2.animate()
            
            self.cal3.opacity      = 0.0
            self.cal3.animation    = "fall"
            self.cal3.curve        = "easeIn"
            self.cal3.delay        = 1.0
            self.cal3.duration     = 3.0
            self.cal3.velocity     = 0.1
            self.cal3.animate()
            
            
        }
        
        
        delay(delay:3.0){
            self.btnExit.isHidden    = false
            self.view.addGestureRecognizer(self.Right)
            
        }
        
        delay(delay:1.5){
            
            self.gameTimer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(self.runTimedCode), userInfo: nil, repeats: true)
            
        }
        delay(delay:4.5){
            
            self.gameTimer.invalidate()
        }
        
        
    }
    
    func runTimedCode() {
        self.glass1.backgroundColor = UIColor.clear
        self.glass1.Valor = self.glass1.Valor + 20
        self.glass2.backgroundColor = UIColor.clear
        self.glass2.Valor = self.glass2.Valor + 10
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
