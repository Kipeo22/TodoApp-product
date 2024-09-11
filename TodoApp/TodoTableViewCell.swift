//
//  TodoTableViewCell.swift
//  TodoApp
//
//  Created by x22086xx on 2024/09/11.
//

import UIKit

class TodoTableViewCell: UITableViewCell {
    
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var detailLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setCell(title: String, detail: String){
        titleLabel.text = title
        detailLabel.text = detail
    }
    
}
