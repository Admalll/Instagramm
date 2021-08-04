//
//  FeedController.swift
//  Instagramm
//
//  Created by Vlad on 01.08.2021.
//

import UIKit

final class FeedViewController: UIViewController {

    enum CellType {
        case startPost
        case stories
        case post
        case recommend
    }

    @IBOutlet weak var feedTableView: UITableView!

    let cellTypes: [CellType] = [.stories, .startPost, .recommend, .post]
    var posts: [Post] = []


    override func viewDidLoad() {
        super.viewDidLoad()

        feedTableView.dataSource = self
        feedTableView.delegate = self

        generetarePosts()
    }

    private func generetarePosts() {
        posts += [Post(avatarImageName: "", nickname: "", postImageName: "", commentText: ""),
                  Post(avatarImageName: "", nickname: "", postImageName: "", commentText: "")]
    }
}

extension FeedViewController: UITableViewDataSource {

    func numberOfSections(in tableView: UITableView) -> Int {
        cellTypes.count
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let types = cellTypes[section]
        switch types {
        case .stories:
            return 1
        case .startPost:
            return 1
        case .recommend:
            return 1
        case .post:
            return posts.count - 1
        }
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let types = cellTypes[indexPath.section]
        switch types {
        case .stories:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "StoriesTableViewCell") as? StoriesTableViewCell else { return UITableViewCell() }
            return cell
        case .post:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "PostTableViewCell") as? PostTableViewCell else { return UITableViewCell() }
            let post = posts[indexPath.row]
            cell.configurePostCell(post: post)
            return cell
        case .startPost:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "PostTableViewCell") as? PostTableViewCell else { return UITableViewCell() }
            return cell
        case .recommend:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "RecommendTableViewCell") as? RecommendTableViewCell else { return UITableViewCell() }
            return cell
        }
    }
}

extension FeedViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        let types = cellTypes[indexPath.section]
        switch types {
        case .stories:
            return 100.0
        case .post, .startPost:
            return 400.0
        case .recommend:
            return 200.0
        }
    }
}
