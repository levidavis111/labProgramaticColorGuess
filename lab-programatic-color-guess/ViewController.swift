//
//  ViewController.swift
//  lab-programatic-color-guess
//
//  Created by Levi Davis on 10/7/19.
//  Copyright © 2019 Levi Davis. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    lazy var redButton: UIButton = {
        let redButton = UIButton()
        redButton.backgroundColor = .red
        redButton.setTitle("Red", for: .normal)
        redButton.setTitleColor(.black, for: .normal)

        return redButton
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        addSubViews()
        addConstraintsToSubViews()
    }
    
    private func addSubViews() {
        redButton.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(redButton)
    }
    
    private func addConstraintsToSubViews() {
        redButton.centerXAnchor.constraint(equalToSystemSpacingAfter: self.view.centerXAnchor, multiplier: 1).isActive = true
        redButton.centerYAnchor.constraint(equalToSystemSpacingBelow: self.view.centerYAnchor, multiplier: 1).isActive = true
        redButton.widthAnchor.constraint(equalToConstant: 100).isActive = true
    }

}

