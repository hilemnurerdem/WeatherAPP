//
//  WeatherViewController.swift
//  WeatherAPP
//
//  Created by Hilem nur Erdem on 19.12.2022.
//

import UIKit

class WeatherViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    var weatherArray = [WeatherModel]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        weatherArray.append(WeatherModel(title: "tite1", color: UIColor(named: "background")!))
        weatherArray.append(WeatherModel(title: "tite2", color: UIColor(named: "foreground")!))
        

        tableView.delegate = self
        tableView.dataSource = self
        let nibCell = UINib(nibName: "TableViewCel", bundle: nil)
        tableView.register(nibCell, forCellReuseIdentifier: "cell")
    }
    
    
    
    
    
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return weatherArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! TableViewCell
        cell.setData(data: weatherArray[indexPath.row])
        return cell
    }


}
