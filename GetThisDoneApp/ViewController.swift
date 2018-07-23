//
//  ViewController.swift
//  GetThisDoneApp
//
//  Created by Daniel Aditya Istyana on 23/07/18.
//  Copyright © 2018 Daniel Aditya Istyana. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let initialBackgroundCard: UIView = {
        let card = GTDAGradient()
        card.layer.cornerRadius = 12
        return card
    }()
    
    let appTitle = GTDALabel(title: "GetThisDone", color: .white, size: 30, frame: .zero, alignText: .center)

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // initial setup
        navigationController?.navigationBar.isHidden = true
        view.backgroundColor = .white
        
        // setup subview
        view.addSubview(initialBackgroundCard)
        initialBackgroundCard.addSubview(appTitle)
        
        
        // setup constraints of subviews
        setupConstraints()
    }
    
    func setupConstraints() {
        
        // Setup background card
        initialBackgroundCard.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20).isActive = true
        initialBackgroundCard.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 20).isActive = true
        initialBackgroundCard.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -80).isActive = true
        initialBackgroundCard.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor, constant: -20).isActive = true
        
        // Setup app title
        appTitle.centerXAnchor.constraint(equalTo: initialBackgroundCard.centerXAnchor).isActive = true
        appTitle.heightAnchor.constraint(equalToConstant: 60).isActive = true
        appTitle.widthAnchor.constraint(equalTo: initialBackgroundCard.widthAnchor).isActive = true
        appTitle.topAnchor.constraint(equalTo: initialBackgroundCard.topAnchor, constant: 20).isActive = true
    
    }


}

