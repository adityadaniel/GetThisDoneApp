//
//  GTDAGradient.swift
//  GetThisDoneApp
//
//  Created by Daniel Aditya Istyana on 23/07/18.
//  Copyright © 2018 Daniel Aditya Istyana. All rights reserved.
//

import UIKit

class GTDAGradient: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.translatesAutoresizingMaskIntoConstraints = false
        
        if let layer = self.layer as? CAGradientLayer {
            layer.colors = [UIColor(red:0.09, green:0.92, blue:0.85, alpha:1.0).cgColor,
                            UIColor(red:0.38, green:0.47, blue:0.92, alpha:1.0).cgColor]
            layer.locations = [0.0, 1.2]
        }
    }
    
    override class var layerClass: AnyClass {
        return CAGradientLayer.self
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
