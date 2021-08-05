//
//  StoriesTableViewCell.swift
//  Instagramm
//
//  Created by Vlad on 03.08.2021.
//

import UIKit

final class StoriesTableViewCell: UITableViewCell {

    @IBOutlet private weak var storiesScrollView: UIScrollView!

    override func awakeFromNib() {
        super.awakeFromNib()

        storiesScrollView.contentSize = CGSize(width: UIScreen.main.bounds.width * 2, height: 100)
    }
}
