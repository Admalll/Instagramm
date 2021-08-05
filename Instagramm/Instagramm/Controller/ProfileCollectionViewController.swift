//
//  ProfileCollectionViewController.swift
//  Instagramm
//
//  Created by Vlad on 05.08.2021.
//

import UIKit

final class ProfileViewController: UIViewController {

    enum CellID {
        static let profileCell = "ProfileCollectionViewCell"
    }

    // MARK: - IBOutlets

    @IBOutlet weak var storiesScrollView: UIScrollView!

    // MARK:- UIViewController

    override func viewDidLoad() {
        super.viewDidLoad()

        storiesScrollView.contentSize = CGSize(width: 600, height: 62)
    }
}

extension ProfileViewController: UICollectionViewDataSource {

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 24
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CellID.profileCell, for: indexPath) as? ProfileCollectionViewCell else { return UICollectionViewCell() }
        return cell
    }
}
