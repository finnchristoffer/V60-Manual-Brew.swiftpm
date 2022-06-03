//
//  V60Intro.swift
//  V60 Manual Brew
//
//  Created by Finn Christoffer Kurniawan on 19/04/22.
//

import Foundation
import UIKit

class V60Intro : UIViewController {
    
    var instructionProcess = 0
    
    var bgImage:UIImageView = {
        let bgImg = UIImageView()
        bgImg.frame.origin = CGPoint(x: 0, y: 0)
        bgImg.frame.size = CGSize(width: 1200, height: 1200)
        bgImg.image = UIImage(named: "Background.png")
        bgImg.contentMode = .scaleAspectFit
        
        return bgImg
    }()
    
    var labelIntro:UILabel = {
        let label = UILabel()
        label.frame.origin = CGPoint(x: 0, y: 0)
        label.frame.size = CGSize(width: 600, height: 200)
        label.numberOfLines = 0
        label.lineBreakMode = .byWordWrapping
        label.text = "Hi, my name is Finn Christoffer Kurniawan"
        label.font = UIFont.systemFont(ofSize: 30)
        label.alpha = 0
        
        return label
    }()
    
    var ImgAnimoji1:UIImageView = {
        let animoji1 = UIImageView()
        animoji1.frame.origin = CGPoint(x:0, y:0)
        animoji1.frame.size = CGSize(width: 400, height: 400)
        animoji1.image = UIImage(named: "hello.png")
        animoji1.contentMode = .scaleAspectFit
        animoji1.alpha = 1
        
        return animoji1
    }()
    
    var ImgAnimoji2:UIImageView = {
        let animoji2 = UIImageView()
        animoji2.frame.origin = CGPoint(x: 0, y: 0)
        animoji2.frame.size = CGSize(width: 400, height: 400)
        animoji2.image = UIImage(named: "confused.png")
        animoji2.contentMode = .scaleAspectFit
        animoji2.alpha = 0
        
        return animoji2
    }()
    
    var ImgAnimoji3:UIImageView = {
        let animoji3 = UIImageView()
        animoji3.frame.origin = CGPoint(x: 0, y: 0)
        animoji3.frame.size = CGSize(width: 400, height: 400)
        animoji3.image = UIImage(named: "recommend.png")
        animoji3.contentMode = .scaleAspectFit
        animoji3.alpha = 0

        return animoji3
    }()

    var ImgAnimoji4:UIImageView = {
        let animoji4 = UIImageView()
        animoji4.frame.origin = CGPoint(x: 0, y: 0)
        animoji4.frame.size = CGSize(width: 400, height: 400)
        animoji4.image = UIImage(named: "problem.png")
        animoji4.contentMode = .scaleAspectFit
        animoji4.alpha = 0
        
        return animoji4
    }()
    
    var ImgAnimoji5:UIImageView = {
        let animoji5 = UIImageView()
        animoji5.frame.origin = CGPoint(x: 0, y: 0)
        animoji5.frame.size = CGSize(width: 400, height: 400)
        animoji5.image = UIImage(named: "especially.png")
        animoji5.contentMode = .scaleAspectFit
        animoji5.alpha = 0
        
        return animoji5
    }()
    
    var ImgAnimoji6:UIImageView = {
        let animoji6 = UIImageView()
        animoji6.frame.origin = CGPoint(x: 0, y: 0)
        animoji6.frame.size = CGSize(width: 400, height: 400)
        animoji6.image = UIImage(named: "IWantYou.png")
        animoji6.contentMode = .scaleAspectFit
        animoji6.alpha = 0
        
        return animoji6
    }()
    
    var ImgAnimoji7:UIImageView = {
        let animoji7 = UIImageView()
        animoji7.frame.origin = CGPoint(x: 0, y: 0)
        animoji7.frame.size = CGSize(width: 400, height: 400)
        animoji7.image = UIImage(named: "teach.png")
        animoji7.contentMode = .scaleAspectFit
        animoji7.alpha = 0
        
        return animoji7
    }()


    
    var buttonLetsMake : UIButton = {
        let btnLets = UIButton()
        btnLets.frame.origin = CGPoint(x: 0, y: 0)
        btnLets.frame.size = CGSize(width: 150, height: 50)
        btnLets.setTitle("Preparation", for: .normal)
        btnLets.backgroundColor = .systemOrange
        btnLets.layer.cornerRadius = 10
        btnLets.alpha = 0
        
        return btnLets
    }()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //MARK: ImageBG
        bgImage.center = view.center
        view.addSubview(bgImage)
        
        //MARK: labelIntro
        labelIntro.center = view.center
        labelIntro.textAlignment = .justified
        labelIntro.frame.origin.y -= 300
        view.addSubview(labelIntro)
                
        view.addSubview(ImgAnimoji1)
        view.addSubview(ImgAnimoji2)
        view.addSubview(ImgAnimoji3)
        view.addSubview(ImgAnimoji4)
        view.addSubview(ImgAnimoji5)
        view.addSubview(ImgAnimoji6)
        view.addSubview(ImgAnimoji7)
        
        //MARK: ButtonLetsMake
        buttonLetsMake.center = view.center
        buttonLetsMake.frame.origin.y += 200
        view.addSubview(buttonLetsMake)
        buttonLetsMake.addTarget(self, action: #selector(actionGoToPreference(_:)), for: .touchUpInside)

        
        //MARK: Animation
        animateInstruction()
        setupHello()
    }
    
    func setupHello() {
        ImgAnimoji1.image = UIImage(named: "hello.png")
        ImgAnimoji1.frame = CGRect(x: 810, y: 0, width: 480, height: 480)
        ImgAnimoji1.contentMode = .scaleAspectFit
        ImgAnimoji1.alpha = 1
    }
    
    func animateInstruction() {
        if(instructionProcess == 0) {
            UIView.animate(withDuration: 0.5, delay: 0.5, options: .curveEaseOut, animations: {
                self.labelIntro.alpha = 1
            })
            { (completion) in
                Timer.scheduledTimer(withTimeInterval: 1.5, repeats: false, block: { (time) in
                    self.instructionProcess = 1
                    self.animateInstruction()
               })
           }
        }
        if(instructionProcess == 1) {
            UIView.animate(withDuration: 0.5, delay: 0, options: .curveEaseOut, animations: {
                self.labelIntro.alpha = 0
            }, completion: nil)
            UIView.animate(withDuration: 0.5, delay: 0.5, options: .curveEaseOut, animations: {
                self.labelIntro.alpha = 1
                self.labelIntro.text = "I’m a coffee enthusiast and former barista at a quite famous coffee shop in my city for almost 2 years."
                self.animateHelloOnScreen()
            })
            { (completion) in
                Timer.scheduledTimer(withTimeInterval: 5.0, repeats: false, block: { (time) in
                    self.instructionProcess = 2
                    self.animateInstruction()
                    self.animateHelloOffScreen()
                })
            }
        }
        if(instructionProcess == 2) {
            UIView.animate(withDuration: 0.5, delay: 0, options: .curveEaseOut, animations: {
                self.labelIntro.alpha = 0
            }, completion: nil)
            UIView.animate(withDuration: 0.5, delay: 0.5, options: .curveEaseOut, animations: {
                self.labelIntro.alpha = 1
                self.labelIntro.text = "As a barista, of course, I’ve also got a role as a cashier, sometimes I get confused if a customer asked for a coffee menu recommendation with a note they don’t want an espresso-based coffee drink."
                self.animateConfuseOnScreen()
            })
            { (completion) in
                Timer.scheduledTimer(withTimeInterval: 7.0, repeats: false, block: { (time) in
                    self.instructionProcess = 3
                    self.animateInstruction()
                    self.animateConfuseOffScreen()
                })
            }
        }
        if(instructionProcess == 3) {
            UIView.animate(withDuration: 0.5, delay: 0, options: .curveEaseOut, animations: {
                self.labelIntro.alpha = 0
            }, completion: nil)
            UIView.animate(withDuration: 0.5, delay: 0.5, options: .curveEaseOut, animations: {
                self.labelIntro.alpha = 1
                self.labelIntro.text = "Based on that situation, I usually recommend manual brew as an alternative to non-espresso coffee recommendations."
                self.animateRecommendOnScreen()
            })
            { (completion) in
                Timer.scheduledTimer(withTimeInterval: 5.0, repeats: false, block: { (time) in
                    self.instructionProcess = 4
                    self.animateInstruction()
                    self.animateRecommendOffScreen()
                })
            }
        }
        if(instructionProcess == 4) {
            UIView.animate(withDuration: 0.5, delay: 0, options: .curveEaseOut, animations: {
                self.labelIntro.alpha = 0
            }, completion: nil)
            UIView.animate(withDuration: 0.5, delay: 0.5, options: .curveEaseOut, animations: {
                self.labelIntro.alpha = 1
                self.labelIntro.text = "But the problem is, most customers will be confused when I offer this menu because it is not common and only coffee enthusiasts understand this."
                self.animateProblemOnScreen()
            })
            { (completion) in
                Timer.scheduledTimer(withTimeInterval: 6.0, repeats: false, block: { (time) in
                    self.instructionProcess = 5
                    self.animateInstruction()
                    self.animateProblemOffScreen()
                })
            }
        }
        if(instructionProcess == 5) {
            UIView.animate(withDuration: 0.5, delay: 0, options: .curveEaseOut, animations: {
                self.labelIntro.alpha = 0
            }, completion: nil)
            UIView.animate(withDuration: 0.5, delay: 0.5, options: .curveEaseOut, animations: {
                self.labelIntro.alpha = 1
                self.labelIntro.text = "Especially if you ask customers about their preferences, cold drink or hot drink because the name itself is also quite strange, the ice version is named Japanese and the hot version is named V60."
                self.animateEspeciallyOnScreen()
            })
            { (completion) in
                Timer.scheduledTimer(withTimeInterval: 6.0, repeats: false, block: { (time) in
                    self.instructionProcess = 6
                    self.animateInstruction()
                    self.animateEspeciallyOffScreen()
                })
            }
        }
        if(instructionProcess == 6) {
            UIView.animate(withDuration: 0.5, delay: 0, options: .curveEaseOut, animations: {
                self.labelIntro.alpha = 0
            }, completion: nil)
            UIView.animate(withDuration: 0.5, delay: 0.5, options: .curveEaseOut, animations: {
                self.labelIntro.alpha = 1
                self.labelIntro.text = "From that situation, I want you to know them too."
                self.labelIntro.alpha = 1
                self.animateIWantYouOnScreen()
            })
            { (completion) in
                Timer.scheduledTimer(withTimeInterval: 4.0, repeats: false, block: { (time) in
                    self.instructionProcess = 7
                    self.animateInstruction()
                    self.animateIWantYouOffScreen()
                })
            }
        }
        
        if(instructionProcess == 7) {
            UIView.animate(withDuration: 0.5, delay: 0, options: .curveEaseOut, animations: {
                self.labelIntro.alpha = 0
                self.buttonLetsMake.isHidden = false
            }, completion: nil)
            UIView.animate(withDuration: 0.5, delay: 0.5, options: .curveEaseOut, animations: {
                self.labelIntro.alpha = 1
                self.labelIntro.text = "Now I’ll teach you how to make manual brew using V60 method."
                self.buttonLetsMake.alpha = 1
                self.animateTeachOnScreen()
            })
        }
    }
    func animateHelloOnScreen() {
        UIView.animate(withDuration: 1.0, delay: 0.5, usingSpringWithDamping: 1.0, initialSpringVelocity: 1.0, options: UIView.AnimationOptions.curveEaseIn, animations: ({
            self.ImgAnimoji1.frame = CGRect(x: 50, y: 300, width: 300, height: 300)
        }))
    }
    
    func animateHelloOffScreen() {
        UIView.animate(withDuration: 1.0, delay: 0, usingSpringWithDamping: 1.0, initialSpringVelocity: 1.0, options: UIView.AnimationOptions.curveEaseIn, animations: ({
            self.ImgAnimoji1.frame = CGRect(x: -510, y: 0, width: 480, height: 480)
        }))
    }
    
    func animateConfuseOnScreen() {
        self.ImgAnimoji2.alpha = 1
        UIView.animate(withDuration: 1.0, delay: 0.5, usingSpringWithDamping: 1.0, initialSpringVelocity: 1.0, options: UIView.AnimationOptions.curveEaseIn, animations: ({
            self.ImgAnimoji2.frame = CGRect(x: 100, y: 400, width: 300, height: 300)
        }))
    }
    
    func animateConfuseOffScreen() {
        UIView.animate(withDuration: 1.0, delay: 0, usingSpringWithDamping: 1.0, initialSpringVelocity: 1.0, options: UIView.AnimationOptions.curveEaseIn, animations: ({
            self.ImgAnimoji2.frame = CGRect (x: -510, y: 0, width: 480, height: 480)
        }))
    }
    
    func animateRecommendOnScreen() {
        self.ImgAnimoji3.alpha = 1
        UIView.animate(withDuration: 1.0, delay: 0.5, usingSpringWithDamping: 1.0, initialSpringVelocity: 1.0, options: UIView.AnimationOptions.curveEaseIn, animations: ({
            self.ImgAnimoji3.frame = CGRect(x:100, y: 350, width: 300, height: 300)
        }))
    }

    func animateRecommendOffScreen() {
        UIView.animate(withDuration: 1.0, delay: 0, usingSpringWithDamping: 1.0, initialSpringVelocity: 1.0, options: UIView.AnimationOptions.curveEaseIn, animations: ({
            self.ImgAnimoji3.frame = CGRect (x: -510, y: 0, width: 480, height: 480)
        }))
    }
    
    func animateProblemOnScreen() {
        self.ImgAnimoji4.alpha = 1
        UIView.animate(withDuration: 1.0, delay: 0.5, usingSpringWithDamping: 1.0, initialSpringVelocity: 1.0, options: UIView.AnimationOptions.curveEaseIn, animations: ({
            self.ImgAnimoji4.frame = CGRect(x:100, y: 320, width: 300, height: 300)
        }))
    }

    func animateProblemOffScreen() {
        UIView.animate(withDuration: 1.0, delay: 0, usingSpringWithDamping: 1.0, initialSpringVelocity: 1.0, options: UIView.AnimationOptions.curveEaseIn, animations: ({
            self.ImgAnimoji4.frame = CGRect (x: -510, y: 0, width: 480, height: 480)
        }))
    }
    
    func animateEspeciallyOnScreen() {
        self.ImgAnimoji5.alpha = 1
        UIView.animate(withDuration: 1.0, delay: 0.5, usingSpringWithDamping: 1.0, initialSpringVelocity: 1.0, options: UIView.AnimationOptions.curveEaseIn, animations: ({
            self.ImgAnimoji5.frame = CGRect(x:100, y: 400, width: 300, height: 300)
        }))
    }

    func animateEspeciallyOffScreen() {
        UIView.animate(withDuration: 1.0, delay: 0, usingSpringWithDamping: 1.0, initialSpringVelocity: 1.0, options: UIView.AnimationOptions.curveEaseIn, animations: ({
            self.ImgAnimoji5.frame = CGRect (x: -510, y: 0, width: 480, height: 480)
        }))
    }
    
    func animateIWantYouOnScreen() {
        self.ImgAnimoji6.alpha = 1
        UIView.animate(withDuration: 1.0, delay: 0.5, usingSpringWithDamping: 1.0, initialSpringVelocity: 1.0, options: UIView.AnimationOptions.curveEaseIn, animations: ({
            self.ImgAnimoji6.frame = CGRect(x:80, y: 330, width: 300, height: 300)
        }))
    }

    func animateIWantYouOffScreen() {
        UIView.animate(withDuration: 1.0, delay: 0, usingSpringWithDamping: 1.0, initialSpringVelocity: 1.0, options: UIView.AnimationOptions.curveEaseIn, animations: ({
            self.ImgAnimoji6.frame = CGRect (x: -510, y: 0, width: 480, height: 480)
        }))
    }
    
    func animateTeachOnScreen() {
        self.ImgAnimoji7.alpha = 1
        UIView.animate(withDuration: 1.0, delay: 0.5, usingSpringWithDamping: 1.0, initialSpringVelocity: 1.0, options: UIView.AnimationOptions.curveEaseIn, animations: ({
            self.ImgAnimoji7.frame = CGRect(x:100, y: 340, width: 300, height: 300)
        }))
    }

    func animateTeachOffScreen() {
        UIView.animate(withDuration: 1.0, delay: 0, usingSpringWithDamping: 1.0, initialSpringVelocity: 1.0, options: UIView.AnimationOptions.curveEaseIn, animations: ({
            self.ImgAnimoji7.frame = CGRect (x: -510, y: 0, width: 480, height: 480)
        }))
    }

    @objc func actionGoToPreference(_ sender: UIButton) {
        view.buttonClicked()
        navigationController?.pushViewController(preparation1(), animated: true)
    }
}

