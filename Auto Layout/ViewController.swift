//
//  ViewController.swift
//  Auto Layout
//
//  Created by Renan de Castro Ribeiro on 15/10/20.
//  Copyright © 2020 Renan de Castro Ribeiro. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let redView = UIView()
        
        view.addSubview(redView
        )
        redView.backgroundColor = .red
        
        //Setando nossas Constraints de forma manual
        redView.translatesAutoresizingMaskIntoConstraints = false
        
        //Config contraint Top com o layout pai e habilitando nossa constraint na nossa red view
//        redView.topAnchor.constraint(equalTo: view.topAnchor, constant: 50).isActive = true
        
        //leadingAnchor = left // trailingAnchor = right
//        redView.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 50).isActive = true
        
//        redView.trailingAnchor.constraint(equalTo: view.trailingAnchor,constant: -50).isActive = true
        
//        redView.bottomAnchor.constraint(equalTo: view.bottomAnchor,constant: -50).isActive = true
        
        //Constraint Altura e largura
        
        redView.widthAnchor.constraint(equalToConstant: 200).isActive = true
        redView.heightAnchor.constraint(equalToConstant: 300).isActive = true
        
        redView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        redView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }
    
    
}

