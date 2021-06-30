//
//  rec.swift
//  tableView
//
//  Created by Sandhya Baghel on 30/06/21.
//  Copyright © 2021 Sandhya. All rights reserved.
//

import Foundation

import UIKit

class rec: UIViewController {
    var arr:String = ""

    private let image = UIImageView()
    private let label:UILabel = {
       let lbl = UILabel()
        lbl.text = "STEPS:"
        lbl.font = UIFont.boldSystemFont(ofSize:20)
        return lbl
    }()
    
    private let textf:UITextView = {
       let lbl = UITextView()
        lbl.text = """
        1 . firstly, in a large kadai heat oil and saute garlic.
        2. further add onion, and saute till they change colour.
           also add capsicum and saute for a minute.
        4.additionally add tomato and saute till they turn soft and mushy.
        5. furthermore, add ¼ cup of brocolli and ¼ cup of peas.
        """
        lbl.font = lbl.font?.withSize(20)
        return lbl
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(image)
         view.addSubview(textf)
         view.addSubview(label)
        image.image = UIImage(named: arr)
        view.backgroundColor = UIColor.white
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        image.frame = CGRect(x: 0, y: 20, width: 420, height: 300)
        label.frame = CGRect(x: 20, y: 340, width: 100, height: 30)
        textf.frame = CGRect(x: 20, y: 400, width: 390, height: 380)
    }
}
