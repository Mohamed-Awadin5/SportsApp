//
//  TeamCollectionViewCell.swift
//  SportsApp
//
//  Created by mohamed awadin7 on 30/11/2025.

import UIKit

class TeamCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var teamImage: UIImageView!
    
    
    @IBOutlet weak var teamName: UILabel!
    
    static let teamCellId = "TeamCollectionViewCell"
    
    @IBOutlet weak var cellView: UIView!
    
    static func nib() -> UINib{
        return UINib(nibName: "TeamCollectionViewCell", bundle: nil)
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
