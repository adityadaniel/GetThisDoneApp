//
//  GTDALabel.swift
//  GetThisDoneApp
//
//  Created by Daniel Aditya Istyana on 23/07/18.
//  Copyright © 2018 Daniel Aditya Istyana. All rights reserved.
//

import UIKit

class GTDALabel: UILabel {
    
    init(title: String = "", color: UIColor = .white, size: CGFloat = 20, frame: CGRect = .zero, alignText: NSTextAlignment = .center) {
        super.init(frame: frame)
        if self.frame == .zero {
            self.translatesAutoresizingMaskIntoConstraints = false
        }
        self.text = title
        self.textColor = color
        self.textAlignment = alignText
        self.font = UIFont.systemFont(ofSize: size)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
