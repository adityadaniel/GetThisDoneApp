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
    
    let appInfoLabel = GTDALabel(title: "GetThingsDoneApp is pretty and minimalist to-do app. You'll love them", color: .white, size: 16, frame: .zero, alignText: .center)
    
    let copyrightLabel = GTDALabel(title: "By Aditya Daniel", color: .gray, size: 16, frame: .zero, alignText: .center)
    
    let nextButton = GTDAButton(title: "Start Winning", frame: .zero)

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // initial setup
        navigationController?.navigationBar.isHidden = true
        view.backgroundColor = .white
        
        // setup subview
        view.addSubview(initialBackgroundCard)
        initialBackgroundCard.addSubview(appTitle)
        initialBackgroundCard.addSubview(appInfoLabel)
        initialBackgroundCard.addSubview(copyrightLabel)
        initialBackgroundCard.addSubview(nextButton)
        
        
        // setup constraints of subviews
        setupConstraints()
    }
    
    func setupConstraints() {
        
        // Setup background card
        initialBackgroundCard.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20).isActive = true
        initialBackgroundCard.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 20).isActive = true
        initialBackgroundCard.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -60).isActive = true
        initialBackgroundCard.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor, constant: -20).isActive = true
        
        // Setup app title
        appTitle.centerXAnchor.constraint(equalTo: initialBackgroundCard.centerXAnchor).isActive = true
        appTitle.heightAnchor.constraint(equalToConstant: 60).isActive = true
        appTitle.widthAnchor.constraint(equalTo: initialBackgroundCard.widthAnchor).isActive = true
        appTitle.topAnchor.constraint(equalTo: initialBackgroundCard.topAnchor, constant: 20).isActive = true
        
        //setup app info
        appInfoLabel.numberOfLines = 2
        appInfoLabel.centerYAnchor.constraint(equalTo: initialBackgroundCard.centerYAnchor).isActive = true
        appInfoLabel.leftAnchor.constraint(equalTo: initialBackgroundCard.leftAnchor, constant: 10).isActive = true
        appInfoLabel.rightAnchor.constraint(equalTo: initialBackgroundCard.rightAnchor, constant: -10).isActive = true
        appInfoLabel.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        // Setup copyrightLabel
        copyrightLabel.centerXAnchor.constraint(equalTo: initialBackgroundCard.centerXAnchor).isActive = true
        copyrightLabel.widthAnchor.constraint(equalTo: initialBackgroundCard.widthAnchor).isActive = true
        copyrightLabel.heightAnchor.constraint(equalToConstant: 30).isActive = true
        copyrightLabel.bottomAnchor.constraint(equalTo: initialBackgroundCard.bottomAnchor, constant: 50).isActive = true
        
        // setup nextbutton
        nextButton.heightAnchor.constraint(equalToConstant: 40).isActive = true
        nextButton.widthAnchor.constraint(equalToConstant: 160).isActive = true
        nextButton.centerXAnchor.constraint(equalTo: initialBackgroundCard.centerXAnchor).isActive = true
        nextButton.bottomAnchor.constraint(equalTo: initialBackgroundCard.bottomAnchor, constant: -20).isActive = true
    
    }


}

