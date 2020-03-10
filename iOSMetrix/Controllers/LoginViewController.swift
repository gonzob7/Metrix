//
//  ViewController.swift
//  iOSMetrix
//
//  Created by Gonzalo Birrueta on 3/9/20.
//  Copyright © 2020 Gonzalo Birrueta. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    
    let stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.spacing = 10
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.distribution = .fill
        return stackView
    }()
    
    let loginStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.spacing = 10
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.distribution = .fill
        return stackView
    }()
    
    let logoStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.spacing = 0
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.distribution = .fill
        return stackView
    }()

    let logo: UILabel = {
        let logo = UILabel()
        logo.font = UIFont(name: "HelveticaNeue-UltraLight", size: 75)
        logo.text = "Metrix"
        logo.textColor = .white
        logo.textAlignment = .center
        logo.translatesAutoresizingMaskIntoConstraints = false
        return logo
    }()
    
    let missionLogo: UILabel = {
        let logo = UILabel()
        logo.font = UIFont(name: "HelveticaNeue-UltraLight", size: 20)
        logo.text = "Toss the Excel sheet"
        logo.textColor = .white
        logo.textAlignment = .center
        logo.translatesAutoresizingMaskIntoConstraints = false
        return logo
    }()
    
    let logoImage: UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "logo"))
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let userNameTextField: UITextField = {
        let field = UITextField()
        field.attributedPlaceholder = NSAttributedString(string: "Username",
                                                         attributes: [NSAttributedString.Key.foregroundColor: UIColor.white.withAlphaComponent(0.80)])
        field.isSecureTextEntry = false
        field.font = UIFont(name: "AvenirNextCondensed-DemiBold", size: 18)
        field.textColor = .white
        field.translatesAutoresizingMaskIntoConstraints = false
        field.layer.cornerRadius = 10
        field.layer.borderWidth = 2
        field.layer.borderColor = UIColor.white.cgColor
        field.backgroundColor = .clear
        field.textAlignment = .center
        
        return field
    }()
    
    let passwordTextField: UITextField = {
        let field = UITextField()
        field.attributedPlaceholder = NSAttributedString(string: "Password",
                                                         attributes: [NSAttributedString.Key.foregroundColor: UIColor.white.withAlphaComponent(0.80)])
        field.isSecureTextEntry = false
        field.font = UIFont(name: "AvenirNextCondensed-DemiBold", size: 18)
        field.textColor = .white
        field.translatesAutoresizingMaskIntoConstraints = false
        field.layer.cornerRadius = 10
        field.layer.borderWidth = 2
        field.layer.borderColor = UIColor.white.cgColor
        field.backgroundColor = .clear
        field.textAlignment = .center
        return field
    }()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.view.backgroundColor = UIColor(red:0.09, green:0.09, blue:0.11, alpha:1.0)
        setViews()
    }
    
    override func loadView() {
      super.loadView()
    }
    
    func setViews(){
        
        
        //parent stack
        self.view.addSubview(stackView)
        stackView.widthAnchor.constraint(equalTo: self.view.layoutMarginsGuide.widthAnchor, multiplier: 0.65).isActive = true
        stackView.heightAnchor.constraint(equalTo: self.view.layoutMarginsGuide.heightAnchor, multiplier: 0.70).isActive = true
        stackView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        stackView.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
        
        stackView.addArrangedSubview(logoImage)
        
        logoImage.heightAnchor.constraint(equalToConstant: 150).isActive = true
        logoImage.widthAnchor.constraint(equalTo: stackView.widthAnchor).isActive = true


        stackView.addArrangedSubview(userNameTextField)
        
        userNameTextField.widthAnchor.constraint(equalTo: stackView.widthAnchor).isActive = true
        userNameTextField.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        
        stackView.addArrangedSubview(passwordTextField)
        
        passwordTextField.widthAnchor.constraint(equalTo: stackView.widthAnchor).isActive = true
        passwordTextField.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        
    }


}

