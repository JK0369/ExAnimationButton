//
//  ViewController.swift
//  ExButtonAnimation
//
//  Created by 김종권 on 2022/02/20.
//

import UIKit

final class ViewController: UIViewController {
  private lazy var button: AnimationButton = {
    let button = AnimationButton()
    button.setImage(UIImage(named: "button"), for: .normal)
    button.layer.cornerRadius = 25
    button.layer.masksToBounds = true
    return button
  }()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    self.view.addSubview(self.button)
    self.button.translatesAutoresizingMaskIntoConstraints = false
    self.button.widthAnchor.constraint(equalToConstant: 120).isActive = true
    self.button.heightAnchor.constraint(equalToConstant: 120).isActive = true
    
    self.button.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
    self.button.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
  }
}
