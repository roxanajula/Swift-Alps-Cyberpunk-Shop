//
//  ViewController.swift
//  Swift Alps Cyberpunk Shop
//
//  Created by Roxana Jula on 25/11/2020.
//

import UIKit

class ViewController: UIViewController {
    let shopItems: [ShopItem] = Bundle.main.decode("shopItems.json")
    
    @IBOutlet weak var tableView: UITableView! {
        didSet {
            tableView.delegate = self
            tableView.dataSource = self
            tableView.showsHorizontalScrollIndicator = false
            tableView.rowHeight = UITableView.automaticDimension
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = #colorLiteral(red: 0.6588235294, green: 0.5647058824, blue: 0.9960784314, alpha: 1)
    }
}

// MARK: - Display Logic -
extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        shopItems.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "\(ShopItemTableViewCell.self)",
                                                       for: indexPath) as? ShopItemTableViewCell
        else { fatalError("Could not create ShopItemTableViewCell") }
        let shopItem = shopItems[indexPath.row]
        cell.selectionStyle = .none
        cell.shopItemNameLabel.text = shopItem.name
        cell.shopItemDescriptionLabel.text = shopItem.description
        cell.shopItemPriceLabel.text = "💵 \(shopItem.price)"
        return cell
    }
}


