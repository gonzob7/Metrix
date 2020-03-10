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
        stackView.spacing = 0
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.distribution = .fill
        return stackView
    }()
    
    let loginStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.spacing = 0
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
    
    let userNameTextField: UITextField = {
        let field = UITextField()
        field.attributedPlaceholder = NSAttributedString(string: "Username",
        attributes: [NSAttributedString.Key.foregroundColor: UIColor.white])
        field.isSecureTextEntry = false
        field.font = UIFont(name: "AvenirNextCondensed-DemiBold", size: 18)
        field.textColor = .white
        field.translatesAutoresizingMaskIntoConstraints = false
        field.layer.cornerRadius = 10
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
        stackView.heightAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.heightAnchor, multiplier: 0.80).isActive = true
        stackView.widthAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.widthAnchor).isActive = true
        stackView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        
        //logo stack
        self.stackView.addArrangedSubview(logoStackView)
        logoStackView.heightAnchor.constraint(equalToConstant: 90.0).isActive = true
        logoStackView.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: 50).isActive = true
        logoStackView.widthAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.widthAnchor).isActive = true
        logoStackView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        logoStackView.addArrangedSubview(logo)
        logo.heightAnchor.constraint(equalTo: logoStackView.heightAnchor, multiplier: 0.70).isActive = true
        logoStackView.addArrangedSubview(missionLogo)
        
        
        //login stack
        stackView.addArrangedSubview(loginStackView)
//        loginStackView.widthAnchor.constraint(equalTo: self.stackView.widthAnchor, multiplier: 0.50).isActive = true
        loginStackView.centerXAnchor.constraint(equalTo: self.stackView.centerXAnchor).isActive = true
        loginStackView.addArrangedSubview(userNameTextField)
        userNameTextField.widthAnchor.constraint(equalTo: self.loginStackView.widthAnchor, multiplier: 0.50).isActive = true
        userNameTextField.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
    }


}

