//
//  TableViewCell.swift
//  onlineapi
//
//  Created by akash mac mini on 11/12/20.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var lblid: UILabel!
    @IBOutlet weak var lbltitel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
