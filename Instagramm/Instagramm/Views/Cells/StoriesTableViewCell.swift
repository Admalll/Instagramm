//
//  StoriesTableViewCell.swift
//  Instagramm
//
//  Created by Vlad on 03.08.2021.
//

import UIKit

final class StoriesTableViewCell: UITableViewCell {

    @IBOutlet private weak var scrollStoriesView: UIScrollView!

    override func awakeFromNib() {
        super.awakeFromNib()

        scrollStoriesView.contentSize = CGSize(width: UIScreen.main.bounds.width * 2, height: 100)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
