//
//  P1Pop1ViewController.swift
//  galderma2017
//
//  Created by Francisco Barrios Romo on 18-03-17.
//  Copyright © 2017 RentalApps. All rights reserved.
//

import UIKit
import Spring

class P1Pop1ViewController: UIViewController {
    @IBOutlet var btnExit: UIButton!
    
    @IBOutlet var titulo: SpringImageView!
    @IBOutlet var item1: SpringImageView!
    @IBOutlet var item2: SpringImageView!
    
    @IBOutlet var click: SpringImageView!
    
    @IBOutlet var texto1: SpringImageView!
    @IBOutlet var texto2: SpringImageView!
    @IBOutlet var texto3: SpringImageView!
    @IBOutlet var texto4: SpringImageView!
    
    @IBOutlet var n1: SpringImageView!
    @IBOutlet var n2: SpringImageView!
    @IBOutlet var n3: SpringImageView!
    @IBOutlet var n4: SpringImageView!
    
    @IBOutlet var barra: BarraView!
    
    var gameTimer: Timer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        barra.backgroundColor = UIColor.clear
        self.barra.Valor = 20
        slide()
        
    }
    
    func slide(){
        btnExit.isHidden    = true
       
        titulo.opacity      = 0.0
        titulo.animation    = "animalPop"
        titulo.curve        = "easeIn"
        titulo.delay        = 0.1
        titulo.duration     = 0.5
        titulo.animate()
        
        item1.opacity      = 0.0
        item1.animation    = "fadeIn"
        item1.curve        = "easeIn"
        item1.delay        = 0.4
        item1.duration     = 0.5
        item1.animate()
        
        item2.opacity      = 0.0
        item2.animation    = "animalPop"
        item2.curve        = "easeIn"
        item2.delay        = 0.9
        item2.duration     = 0.5
        item2.animate()
        
        delay(delay:1.5){
            
            self.gameTimer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(self.runTimedCode), userInfo: nil, repeats: true)
        }
        delay(delay:2.0){
        
                self.gameTimer.invalidate()
        }
 
        
        delay(delay:2.5){
            self.btnExit.isHidden    = false
        
            //self.barra.draw(CGRect(x: 0, y: 0, width: 1024, height: 465))
        }
        
    }
    
    func runTimedCode() {
        self.barra.backgroundColor = UIColor.clear
        self.barra.Valor = self.barra.Valor + 5
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

