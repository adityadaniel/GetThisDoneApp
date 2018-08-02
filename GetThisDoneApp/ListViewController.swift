//
//  ListViewController.swift
//  GetThisDoneApp
//
//  Created by Daniel Aditya Istyana on 02/08/18.
//  Copyright © 2018 Daniel Aditya Istyana. All rights reserved.
//

import UIKit

class ListViewController: UIViewController {
    
    let header = GTDAHeaderView(frame: .zero, title: "Get Things Done", subtitle: "4 Left")

    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
    
        view.addSubview(header)
        header.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        header.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        header.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        header.heightAnchor.constraint(equalToConstant: 140).isActive = true
    
    }
    
    
    
}
