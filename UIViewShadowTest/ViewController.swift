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

        view.layer.borderWidth = 2
        view.layer.borderColor = UIColor.black.cgColor
        
        return view
    }()
    
    let buttonImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "UpView")
        imageView.contentMode = .scaleToFill
        
        imageView.backgroundColor = .blue
        imageView.isUserInteractionEnabled = true
        
        return imageView
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
        
        view.addSubview(buttonImageView)
        buttonImageView.topAnchor.constraint(equalTo: myUpView.bottomAnchor, constant: 100).isActive = true
        buttonImageView.leadingAnchor.constraint(equalTo: myUpView.leadingAnchor).isActive = true
        buttonImageView.heightAnchor.constraint(equalToConstant: 150).isActive = true
        buttonImageView.widthAnchor.constraint(equalToConstant: 250).isActive = true
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        view.backgroundColor = UIColor(rgb: 0xe1f2fb)
        
        let sourceLanguageRecognizer = UITapGestureRecognizer(target: self, action: #selector(selectLanguage))
        buttonImageView.addGestureRecognizer(sourceLanguageRecognizer)
    }

    @objc func selectLanguage() {
        buttonImageView.image = UIImage(named: "DownView")
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

