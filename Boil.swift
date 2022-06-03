import Foundation
import UIKit

public class preparation2: UIViewController{
    
    //MARK : My assets
    public let title1 = UILabel()
    let bgImgView = UIImageView()
    let details = UILabel()
    let thisView = UIView()
    
    fileprivate var ActS1 = UIImageView()
    fileprivate var ActS2 = UIImageView()
    fileprivate var preparationV0 = UIImageView()
    fileprivate var preparationV1 = UIImageView()
    fileprivate var preparationV2 = UIImageView()
        
    let menu = UIView()
    let Act1Label = UILabel()
    let Act2Label = UILabel()
    
    let Act1Check = UILabel()
    let Act2Check = UILabel()
    
    let instruction = UILabel()
    let labelInstruction = UILabel()
    
    let nextButton = UIButton()
    
    var steps : [String] = ["Put the kettle into heater by dragging it.",
            "Set the temperature to 200 F",
            "Congrats, preparation 2 finish."]
    
    var initAct1Frame : CGRect = CGRect(x: 35 , y: 30, width: 80, height: 80)
    var initAct2Frame = CGRect(x: 30 , y: 220, width: 100, height: 100)
    
    var onGoingStep = 0
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
                
        setupView()
    }
    
    func setupView(){
        
        nextButton.frame.origin = CGPoint(x: 0, y: 0)
        nextButton.frame.size = CGSize(width: 150, height: 50)
        nextButton.center = view.center
        nextButton.frame.origin.y += 400
        nextButton.setTitle("Go Next", for: .normal)
        nextButton.backgroundColor = .systemOrange
        nextButton.layer.cornerRadius = 10
        nextButton.isHidden = true
        nextButton.addTarget(self, action: #selector(btnNextScreen), for: .touchUpInside)
        view.addSubview(nextButton)
        
        bgImgView.image = UIImage (named: "Background.png")
        bgImgView.frame.origin = CGPoint(x: 0, y: 0)
        bgImgView.frame.size = CGSize(width: 1200, height: 1200)
        bgImgView.contentMode = .scaleAspectFit
        bgImgView.center = view.center
        view.addSubview(bgImgView)
        
        title1.text = "Preparation for hot water"
        title1.font = UIFont.boldSystemFont(ofSize: 35)
        title1.textColor = UIColor.black
        title1.textAlignment = NSTextAlignment.center
        title1.frame = CGRect(x:170, y:80, width: 510, height: 35)
        view.addSubview(title1)
        
        details.text = "In this preparation we use 1:16 ratio, it's mean 1 gram coffee = 16 ml hot water. So we prepare 320ml water."
        details.textColor = UIColor.black
        details.textAlignment = NSTextAlignment.center
        details.frame = CGRect(x:170, y:120, width: 600 - 90, height: 75)
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
        
        instruction.text = "Fill the kettle with 320ml water."
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
        
        preparationV0.image = UIImage(named: "heater.png")
        preparationV0.frame = CGRect(x: 250, y: 300, width: 500, height: 500)
        preparationV0.contentMode = .scaleAspectFit
        preparationV0.isHidden = false
        view.addSubview(preparationV0)
        
        preparationV1.image = UIImage(named: "heatOff.png")
        preparationV1.frame = CGRect(x: 250, y: 300, width: 500, height: 500)
        preparationV1.contentMode = .scaleAspectFit
        preparationV1.isHidden = true
        view.addSubview(preparationV1)
        
        preparationV2.image = UIImage(named: "heatUp.png")
        preparationV2.frame = CGRect(x: 250, y:300 , width: 500, height: 500)
        preparationV2.contentMode = .scaleAspectFit
        preparationV2.isHidden = true
        view.addSubview(preparationV2)
                
        //MARK : MENU VIEW
        
        view.addSubview(menu)
        menu.layer.borderColor = UIColor.black.cgColor
        menu.layer.borderWidth = 3
        menu.layer.cornerRadius = 10
        menu.frame = CGRect(x: 45, y: 330, width: 150, height: 400)
        
        menu.addSubview(Act1Label)
        Act1Label.frame = CGRect(x: 0, y: 115, width: 150, height: 50)
        Act1Label.text = "1. 320ml water"
        Act1Label.font = Act1Label.font.withSize(13)
        Act1Label.textAlignment = NSTextAlignment.center
        Act1Label.textColor = UIColor.black
        
        menu.addSubview(Act2Label)
        Act2Label.frame = CGRect(x: 0, y: 325, width: 150, height: 50)
        Act2Label.text = "2. Turn on heater"
        Act2Label.font = Act2Label.font.withSize(13)
        Act2Label.textAlignment = NSTextAlignment.center
        Act2Label.textColor = UIColor.black
        
        menu.addSubview(ActS1)
        ActS1.image = UIImage(named: "kettledefault.png")
        ActS1.frame = CGRect(x: 35 , y: 30, width: 80, height: 80)
        addShadow(ActS1)
        ActS1.contentMode = .scaleAspectFit
        
        menu.addSubview(ActS2)
        ActS2.image = UIImage(named: "hand.png")
        ActS2.frame = CGRect(x: 30 , y: 220, width: 100, height: 100)
        ActS2.contentMode = .scaleAspectFit

        menu.addSubview(Act1Check)
        Act1Check.text = "✅"
        Act1Check.textAlignment = NSTextAlignment.center
        Act1Check.font = Act1Check.font.withSize(35)
        Act1Check.frame = CGRect(x: 0 , y: 30, width: 150, height: 80)
        Act1Check.isHidden = true
        
        menu.addSubview(Act2Check)
        Act2Check.text = "✅"
        Act2Check.textAlignment = NSTextAlignment.center
        Act2Check.font = Act2Check.font.withSize(35)
        Act2Check.frame = CGRect(x: 0 , y: 220, width: 150, height: 100)
        Act2Check.isHidden = true
                
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
                self.nextButton.isHidden = false
            }, completion: nil)
        }
    }
    
    @objc func checkingForMatch(_ loc : CGPoint, _ onStep : Int) {

        let bahan = loc
        if preparationV0.frame.contains(bahan) && (onGoingStep == 1) {
            //self.putSound()
            ActS2.isHidden = true
            preparationV2.isHidden = false
            preparationV1.isHidden = true
            preparationV0.isHidden = true
            Act2Check.isHidden = false
            onGoingStep = 2
            changeInstructions()
            view.putSound()
        } else {
            ActS2.frame = initAct2Frame
        }
        
        if preparationV0.frame.contains(bahan) && (onGoingStep == 0) {
            //self.putSound()
            ActS1.isHidden = true
            preparationV1.isHidden = false
            preparationV0.isHidden = true
            Act1Check.isHidden = false
            addShadow(ActS2)
            onGoingStep = 1
            changeInstructions()
            view.putSound()
        } else {
            ActS1.frame = initAct1Frame
        }
    }
    public override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        for touch in touches {
            let location = touch.location(in: menu)
            if ActS1.frame.contains(location) && onGoingStep==0 {
                ActS1.center = location
            }
            if ActS2.frame.contains(location) && onGoingStep==1 {
                ActS2.center = location
            }
        }
    }
    //touches events
    public override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesMoved(touches, with: event)
        let touch = touches.first!
        let location = touch.location(in: menu)
        if ActS1.frame.contains(location) && onGoingStep == 0{
            ActS1.center = location
        }
        if ActS2.frame.contains(location) && onGoingStep==1 {
            ActS2.center = location
        }
    }
    
    public override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesMoved(touches, with: event)
        let touch = touches.first!
        let location = touch.location(in: view)
        checkingForMatch(location, onGoingStep)
    }
    
    @objc func btnNextScreen(sender: UIButton) {
        navigationController?.pushViewController(Preference(), animated: true)
        view.buttonClicked()
    }
    
}

