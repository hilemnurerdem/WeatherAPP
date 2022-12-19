//
//  TableViewCell.swift
//  WeatherAPP
//
//  Created by Hilem nur Erdem on 19.12.2022.
//

import UIKit

class TableViewCell: UITableViewCell {

    
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var colorView: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
    }
    
    
    
    func setData(data: WeatherModel){
        titleLabel.text = data.title
        colorView.backgroundColor = data.color
    }
    
}
