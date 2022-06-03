import UIKit
import Foundation

class WelcomePage: UIViewController {
    
    // Create a computed properties as a container for UIKit object
    var labelWelcome:UILabel = {
        let label = UILabel()
        label.frame.origin = CGPoint(x: 0, y: 0)
        label.frame.size = CGSize(width: 500, height: 100)
        label.text = "Manual Brew ?"
        label.font = UIFont.systemFont(ofSize: 56)
        
        return label
    }()
    
    var bgImage:UIImageView = {
        let bgImg = UIImageView()
        bgImg.frame.origin = CGPoint(x: 0, y: 0)
        bgImg.frame.size = CGSize(width: 1200, height: 1200)
        bgImg.image = UIImage(named: "Background.png")
        bgImg.contentMode = .scaleAspectFit
        
        return bgImg
    }()
    
    var bannerImage:UIImageView = {
        let bannerImage = UIImageView()
        bannerImage.frame.origin = CGPoint(x: 0, y: 0)
        bannerImage.frame.size = CGSize(width: 500, height: 500)
        bannerImage.image = UIImage(named: "Pouring.png")
        bannerImage.contentMode = .scaleAspectFill
        
        return bannerImage
    }()
    
    var buttonClickMe : UIButton = {
        let btn = UIButton()
        btn.frame.origin = CGPoint(x: 0, y: 0)
        btn.frame.size = CGSize(width: 150, height: 50)
        btn.setTitle("Start Now", for: .normal)
        btn.backgroundColor = .systemOrange
        btn.layer.cornerRadius = 10
        
        return btn
    }()
    
        
    override func viewDidLoad() {
        super.viewDidLoad()
        //MARK: Background Sound
        view.playBgSound()
        
        //MARK: Label Welcome
        labelWelcome.center = view.center
        labelWelcome.textAlignment = .center
        view.addSubview(labelWelcome)
        
        
        //MARK: ImageBG
        bgImage.center = view.center
        view.addSubview(bgImage)
        
        
        //MARK: ImageBanner
        bannerImage.center = view.center
        bannerImage.frame.origin.y -= 300
        view.addSubview(bannerImage)
        
        //MARK: Button
        buttonClickMe.center = view.center
        buttonClickMe.frame.origin.y += 150
        view.addSubview(buttonClickMe)
        
        // Adding action to the button
        buttonClickMe.addTarget(self, action: #selector(actionGoToV60Intro), for: .touchUpInside)
    }
    
    @objc func actionGoToV60Intro(sender: UIButton) {
        view.buttonClicked()
        navigationController?.pushViewController(V60Intro(), animated: true)
    }
    
}

