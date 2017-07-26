//
//  Producto7Slide2ViewController.swift
//  galderma2017
//
//  Created by Francisco Barrios Romo on 16-04-17.
//  Copyright © 2017 RentalApps. All rights reserved.
//

import UIKit
import Spring

class Producto7Slide2ViewController: UIViewController {

    @IBOutlet var btnExit: UIButton!
    
    @IBOutlet var Left: UISwipeGestureRecognizer!
    @IBOutlet var Right: UISwipeGestureRecognizer!
    
    @IBOutlet var titulo: SpringImageView!
    @IBOutlet var imgCenter: SpringImageView!
    @IBOutlet var texto: SpringImageView!
    @IBOutlet var footer: SpringImageView!
    
    @IBOutlet var sello: SpringImageView!
    
    @IBOutlet var Volumen: VolumenView!
    var gameTimer: Timer!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        Volumen.backgroundColor = UIColor.clear
        slide()
    }
    
    func slide(){
        self.view.removeGestureRecognizer(self.Left)
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
        imgCenter.delay        = 2.5
        imgCenter.duration     = 0.5
        imgCenter.animate()
        
        texto.opacity      = 0.0
        texto.animation    = "animalPop"
        texto.curve        = "easeIn"
        texto.delay        = 0.9
        texto.duration     = 0.5
        texto.animate()
        
        footer.opacity      = 0.0
        footer.animation    = "animalPop"
        footer.curve        = "easeIn"
        footer.delay        = 1.4
        footer.duration     = 0.5
        footer.animate()
        
        sello.opacity      = 0.0
        sello.animation    = "animalPop"
        sello.curve        = "easeIn"
        sello.delay        = 2.0
        sello.duration     = 0.5
        sello.animate()
        
        delay(delay:1.5){
            
            self.gameTimer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(self.runTimedCode), userInfo: nil, repeats: true)
        }
        delay(delay:2.5){
            
            self.gameTimer.invalidate()
        }
        
        delay(delay:3.0){
            self.btnExit.isHidden    = false
            self.view.addGestureRecognizer(self.Left)
            self.view.addGestureRecognizer(self.Right)
        }

        
    }
    
    func runTimedCode() {
        self.Volumen.backgroundColor = UIColor.clear
        self.Volumen.Valor = self.Volumen.Valor - 90
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
