//
//  ViewController.swift
//  iOSMetrix
//
//  Created by Gonzalo Birrueta on 3/9/20.
//  Copyright © 2020 Gonzalo Birrueta. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    let logo: UILabel = {
        let logo = UILabel()
        logo.font = UIFont(name: "HelveticaNeue-UltraLight", size: 75)
        logo.text = "Metrix"
        logo.textColor = .black
        logo.textAlignment = .center
        logo.translatesAutoresizingMaskIntoConstraints = false
        return logo
    }()
    
    let stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.spacing = 0
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.distribution = .fill
        return stackView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.view.backgroundColor = .white
        setViews()
    }
    
    override func loadView() {
      super.loadView()
    }
    
    func setViews(){
        self.view.addSubview(logo)
        
        self.logo.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        self.logo.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        self.logo.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        self.logo.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true

    }


}

