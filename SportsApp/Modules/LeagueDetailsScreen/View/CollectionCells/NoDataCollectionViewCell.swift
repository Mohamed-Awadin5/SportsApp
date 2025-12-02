//
//  NoDataCollectionViewCell.swift
//  SportsApp
//  Created by mohamed awadin7 on 30/11/2025.


import UIKit

class NoDataCollectionViewCell: UICollectionViewCell {

    static let id = "nodata"
    static func nib()->UINib{
        return UINib(nibName: "NoDataCollectionViewCell", bundle: nil)
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
