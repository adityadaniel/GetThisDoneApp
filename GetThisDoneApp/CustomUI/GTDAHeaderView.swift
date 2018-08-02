//
//  GTDAHeaderView.swift
//  GetThisDoneApp
//
//  Created by Daniel Aditya Istyana on 02/08/18.
//  Copyright © 2018 Daniel Aditya Istyana. All rights reserved.
//

import UIKit

class GTDAHeaderView: UIView {
    
    let bg = GTDAGradient()
    let titleLabel = GTDALabel(size: 14, alignText: .left)
    let subtitleLabel = GTDALabel(size: 24, alignText: .left)
    
    init(frame: CGRect = .zero, title: String = "", subtitle: String = "") {
        super.init(frame: frame)

        if frame == .zero {
            translatesAutoresizingMaskIntoConstraints = false
        }
        self.titleLabel.text = title
        self.subtitleLabel.text = subtitle
        setupLayout()
    }
    
    func setupLayout() {
        addSubview(bg)
        bg.leftAnchor.constraint(equalTo: leftAnchor).isActive = true
        bg.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        bg.rightAnchor.constraint(equalTo: rightAnchor).isActive = true
        bg.topAnchor.constraint(equalTo: topAnchor).isActive = true
        
        addSubview(titleLabel)
        titleLabel.leftAnchor.constraint(equalTo: bg.leftAnchor, constant: 20 + 8).isActive = true
        titleLabel.rightAnchor.constraint(equalTo: bg.centerXAnchor).isActive = true
        titleLabel.centerYAnchor.constraint(equalTo: bg.centerYAnchor).isActive = true
        
        addSubview(subtitleLabel)
        subtitleLabel.leftAnchor.constraint(equalTo: bg.leftAnchor, constant: 20 + 8).isActive = true
        subtitleLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 10).isActive = true
        subtitleLabel.rightAnchor.constraint(equalTo: centerXAnchor).isActive = true
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
