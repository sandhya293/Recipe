//
//  recipe.swift
//  tableView
//
//  Created by Sandhya Baghel on 29/06/21.
//  Copyright © 2021 Sandhya. All rights reserved.
//

import Foundation

import UIKit

class recipe:UIViewController{
   
    private var cityState = [Int]()

     private let myTableView = UITableView()
     
     private var cityArray = ["paneerButter","meggie", "naanRoti", "friesRice", "kajuCurry"]
    
    public let myButton:UIButton = {
         let button = UIButton()
        button.setTitle( "BROWSE", for: .normal)
        
         button.tintColor = .black
         button.alpha = 1
         return button
     }()

    override func viewDidLoad() {
        super.viewDidLoad()
       
               
        title = "HOME"
        view.addSubview(myTableView)
         view.addSubview(myButton)
        
         setupTableView()
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        myTableView.frame = CGRect(x: 0, y: 50, width: 450, height: 650)
         myButton.frame = CGRect(x: 0, y: 10, width: 150, height: 40)
    }
   
}
extension recipe: UITableViewDataSource, UITableViewDelegate {

private func setupTableView() {
    myTableView.dataSource = self
    myTableView.delegate = self
    myTableView.register(food.self, forCellReuseIdentifier: "food")
}

func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    cityArray.count
}

func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
    let cell = tableView.dequeueReusableCell(withIdentifier: "food", for: indexPath) as! food
   
    cell.setupCityCellWith(title: cityArray[indexPath.row], index: indexPath.row)
    cell.myButton.addTarget(self, action: #selector(openCityDetails), for: .touchUpInside)
    
    return cell
}

func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    _ = tableView.cellForRow(at: indexPath) as! food
    if !cityState.contains(indexPath.row) {
        cityState.append(indexPath.row)
       // cell.animateCell(at: indexPath.row)
    }
}
func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            myTableView.beginUpdates()
            cityArray.remove(at: indexPath.row)
            myTableView.deleteRows(at: [indexPath], with: .fade)
            myTableView.endUpdates()
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        150
    }
    
    @objc private func openCityDetails(_ sender:UIButton) {
        let vc = rec()
        vc.arr = cityArray[sender.tag]
                navigationController?.pushViewController(vc, animated: true)
       
        print(sender.tag)
    }
}
