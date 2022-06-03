import Foundation
import UIKit

public class japaneseIce: UIViewController{
    
    //MARK : My assets
    public let title1 = UILabel()
    let bgImgView = UIImageView()
    let details = UILabel()
    let thisView = UIView()
    
    fileprivate var pourS1 = UIImageView()
    fileprivate var pourS2 = UIImageView()
    fileprivate var pourS3 = UIImageView()
    fileprivate var japaneseV0 = UIImageView()
    fileprivate var japaneseV1 = UIImageView()
    fileprivate var japaneseV2 = UIImageView()
    fileprivate var japaneseV3 = UIImageView()
    
    let finalView = UIView()
    let blur = UIView()
    let greeting = UILabel()
    let finalCoffee = UIImageView()
    
    let menu = UIView()
    let Pour1Label = UILabel()
    let Pour2Label = UILabel()
    let Pour3Label = UILabel()
    
    let pour1Check = UILabel()
    let Pour2Check = UILabel()
    let Pour3Check = UILabel()
    
    let instruction = UILabel()
    let labelInstruction = UILabel()
    
    var steps : [String] = ["Pour gently 40ml hot water to the empty cup by dragging it.",
            "That's called blooming session, now add more 60 ml hot water to the dripper",
            "After second pouring session the coffee already build up the flavor, now add more 60 ml hot water to finish it",
            "Take off your dripper, and enjoy your drink."]
    
    var initPour1Frame : CGRect = CGRect(x: 35 , y: 30, width: 80, height: 80)
    var initPour2Frame = CGRect(x: 30 , y: 220, width: 100, height: 100)
    var initPour3Frame = CGRect(x: 25 , y: 410, width: 120, height: 120)

    
    var onGoingStep = 0
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
                
        setupView()
    }
    
    func setupView(){
        
        bgImgView.image = UIImage (named: "Background.png")
        bgImgView.frame.origin = CGPoint(x: 0, y: 0)
        bgImgView.frame.size = CGSize(width: 1200, height: 1200)
        bgImgView.contentMode = .scaleAspectFit
        bgImgView.center = view.center
        view.addSubview(bgImgView)
        
        title1.text = "Japanese Ice Coffee"
        title1.font = UIFont.boldSystemFont(ofSize: 35)
        title1.textColor = UIColor.black
        title1.textAlignment = NSTextAlignment.center
        title1.frame = CGRect(x:170, y:80, width: 510, height: 35)
        view.addSubview(title1)
        
        details.text = "Japanese-style iced coffee is simply coffee that is brewed hot directly onto ice, which chills it rapidly. Exactly how you do this is up to you. You can brew the coffee in any number of pour-over devices, whether a Hario V60, Melitta pour-over cone, Kalita Wave, Chemex, etc."
        details.textColor = UIColor.black
        details.textAlignment = NSTextAlignment.center
        details.frame = CGRect(x:140, y:120, width: 600 - 90, height: 75)
        details.lineBreakMode = .byWordWrapping
        details.numberOfLines = 5
        details.layer.cornerRadius = 10
        details.layer.borderWidth = 3
        details.layer.borderColor = UIColor.black.cgColor
        view.addSubview(details)
        
        labelInstruction.text = " 📝 Steps :"
        labelInstruction.font = labelInstruction.font.withSize(20)
        labelInstruction.frame = CGRect(x: 45, y: 267, width: 600 - 45, height: 20)
        view.addSubview(labelInstruction)
        
        instruction.text = "We Use 160 gram Ice Cube for Japanese Ice Coffee"
        instruction.font = UIFont.boldSystemFont(ofSize: 20)
        instruction.frame = CGRect(x: 45, y: 257, width: 700, height: 103)
        instruction.textAlignment = NSTextAlignment.left
        instruction.lineBreakMode = .byWordWrapping
        instruction.numberOfLines = 5
        instruction.layer.shadowColor = UIColor.yellow.cgColor
        instruction.layer.shadowOffset = CGSize(width: 2, height: 2)
        instruction.layer.shadowOpacity = 1
        instruction.layer.shadowRadius = 2.0
        instruction.clipsToBounds = false
        view.addSubview(instruction)
        
        japaneseV0.image = UIImage(named: "JapaneseS1.png")
        japaneseV0.frame = CGRect(x: 250, y: 370, width: 500, height: 500)
        japaneseV0.contentMode = .scaleAspectFit
        japaneseV0.isHidden = false
        view.addSubview(japaneseV0)
        
        japaneseV1.image = UIImage(named: "JapaneseS2.png")
        japaneseV1.frame = CGRect(x: 250, y: 370, width: 500, height: 500)
        japaneseV1.contentMode = .scaleAspectFit
        japaneseV1.isHidden = true
        view.addSubview(japaneseV1)
        
        japaneseV2.image = UIImage(named: "JapaneseS3.png")
        japaneseV2.frame = CGRect(x: 250, y:370 , width: 500, height: 500)
        japaneseV2.contentMode = .scaleAspectFit
        japaneseV2.isHidden = true
        view.addSubview(japaneseV2)
        
        japaneseV3.image = UIImage(named: "JapaneseS4.png")
        japaneseV3.frame = CGRect(x: 250, y:370 , width: 500, height: 500)
        japaneseV3.contentMode = .scaleAspectFit
        japaneseV3.isHidden = true
        view.addSubview(japaneseV3)
        
        //MARK : MENU VIEW
        
        view.addSubview(menu)
        menu.layer.borderColor = UIColor.black.cgColor
        menu.layer.borderWidth = 3
        menu.layer.cornerRadius = 10
        menu.frame = CGRect(x: 45, y: 330, width: 150, height: 600)
        
        menu.addSubview(Pour1Label)
        Pour1Label.frame = CGRect(x: 0, y: 115, width: 150, height: 50)
        Pour1Label.text = "1. ~40ml of hot water"
        Pour1Label.font = Pour1Label.font.withSize(13)
        Pour1Label.textAlignment = NSTextAlignment.center
        Pour1Label.textColor = UIColor.black
        
        menu.addSubview(Pour2Label)
        Pour2Label.frame = CGRect(x: 0, y: 325, width: 150, height: 50)
        Pour2Label.text = "2. ~60ml of hot water"
        Pour2Label.font = Pour2Label.font.withSize(13)
        Pour2Label.textAlignment = NSTextAlignment.center
        Pour2Label.textColor = UIColor.black
        
        menu.addSubview(Pour3Label)
        Pour3Label.frame = CGRect(x: 0, y: 535, width: 150, height: 50)
        Pour3Label.text = "3. ~60ml of hot water"
        Pour3Label.font = Pour3Label.font.withSize(13)
        Pour3Label.textAlignment = NSTextAlignment.center
        Pour3Label.textColor = UIColor.black
        
        
        menu.addSubview(pourS1)
        pourS1.image = UIImage(named: "Kettle.png")
        pourS1.frame = CGRect(x: 35 , y: 30, width: 80, height: 80)
        addShadow(pourS1)
        pourS1.contentMode = .scaleAspectFit
        
        menu.addSubview(pourS2)
        pourS2.image = UIImage(named: "Kettle.png")
        pourS2.frame = CGRect(x: 30 , y: 220, width: 100, height: 100)
        pourS2.contentMode = .scaleAspectFit

        menu.addSubview(pourS3)
        pourS3.image = UIImage(named: "Kettle.png")
        pourS3.frame = CGRect(x: 30 , y: 410, width: 120, height: 100)
        pourS3.contentMode = .scaleAspectFit


        menu.addSubview(pour1Check)
        pour1Check.text = "✅"
        pour1Check.textAlignment = NSTextAlignment.center
        pour1Check.font = pour1Check.font.withSize(35)
        pour1Check.frame = CGRect(x: 0 , y: 30, width: 150, height: 80)
        pour1Check.isHidden = true
        
        menu.addSubview(Pour2Check)
        Pour2Check.text = "✅"
        Pour2Check.textAlignment = NSTextAlignment.center
        Pour2Check.font = pour1Check.font.withSize(35)
        Pour2Check.frame = CGRect(x: 0 , y: 220, width: 150, height: 100)
        Pour2Check.isHidden = true
        
        menu.addSubview(Pour3Check)
        Pour3Check.text = "✅"
        Pour3Check.textAlignment = NSTextAlignment.center
        Pour3Check.font = pour1Check.font.withSize(35)
        Pour3Check.frame = CGRect(x: 0 , y: 410, width: 150, height: 120)
        Pour3Check.isHidden = true

        
        //MARK : FINAL VIEW
        blur.frame = CGRect(x: 0, y: 0, width: 1500, height: 1500)
        blur.backgroundColor = UIColor.black
        blur.alpha = 0
        view.addSubview(blur)
        
        view.addSubview(finalView)
        finalView.frame = CGRect(x: 0, y: 0, width: 550, height: 650)
        finalView.layer.cornerRadius = 18
        finalView.backgroundColor = .white
        finalView.center = view.center
        finalView.alpha = 0
        
        finalView.addSubview(greeting)
        greeting.text = "Enjoy your Japanese Manual Brew!"
        greeting.frame = CGRect(x: 30, y: 20, width: 450, height: 40)
        greeting.font = Pour1Label.font.withSize(30)
        greeting.textAlignment = NSTextAlignment.center
        greeting.textColor = UIColor.black
        
        finalView.addSubview(finalCoffee)
        finalCoffee.image = UIImage(named: "IceManualBrew.png")
        finalCoffee.frame  = CGRect(x: 80, y: 120, width: 450, height: 450)
        
        finalView.isHidden = true
        blur.isHidden = true
        
    }

    func addShadow(_ ingredient: UIImageView){
        ingredient.layer.shadowColor = UIColor.yellow.cgColor
        ingredient.layer.shadowOffset = CGSize(width: 2, height: 2)
        ingredient.layer.shadowOpacity = 1
        ingredient.layer.shadowRadius = 2.0
        ingredient.clipsToBounds = false
    }
    
    func changeInstructions(){
        if(onGoingStep == 0) {
            UIView.animate(withDuration: 0.5, delay: 0, options: .curveEaseOut, animations: {
                self.instruction.alpha = 0
            }, completion: nil)
            
            UIView.animate(withDuration: 0.5, delay: 0.5, options: .curveEaseOut, animations: {
                self.instruction.alpha = 1
                self.instruction.text = self.steps[0]
            }, completion: nil)
        }
        if(onGoingStep == 1) {
            UIView.animate(withDuration: 0.5, delay: 0, options: .curveEaseOut, animations: {
                self.instruction.alpha = 0
            }, completion: nil)
            
            UIView.animate(withDuration: 0.5, delay: 0.5, options: .curveEaseOut, animations: {
                self.instruction.alpha = 1
                self.instruction.text = self.steps[1]
            }, completion: nil)
        }
        if(onGoingStep == 2) {
            UIView.animate(withDuration: 0.5, delay: 0, options: .curveEaseOut, animations: {
                self.instruction.alpha = 0
            }, completion: nil)
            
            UIView.animate(withDuration: 0.5, delay: 0.5, options: .curveEaseOut, animations: {
                self.instruction.alpha = 1
                self.instruction.text = self.steps[2]
            }, completion: nil)
        }
        if(onGoingStep == 3) {
            UIView.animate(withDuration: 0.5, delay: 0, options: .curveEaseOut, animations: {
                    self.instruction.alpha = 0
                }, completion: nil)
                
            UIView.animate(withDuration: 0.5, delay: 0.5, options: .curveEaseOut, animations: {
                self.instruction.alpha = 1
                self.instruction.text = self.steps[3]
                }, completion: nil)
            
        
            setFinalView()
        }
    }
    
    @objc func checkingForMatch(_ loc : CGPoint, _ onStep : Int) {

        let bahan = loc
        if japaneseV0.frame.contains(bahan) && (onGoingStep == 2) {
            //self.putSound()
            pourS3.isHidden = true
            japaneseV3.isHidden = false
            japaneseV2.isHidden = true
            japaneseV1.isHidden = true
            japaneseV0.isHidden = true
            Pour3Check.isHidden = false
            addShadow(pourS2)
            onGoingStep = 3
            changeInstructions()
            view.pouringWaterHot()
        } else {
            pourS3.frame = initPour3Frame
        }
        
        if japaneseV0.frame.contains(bahan) && (onGoingStep == 1) {
            //self.putSound()
            pourS2.isHidden = true
            japaneseV2.isHidden = false
            japaneseV1.isHidden = true
            japaneseV0.isHidden = true
            Pour2Check.isHidden = false
            addShadow(pourS3)
            onGoingStep = 2
            changeInstructions()
            view.pouringWaterHot()
        } else {
            pourS2.frame = initPour2Frame
        }
        
        if japaneseV0.frame.contains(bahan) && (onGoingStep == 0) {
            //self.putSound()
            pourS1.isHidden = true
            japaneseV1.isHidden = false
            japaneseV0.isHidden = true
            pour1Check.isHidden = false
            addShadow(pourS2)
            onGoingStep = 1
            changeInstructions()
            view.pouringWaterHot()
        } else {
            pourS1.frame = initPour1Frame
        }
    }
    public override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        for touch in touches {
            let location = touch.location(in: menu)
            if pourS1.frame.contains(location) && onGoingStep==0 {
                pourS1.center = location
            }
            if pourS2.frame.contains(location) && onGoingStep==1 {
                pourS2.center = location
            }
            if pourS3.frame.contains(location) && onGoingStep==2 {
                pourS3.center = location
            }
        }
    }
    //touches events
    public override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesMoved(touches, with: event)
        let touch = touches.first!
        let location = touch.location(in: menu)
        if pourS1.frame.contains(location) && onGoingStep == 0{
            pourS1.center = location
        }
        if pourS2.frame.contains(location) && onGoingStep==1 {
            pourS2.center = location
        }
        if pourS3.frame.contains(location) && onGoingStep==2 {
            pourS3.center = location
        }
    }
    
    public override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesMoved(touches, with: event)
        let touch = touches.first!
        let location = touch.location(in: view)
        checkingForMatch(location, onGoingStep)
    }
    
    func setFinalView(){
        UIView.animate(withDuration: 2.0, delay: 1.0) {
            [unowned self] in
               self.finalView.isHidden = false
               self.blur.isHidden = false
               self.blur.alpha = 0.65
               self.finalView.alpha = 1
               //print("lol")
        } completion: { _ in //(Bool) in
            self.view.enjoyYourJapanese()
        }
    }
}

