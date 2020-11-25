//
//  ShopItemTableViewCell.swift
//  Swift Alps Cyberpunk Shop
//
//  Created by Roxana Jula on 25/11/2020.
//

import UIKit

class ShopItemTableViewCell: UITableViewCell {
    @IBOutlet weak var containerView: UIView! {
        didSet {
            containerView.layer.cornerRadius = 16
        }
    }
    @IBOutlet weak var shopItemImageView: UIImageView! {
        didSet {
            shopItemImageView.layer.cornerRadius = 16
            shopItemImageView.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMinXMinYCorner]
        }
    }
    @IBOutlet weak var shopItemNameLabel: UILabel! {
        didSet {
            shopItemNameLabel.textColor = .black
            shopItemNameLabel.font = .systemFont(ofSize: 20, weight: .bold)
        }
    }
    @IBOutlet weak var shopItemDescriptionLabel: UILabel! {
         didSet {
            shopItemDescriptionLabel.textColor = .lightGray
            shopItemDescriptionLabel.font = .systemFont(ofSize: 18, weight: .regular)
         }
     }
    @IBOutlet weak var shopItemPriceLabel: UILabel! {
         didSet {
            shopItemPriceLabel.textColor = .lightGray
            shopItemPriceLabel.font = .systemFont(ofSize: 18, weight: .regular)
         }
     }
}
