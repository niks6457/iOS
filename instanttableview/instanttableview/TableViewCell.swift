//
//  TableViewCell.swift
//  instanttableview
//
//  Created by AkashSir.com on 02/12/20.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var lbl1: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
