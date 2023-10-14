//
//  CutsomViewCell.swift
//  GoodWeather
//
//  Created by Sarika Lande on 21/04/23.
//

import UIKit

class CutsomViewCell: UITableViewCell {

    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var temp: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func Configure(_ vm: WheatherViewMode) {
        self.title.text = vm.city
        self.temp.text = String(format: "%.0f",  vm.temp)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
