//
//  RecommendTableViewCell.swift
//  Instagramm
//
//  Created by Vlad on 03.08.2021.
//

import UIKit

final class RecommendTableViewCell: UITableViewCell {

    //MARK: - IBOutlets

    @IBOutlet private weak var recomScrollView: UIScrollView!

    //MARK: - UITableViewCell

    override func awakeFromNib() {
        super.awakeFromNib()

        recomScrollView.contentSize = CGSize(width: UIScreen.main.bounds.width + 300, height: 143)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
