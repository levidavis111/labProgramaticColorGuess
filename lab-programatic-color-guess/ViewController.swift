//
//  ViewController.swift
//  lab-programatic-color-guess
//
//  Created by Levi Davis on 10/7/19.
//  Copyright © 2019 Levi Davis. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let colorModel = ColorGuessingModel()
    
    lazy var redButton: UIButton = {
        let redButton = UIButton()
        redButton.backgroundColor = .red
        redButton.setTitle("Red", for: .normal)
        redButton.setTitleColor(.black, for: .normal)
        redButton.addTarget(self, action: #selector(redButtonPressed(sender:)), for: .touchUpInside)

        return redButton
    }()
    
    lazy var blueButton: UIButton = {
        let blueButton = UIButton()
        blueButton.backgroundColor = .blue
        blueButton.setTitle("Blue", for: .normal)
        blueButton.setTitleColor(.black, for: .normal)
        blueButton.addTarget(self, action: #selector(blueButtonPressed(sender:)), for: .touchUpInside)
        return blueButton
    }()
    
    lazy var greenButton: UIButton = {
        let greenButton = UIButton()
        greenButton.backgroundColor = .green
        greenButton.setTitle("Green", for: .normal)
        greenButton.setTitleColor(.black, for: .normal)
        greenButton.addTarget(self, action: #selector(greenButtonPressed(sender:)), for: .touchUpInside)
        return greenButton
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        setDefaultBackgroundColor()
        addSubViews()
        addConstraintsToSubViews()
    }
    
    
    private func addSubViews() {
        redButton.translatesAutoresizingMaskIntoConstraints = false
        blueButton.translatesAutoresizingMaskIntoConstraints = false
        greenButton.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(redButton)
        self.view.addSubview(blueButton)
        self.view.addSubview(greenButton)
    }
    
    private func addConstraintsToSubViews() {
        redButton.centerXAnchor.constraint(equalToSystemSpacingAfter: self.view.centerXAnchor, multiplier: 1).isActive = true
        redButton.centerYAnchor.constraint(equalToSystemSpacingBelow: self.view.centerYAnchor, multiplier: 1).isActive = true
        redButton.widthAnchor.constraint(equalToConstant: 100).isActive = true
        blueButton.centerXAnchor.constraint(equalToSystemSpacingAfter: self.view.centerXAnchor, multiplier: 1).isActive = true
        blueButton.topAnchor.constraint(equalTo: self.redButton.bottomAnchor, constant: 10).isActive = true
        blueButton.widthAnchor.constraint(equalToConstant: 100).isActive = true
        greenButton.centerXAnchor.constraint(equalToSystemSpacingAfter: self.view.centerXAnchor, multiplier: 1).isActive = true
        greenButton.topAnchor.constraint(equalTo: self.blueButton.bottomAnchor, constant: 10).isActive = true
        greenButton.widthAnchor.constraint(equalToConstant: 100).isActive = true
        
    }
    
    @objc private func redButtonPressed(sender: UIButton!) {
        self.view.backgroundColor = .red
    }
    
    @objc private func blueButtonPressed(sender: UIButton!) {
        self.view.backgroundColor = .blue
    }
    
    @objc private func greenButtonPressed(sender: UIButton!) {
        self.view.backgroundColor = .green
    }
    
    private func setDefaultBackgroundColor() {
        self.view.backgroundColor = colorModel.getNewColor()
    }

}

