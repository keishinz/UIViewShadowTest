//
//  ViewController.swift
//  UIViewShadowTest
//
//  Created by Keishin CHOU on 2020/02/10.
//  Copyright © 2020 Keishin CHOU. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let myUpView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor(rgb: 0xe1f2fb)
        
        view.layer.cornerRadius = 20
        view.layer.masksToBounds = false
        
        view.layer.shadowColor = UIColor.black.cgColor
        view.layer.shadowOpacity = 0.2
        view.layer.shadowOffset = CGSize(width: 5, height: 5)
        view.layer.shadowRadius = 5
        
        return view
    }()
    
    let myBackUpView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor(rgb: 0xe1f2fb)
        
        view.layer.cornerRadius = 20
        view.layer.masksToBounds = false
        
        view.layer.shadowColor = UIColor.white.cgColor
        view.layer.shadowOpacity = 1
        view.layer.shadowOffset = CGSize(width: -5, height: -5)
        view.layer.shadowRadius = 5
        
        return view
    }()
    
    let myDownView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.masksToBounds = true
        view.layer.cornerRadius = 20
        return view
    }()
    
    let downLightView: SwiftyInnerShadowView = {
        let view = SwiftyInnerShadowView()
        view.translatesAutoresizingMaskIntoConstraints = false
//        view.backgroundColor = UIColor(rgb: 0xe1f2fb)

        view.shadowLayer.shadowRadius = 10
        view.shadowLayer.shadowColor = UIColor.white.cgColor
        view.shadowLayer.shadowOpacity = 1
        view.shadowLayer.shadowOffset = CGSize.zero
        view.cornerRadius = 20
        
        return view
    }()
    
    let downDarkView: SwiftyInnerShadowView = {
        let view = SwiftyInnerShadowView()
        view.translatesAutoresizingMaskIntoConstraints = false

        view.shadowLayer.shadowRadius = 10
        view.shadowLayer.shadowColor = UIColor.black.cgColor
        view.shadowLayer.shadowOpacity = 0.2
        view.shadowLayer.shadowOffset = CGSize.zero
        view.cornerRadius = 20
        
        return view
    }()
    
    let buttonView: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = UIColor(rgb: 0xe1f2fb)
        
        button.layer.cornerRadius = 20
        button.setTitle("Button", for: .normal)
        button.setTitleColor(.systemBlue, for: .normal)
        button.setTitleColor(.systemGray, for: .highlighted)
        
        return button
    }()
    
    let buttonOutterLightView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor(rgb: 0xe1f2fb)
        
        view.layer.cornerRadius = 20
        view.layer.masksToBounds = false
        
        view.layer.shadowColor = UIColor.white.cgColor
        view.layer.shadowOpacity = 1
        view.layer.shadowOffset = CGSize(width: -5, height: -5)
        view.layer.shadowRadius = 5
        
        return view
    }()
    
    let buttonOutterDarkView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor(rgb: 0xe1f2fb)
        
        view.layer.cornerRadius = 20
        view.layer.masksToBounds = false
        
        view.layer.shadowColor = UIColor.black.cgColor
        view.layer.shadowOpacity = 0.2
        view.layer.shadowOffset = CGSize(width: 5, height: 5)
        view.layer.shadowRadius = 5
        
        return view
    }()
    
    let buttonInnerLightView: SwiftyInnerShadowView = {
        let view = SwiftyInnerShadowView()
        view.translatesAutoresizingMaskIntoConstraints = false

        view.shadowLayer.shadowRadius = 10
        view.shadowLayer.shadowColor = UIColor.white.cgColor
        view.shadowLayer.shadowOpacity = 1
        view.shadowLayer.shadowOffset = CGSize.zero
        view.cornerRadius = 20
        
        return view
    }()
    
    let buttonInnerDarkView: SwiftyInnerShadowView = {
        let view = SwiftyInnerShadowView()
        view.translatesAutoresizingMaskIntoConstraints = false

        view.shadowLayer.shadowRadius = 5
        view.shadowLayer.shadowColor = UIColor.black.cgColor
        view.shadowLayer.shadowOpacity = 0.3
        view.shadowLayer.shadowOffset = CGSize.zero
        view.cornerRadius = 20
        
        return view
    }()
    
    override func loadView() {
        super.loadView()
        
        view.addSubview(myBackUpView)
        myBackUpView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 100).isActive = true
        myBackUpView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 100).isActive = true
        myBackUpView.heightAnchor.constraint(equalToConstant: 100).isActive = true
        myBackUpView.widthAnchor.constraint(equalToConstant: 200).isActive = true
        
        view.addSubview(myUpView)
        myUpView.topAnchor.constraint(equalTo: myBackUpView.topAnchor).isActive = true
        myUpView.leadingAnchor.constraint(equalTo: myBackUpView.leadingAnchor).isActive = true
        myUpView.heightAnchor.constraint(equalToConstant: 100).isActive = true
        myUpView.widthAnchor.constraint(equalToConstant: 200).isActive = true
        
        view.addSubview(buttonOutterDarkView)
        buttonOutterDarkView.topAnchor.constraint(equalTo: myUpView.bottomAnchor, constant: 100).isActive = true
        buttonOutterDarkView.leadingAnchor.constraint(equalTo: myUpView.leadingAnchor).isActive = true
        buttonOutterDarkView.heightAnchor.constraint(equalToConstant: 150).isActive = true
        buttonOutterDarkView.widthAnchor.constraint(equalToConstant: 250).isActive = true
        
        view.addSubview(buttonOutterLightView)
        buttonOutterLightView.topAnchor.constraint(equalTo: myUpView.bottomAnchor, constant: 100).isActive = true
        buttonOutterLightView.leadingAnchor.constraint(equalTo: myUpView.leadingAnchor).isActive = true
        buttonOutterLightView.heightAnchor.constraint(equalToConstant: 150).isActive = true
        buttonOutterLightView.widthAnchor.constraint(equalToConstant: 250).isActive = true
        
        view.addSubview(buttonView)
        buttonView.topAnchor.constraint(equalTo: myUpView.bottomAnchor, constant: 100).isActive = true
        buttonView.leadingAnchor.constraint(equalTo: myUpView.leadingAnchor).isActive = true
        buttonView.heightAnchor.constraint(equalToConstant: 150).isActive = true
        buttonView.widthAnchor.constraint(equalToConstant: 250).isActive = true

        buttonView.addSubview(buttonInnerDarkView)
        buttonInnerDarkView.topAnchor.constraint(equalTo: myUpView.bottomAnchor, constant: 100).isActive = true
        buttonInnerDarkView.leadingAnchor.constraint(equalTo: myUpView.leadingAnchor).isActive = true
        buttonInnerDarkView.heightAnchor.constraint(equalToConstant: 170).isActive = true
        buttonInnerDarkView.widthAnchor.constraint(equalToConstant: 270).isActive = true
        
        buttonView.addSubview(buttonInnerLightView)
        buttonInnerLightView.bottomAnchor.constraint(equalTo: buttonOutterLightView.bottomAnchor).isActive = true
        buttonInnerLightView.trailingAnchor.constraint(equalTo: buttonOutterLightView.trailingAnchor).isActive = true
        buttonInnerLightView.heightAnchor.constraint(equalToConstant: 170).isActive = true
        buttonInnerLightView.widthAnchor.constraint(equalToConstant: 270).isActive = true
        
        
        view.addSubview(myDownView)
        myDownView.topAnchor.constraint(equalTo: buttonView.bottomAnchor, constant: 100).isActive = true
        myDownView.leadingAnchor.constraint(equalTo: myUpView.leadingAnchor).isActive = true
        myDownView.heightAnchor.constraint(equalToConstant: 100).isActive = true
        myDownView.widthAnchor.constraint(equalToConstant: 200).isActive = true
        
        myDownView.addSubview(downLightView)
        downLightView.bottomAnchor.constraint(equalTo: myDownView.bottomAnchor).isActive = true
        downLightView.trailingAnchor.constraint(equalTo: myDownView.trailingAnchor).isActive = true
        downLightView.heightAnchor.constraint(equalToConstant: 120).isActive = true
        downLightView.widthAnchor.constraint(equalToConstant: 220).isActive = true

        myDownView.addSubview(downDarkView)
        downDarkView.topAnchor.constraint(equalTo: myDownView.topAnchor).isActive = true
        downDarkView.leadingAnchor.constraint(equalTo: myDownView.leadingAnchor).isActive = true
        downDarkView.heightAnchor.constraint(equalToConstant: 120).isActive = true
        downDarkView.widthAnchor.constraint(equalToConstant: 220).isActive = true
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        buttonInnerDarkView.isHidden = true
        buttonInnerLightView.isHidden = true
        
        view.backgroundColor = UIColor(rgb: 0xe1f2fb)
        buttonView.addTarget(self, action: #selector(buttonDidTouchDown), for: .touchDown)
        buttonView.addTarget(self, action: #selector(buttonDidTouchUpInside), for: .touchUpInside)
    }
    
    @objc func buttonDidTouchDown() {
        print("buttonDidTouchDown")
        buttonOutterDarkView.isHidden = true
        buttonOutterLightView.isHidden = true
        buttonInnerDarkView.isHidden = false
        buttonInnerLightView.isHidden = false
        
        buttonView.layer.masksToBounds = true
    }
    
    @objc func buttonDidTouchUpInside() {
        print("buttonDidTouchUpInside")
        buttonOutterDarkView.isHidden = false
        buttonOutterLightView.isHidden = false
        buttonInnerDarkView.isHidden = true
        buttonInnerLightView.isHidden = true
        
        buttonView.layer.masksToBounds = false
    }

}

extension UIColor {
   convenience init(red: Int, green: Int, blue: Int) {
       assert(red >= 0 && red <= 255, "Invalid red component")
       assert(green >= 0 && green <= 255, "Invalid green component")
       assert(blue >= 0 && blue <= 255, "Invalid blue component")

       self.init(red: CGFloat(red) / 255.0, green: CGFloat(green) / 255.0, blue: CGFloat(blue) / 255.0, alpha: 1.0)
   }

   convenience init(rgb: Int) {
       self.init(
           red: (rgb >> 16) & 0xFF,
           green: (rgb >> 8) & 0xFF,
           blue: rgb & 0xFF
       )
   }
}

