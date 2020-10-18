//
//  ViewController.swift
//  Auto Layout
//
//  Created by Renan de Castro Ribeiro on 15/10/20.
//  Copyright © 2020 Renan de Castro Ribeiro. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let redView = UIView()
    let blueView = UIView()
    let yellowView = UIView()

    override func viewDidLoad() {
        super.viewDidLoad()
        putFullView()
    }
    
    func setupRedView(){
        view.addSubview(redView)
        redView.backgroundColor = .red
        redView.translatesAutoresizingMaskIntoConstraints = false
    }
    
    func setupBlueView(){
        view.addSubview(blueView)
        blueView.backgroundColor = .blue
        blueView.translatesAutoresizingMaskIntoConstraints = false
        
    }
    func putFullView(){
        view.addSubview(yellowView)
        yellowView.backgroundColor = .yellow

        yellowView.preencher(
            top: view.topAnchor,
            leading: view.leadingAnchor,
            trailing: nil,
            bottom: nil,
            padding: .init(top: 50, left: 30, bottom: 100, right: 50),
            size: .init(width: 200, height: 500)
        )
    }
    
    func curtOnMiddleViewYManual(){
        setupRedView()
        setupBlueView()
        
        redView.topAnchor.constraint(equalTo: view.topAnchor, constant: 50).isActive = true
        redView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        redView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        redView.bottomAnchor.constraint(equalTo: view.centerYAnchor.self).isActive = true
        
        blueView.topAnchor.constraint(equalTo: redView.bottomAnchor).isActive = true
        blueView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        blueView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        blueView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
    }
    
    func curtOnMiddleViewXManual(){
        setupRedView()
        setupBlueView()
        
        redView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        redView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        redView.widthAnchor.constraint(equalToConstant: view.bounds.width / 2).isActive = true
        redView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        
//        blueView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
//        blueView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
//        blueView.leadingAnchor.constraint(equalTo: redView.trailingAnchor).isActive = true
//        blueView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
//
    }
    
    func curtOnMiddleViewXStackView(_ vertical: Bool){
        redView.backgroundColor = .red
        blueView.backgroundColor = .blue
        yellowView.backgroundColor = .yellow
        
        let horizontalStackView: UIStackView = UIStackView(arrangedSubviews: [redView,blueView])
        horizontalStackView.distribution = .fillEqually
        
        let stackView: UIStackView = UIStackView(arrangedSubviews: [horizontalStackView,yellowView])

        stackView.distribution = .fillEqually
        
        if (vertical){
            stackView.axis = .vertical
        }
        view.addSubview(stackView)
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = 
        true
        stackView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        
        
        
    }
    
}

