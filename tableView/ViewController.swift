//
//  ViewController.swift
//  tableView
//
//  Created by Sandhya Baghel on 28/06/21.
//  Copyright © 2021 Sandhya. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    private let button:UIButton = {
        let btn = UIButton()
        btn.setTitle("LogIn", for: .normal)
        btn.addTarget(self, action: #selector(btnClick), for: .touchUpInside)
        btn.backgroundColor = UIColor.brown
        btn.layer.cornerRadius = 18
        btn.clipsToBounds = true
        return btn
    }()
    private let image:UIImageView = {
        let img = UIImageView()
        img.image = UIImage(named: "food7")
        return img
    }()
    private let image1:UIImageView = {
           let img = UIImageView()
           img.image = UIImage(named: "food1.jpg")
           return img
       }()
    private let text:UITextField = {
        let txt = UITextField()
        txt.placeholder = "userId"
        txt.textAlignment = .center
        txt.borderStyle = .roundedRect
        txt.layer.cornerRadius = 18
        txt.clipsToBounds = true
        return txt
    }()
    private let texfield:UITextField = {
         let txt = UITextField()
        txt.placeholder = "Password"
        txt.textContentType = .newPassword
        txt.textAlignment = .center
        txt.layer.cornerRadius = 18
         txt.clipsToBounds = true
         return txt
    }()
    private let prog:UIProgressView = {
          let prg = UIProgressView()
          prg.setProgress(0.0, animated: true)
          return prg
      }()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.addSubview(prog)
        view.addSubview(image)
      
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
       self.view.backgroundColor = UIColor.black
        UIView.animate(withDuration: 3.0) {
        self.prog.setProgress(1.0, animated: true)
          }
        let second =  3.4
       DispatchQueue.main.asyncAfter(deadline: .now() + second) {
            self.prog.isHidden = true
        self.image.isHidden = true
         
        self.view.backgroundColor = UIColor.white

        self.view.addSubview(self.button)
        self.view.addSubview(self.text)
        self.view.addSubview(self.texfield)
         self.view.addSubview(self.image1)
        }
    }

    @objc private func btnClick(){
       let vc = recipe()
        navigationController?.pushViewController(vc, animated: true)
    }
    override func viewDidLayoutSubviews() {
        button.frame = CGRect(x: 150, y: 490, width: 150, height: 60)
        text.frame = CGRect(x: 80, y: 340, width: 290, height: 50)
        texfield.frame = CGRect(x: 80, y: 405, width: 290, height: 50)
         image.frame = CGRect(x: 90, y: 260, width: 200, height: 200)
        prog.frame = CGRect(x: 40, y: 440, width: 300, height: 30)
         image1.frame = CGRect(x: 0, y: 0, width: 420, height: 290)
   }

    
}

