//
//  GTDAButton.swift
//  GetThisDoneApp
//
//  Created by Daniel Aditya Istyana on 23/07/18.
//  Copyright © 2018 Daniel Aditya Istyana. All rights reserved.
//

import UIKit

class GTDAButton: UIButton {
    
    var title: String!
    
    init(title: String = "default titlelabel", frame: CGRect = .zero) {
        super.init(frame: frame)
        self.title = title
        self.nextSetup()
    }
    
    func nextSetup() {
        if frame == .zero {
            self.translatesAutoresizingMaskIntoConstraints = false
        }
        
        if let titleLabelButton = self.title {
            self.setTitle(titleLabelButton, for: .normal)
            self.titleLabel?.font = UIFont(name: "FiraSans-Medium", size: 16)
        }
        self.backgroundColor = .white
        self.layer.cornerRadius = 12
        self.setTitleColor(.black, for: .normal)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
