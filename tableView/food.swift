//
//  food.swift
//  tableView
//
//  Created by Sandhya Baghel on 29/06/21.
//  Copyright © 2021 Sandhya. All rights reserved.
//

import Foundation

import UIKit

class food: UITableViewCell{
  private let myImageView:UIImageView = {
        let imageView = UIImageView()
      //  imageView.contentMode = .scaleAspectFill
       // imageView.layer.cornerRadius = 40
        imageView.alpha = 1
       // imageView.clipsToBounds = true
        return imageView
    }()
    
    
    private let ImageView:UIImageView = {
           let imageView = UIImageView()
           imageView.contentMode = .scaleAspectFill
          // imageView.layer.cornerRadius = 40
        imageView.image = UIImage(systemName: "heart")
          // imageView.clipsToBounds = true
           return imageView
       }()
    
    private let myLabel:UILabel = {
        let label = UILabel()
        label.font = .boldSystemFont(ofSize: 28)
        return label
    }()
    
    public let myButton:UIButton = {
        let button = UIButton()
        button.setImage(UIImage(systemName: "chevron.right.2"), for: .normal)
        button.tintColor = .black
        button.alpha = 1
        return button
    }()
    
    func setupCityCellWith(title name:String, index:Int) {
        myImageView.image = UIImage(named: name)
        myLabel.text = name
        myButton.tag = index
        
        setupUI(at: index)
    }
    
    private func setupUI(at index:Int) {
        contentView.backgroundColor = .white
        contentView.addSubview(myImageView)
        contentView.addSubview(myLabel)
        contentView.addSubview(myButton)
        contentView.addSubview(ImageView)
        
        myImageView.frame = CGRect(x: 1, y: 1, width: 120, height: 150)
          ImageView.frame = CGRect(x: 370, y: 110, width: 25, height: 25)
        myLabel.frame = CGRect(x: 120 + 20, y: 10, width: 190, height: 80)
        myButton.frame = CGRect(x: 120, y: 80, width: 40, height: 80)
    }
    
   
    
}
