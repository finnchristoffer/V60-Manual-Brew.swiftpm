//
//  Preference.swift
//  V60 Manual Brew
//
//  Created by Finn Christoffer Kurniawan on 21/04/22.
//

import Foundation
import UIKit

class Preference : UIViewController{
    
    var bgImage:UIImageView = {
        let bgImg = UIImageView()
        bgImg.frame.origin = CGPoint(x: 0, y: 0)
        bgImg.frame.size = CGSize(width: 1200, height: 1200)
        bgImg.image = UIImage(named: "Background.png")
        bgImg.contentMode = .scaleAspectFit
        
        return bgImg
    }()
    
    var labelPreferences:UILabel = {
        let label = UILabel()
        label.frame.origin = CGPoint(x: 0, y: 0)
        label.frame.size = CGSize(width: 500, height: 300)
        label.numberOfLines = 0
        label.lineBreakMode = .byWordWrapping
        label.text = "Choose Your Preferences \n Manual Brew :"
        label.font = UIFont.systemFont(ofSize: 32)
        
        return label
    }()
    
    var buttonJapanese : UIButton = {
        let btnJapan = UIButton()
        btnJapan.frame.origin = CGPoint(x: 0, y: 0)
        btnJapan.frame.size = CGSize(width: 200, height: 100)
        btnJapan.setTitle("Japanese", for: .normal)
        btnJapan.titleLabel?.font = UIFont.boldSystemFont(ofSize: 36)
        btnJapan.backgroundColor = .systemOrange
        btnJapan.layer.cornerRadius = 20
        btnJapan.layer.borderWidth = 3
        btnJapan.layer.borderColor = UIColor.black.cgColor
        
        return btnJapan
    }()

    var buttonHotV60 : UIButton = {
        let btnV60 = UIButton()
        btnV60.frame.origin = CGPoint(x: 0, y: 0)
        btnV60.frame.size = CGSize(width: 200, height: 100)
        btnV60.setTitle("Hot V60", for: .normal)
        btnV60.titleLabel?.font = UIFont.boldSystemFont(ofSize: 36)
        btnV60.backgroundColor = .systemOrange
        btnV60.layer.cornerRadius = 20
        btnV60.layer.borderWidth = 3
        btnV60.layer.borderColor = UIColor.black.cgColor
        
        return btnV60
    }()
    
    var IceManualBrewImage:UIImageView = {
        let bannerImage = UIImageView()
        bannerImage.frame.origin = CGPoint(x: 0, y: 0)
        bannerImage.frame.size = CGSize(width: 350, height: 350)
        bannerImage.image = UIImage(named: "IceManualBrew.png")
        bannerImage.contentMode = .scaleAspectFill
        
        return bannerImage
    }()
    
    var HotManualBrewImage:UIImageView = {
        let bannerImage = UIImageView()
        bannerImage.frame.origin = CGPoint(x: 0, y: 0)
        bannerImage.frame.size = CGSize(width: 350, height: 350)
        bannerImage.image = UIImage(named: "HotManualBrew.png")
        bannerImage.contentMode = .scaleAspectFill
        
        return bannerImage
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //MARK: Background Image
        bgImage.center = view.center
        view.addSubview(bgImage)
        
        //MARK: Label Preferences
        labelPreferences.center = view.center
        labelPreferences.textAlignment = .center
        labelPreferences.frame.origin.y -= 400
        view.addSubview(labelPreferences)
        
        //MARK: Button Preferences
        buttonJapanese.center = view.center
        buttonJapanese.frame.origin.y += 250
        buttonJapanese.frame.origin.x += 180
        buttonJapanese.addTarget(self, action: #selector(actionGoToJapaneseIce(_:)), for: .touchUpInside)
        view.addSubview(buttonJapanese)
        buttonHotV60.center = view.center
        buttonHotV60.frame.origin.y += 250
        buttonHotV60.frame.origin.x -= 180
        buttonHotV60.addTarget(self, action: #selector(actionGoToHotV60(_:)), for: .touchUpInside)
        view.addSubview(buttonHotV60)
        
        //MARK: Image Preferences
        IceManualBrewImage.center = view.center
        IceManualBrewImage.frame.origin.y -= 50
        IceManualBrewImage.frame.origin.x += 180
        view.addSubview(IceManualBrewImage)
        
        HotManualBrewImage.center = view.center
        HotManualBrewImage.frame.origin.y -= 50
        HotManualBrewImage.frame.origin.x -= 180
        view.addSubview(HotManualBrewImage)
}
    @objc func actionGoToJapaneseIce(_ sender: UIButton) {
        view.buttonClicked()
        navigationController?.pushViewController(japaneseIce(), animated: true)
    }
    
    @objc func actionGoToHotV60(_ sender: UIButton) {
        view.buttonClicked()
        navigationController?.pushViewController(hotV60(), animated: true)
    }

}
