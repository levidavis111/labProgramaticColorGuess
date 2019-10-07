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
    
    lazy var label: UILabel = {
        let label = UILabel()
        label.text = "Guess the Dominant Color!"
        label.textColor = .black
        label.numberOfLines = 0
        label.lineBreakMode = .byWordWrapping
        label.textAlignment = .center
        return label
    }()
    
    lazy var redButton: UIButton = {
        let redButton = UIButton()
        redButton.backgroundColor = .red
        redButton.setTitle("Red", for: .normal)
        redButton.setTitleColor(.black, for: .normal)
        redButton.tag = 1
        redButton.addTarget(self, action: #selector(redButtonPressed(sender:)), for: .touchUpInside)

        return redButton
    }()
    
    lazy var blueButton: UIButton = {
        let blueButton = UIButton()
        blueButton.backgroundColor = .blue
        blueButton.setTitle("Blue", for: .normal)
        blueButton.setTitleColor(.black, for: .normal)
        blueButton.tag = 2
        blueButton.addTarget(self, action: #selector(blueButtonPressed(sender:)), for: .touchUpInside)
        return blueButton
    }()
    
    lazy var greenButton: UIButton = {
        let greenButton = UIButton()
        greenButton.backgroundColor = .green
        greenButton.setTitle("Green", for: .normal)
        greenButton.setTitleColor(.black, for: .normal)
        greenButton.tag = 3
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
        self.view.addSubview(label)
        self.view.addSubview(redButton)
        self.view.addSubview(blueButton)
        self.view.addSubview(greenButton)
    }
    
    private func addConstraintsToSubViews() {
        label.translatesAutoresizingMaskIntoConstraints = false
        redButton.translatesAutoresizingMaskIntoConstraints = false
        blueButton.translatesAutoresizingMaskIntoConstraints = false
        greenButton.translatesAutoresizingMaskIntoConstraints = false
        redButton.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        redButton.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
        redButton.widthAnchor.constraint(equalToConstant: 100).isActive = true
        blueButton.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        blueButton.topAnchor.constraint(equalTo: self.redButton.bottomAnchor, constant: 10).isActive = true
        blueButton.widthAnchor.constraint(equalToConstant: 100).isActive = true
        greenButton.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        greenButton.topAnchor.constraint(equalTo: self.blueButton.bottomAnchor, constant: 10).isActive = true
        greenButton.widthAnchor.constraint(equalToConstant: 100).isActive = true
        label.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        label.bottomAnchor.constraint(equalTo: self.redButton.topAnchor, constant: -50).isActive = true
        
    }
    
    @objc private func redButtonPressed(sender: UIButton!) {
        if colorModel.isDominant(guess: .red) {
            
            print("yes")
        } else {
            print("no")
        }
    }
    
    @objc private func blueButtonPressed(sender: UIButton!) {
        if colorModel.isDominant(guess: .blue) {
            print("yes")
        } else {
            print("no")
        }
        
    }
    
    @objc private func greenButtonPressed(sender: UIButton!) {
        if colorModel.isDominant(guess: .green) {
            print("yes")
        } else {
            print("no")
        }
        
    }
    
    private func setDefaultBackgroundColor() {
        self.view.backgroundColor = colorModel.getNewColor()
    }

}

