//
//  Producto1ViewController.swift
//  galderma2017
//
//  Created by Francisco Barrios Romo on 05-02-17.
//  Copyright © 2017 RentalApps. All rights reserved.
//

import UIKit
import Spring

class Producto1ViewController: UIViewController {
    @IBOutlet weak var btnBack: UIButton!
    @IBOutlet weak var btnMenu: UIBarButtonItem!
    @IBOutlet weak var btnMenuSlideRight: UIButton!
    
    @IBOutlet var Left: UISwipeGestureRecognizer!
    
    @IBOutlet var titulo: SpringImageView!
    
    @IBOutlet var malOlor: SpringImageView!
    @IBOutlet var microbios: SpringImageView!
    @IBOutlet var infecciones: SpringImageView!
    @IBOutlet var inseguridad: SpringImageView!
    @IBOutlet var desconfianza: SpringImageView!
    
    @IBOutlet var burbuja: SpringImageView!
    
    @IBOutlet var girl: SpringImageView!
    
    @IBOutlet var btn2: UIButton!
    @IBOutlet var btn3: UIButton!
    @IBOutlet var btn1: UIButton!
    
    @IBOutlet var imgBtn1: SpringImageView!
    @IBOutlet var imgBtn2: SpringImageView!
    @IBOutlet var imgBtn3: SpringImageView!
   
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
        self.view.removeGestureRecognizer(self.Left)
        btn1.isHidden = true
        btn2.isHidden = true
        btn3.isHidden = true
        
        girl.opacity      = 0.0
        girl.animation    = "fadeInUp"
        girl.curve        = "easeIn"
        girl.delay        = 0.1
        girl.duration     = 0.5
        girl.animate()
        
    
        titulo.opacity      = 0.0
        titulo.animation    = "animalPop"
        titulo.curve        = "easeIn"
        titulo.delay        = 1.5
        titulo.duration     = 0.4
        titulo.animate()
        
        imgBtn1.opacity      = 0.0
        imgBtn1.animation    = "fadeInRight"
        imgBtn1.curve        = "easeIn"
        imgBtn1.delay        = 1.7
        imgBtn1.duration     = 0.5
        imgBtn1.animate()
        
        imgBtn2.opacity      = 0.0
        imgBtn2.animation    = "fadeInLeft"
        imgBtn2.curve        = "easeIn"
        imgBtn2.delay        = 1.9
        imgBtn2.duration     = 0.5
        imgBtn2.animate()
        
        imgBtn3.opacity      = 0.0
        imgBtn3.animation    = "fadeInLeft"
        imgBtn3.curve        = "easeIn"
        imgBtn3.delay        = 2.1
        imgBtn3.duration     = 0.5
        imgBtn3.animate()
        
        burbuja.opacity      = 0.0
        burbuja.animation    = "morphAnimal"
        burbuja.curve        = "easeIn"
        burbuja.delay        = 0.1
        burbuja.duration     = 1.5
        burbuja.damping      = 0.7
        burbuja.repeatCount = Float.infinity
        burbuja.force       = 1.0
        burbuja.animate()
        
        
      
        Animate(x1: 300, y1: 0, x2: 700, y2: 0, imagen: infecciones,px1: 512, py1: 250, px2: 570, py2: 90, duration: 1.0,mode: kCAAnimationRotateAuto)
        
        Animate(x1: 1024, y1: 100, x2: 623, y2: 0, imagen: inseguridad,px1: 700, py1: 400, px2: 690, py2: 100, duration: 1.5,mode: kCAAnimationRotateAutoReverse)
        
        Animate(x1: 0, y1: 600, x2: 0, y2: 450, imagen: malOlor,px1: 120, py1: 570, px2: 50, py2: 530, duration: 1.5,mode: kCAAnimationRotateAuto)
        
        Animate(x1: 0, y1: 630, x2: 90, y2: 800, imagen: microbios,px1:250, py1: 680, px2: 50, py2: 700, duration: 1.3,mode: kCAAnimationRotateAuto)
        
        Animate(x1:1024, y1: 200, x2: 1024, y2: 390, imagen: desconfianza,px1:680, py1: 300, px2: 1000, py2: 350, duration: 1.1,mode: kCAAnimationCubicPaced)
        
        delay(delay:2.7){
            self.view.addGestureRecognizer(self.Left)
            self.btn1.isHidden = false
            self.btn2.isHidden = false
            self.btn3.isHidden = false
        }
        
        
    self.view.addGestureRecognizer(self.Left)
    }
    
    func Animate(x1: Int,y1: Int,x2: Int,y2: Int, imagen :SpringImageView!,px1: Int,py1: Int,px2: Int,py2: Int, duration: CFTimeInterval, mode:String){
   
        let path = UIBezierPath()
        path.move(to: CGPoint(x: x1,y: y1))
        path.addCurve(to: CGPoint(x: x2, y: y2), controlPoint1: CGPoint(x: px1, y: py1), controlPoint2: CGPoint(x: px2, y: py2))
        
        // create a new CAKeyframeAnimation that animates the objects position
        let anim = CAKeyframeAnimation(keyPath: "position")
        
        // set the animations path to our bezier curve
        anim.path = path.cgPath
        
        // set some more parameters for the animation
        // this rotation mode means that our object will rotate so that it's parallel to whatever point it is currently on the curve
        anim.rotationMode = mode
        anim.repeatCount = Float.infinity
    
        anim.duration = duration
        /*
        anim.duration = Double(arc4random_uniform(40)+30) / 10
        
        // stagger each animation by a random value
        // `290` was chosen simply by experimentation
        anim.timeOffset = Double(arc4random_uniform(290))
        */
        // we add the animation to the squares 'layer' property
        imagen.layer.add(anim, forKey: "animate position along path")
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

