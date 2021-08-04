//
//  RecentlyTableViewController.swift
//  Instagramm
//
//  Created by Vlad on 04.08.2021.
//

import UIKit

final class RecentlyTableViewController: UIViewController {

    enum SectionType {
        case today
        case onThisWeek
    }

    //MARK: - Private properties

    private let sectionType: [SectionType] = [.today, .onThisWeek]

    //MARK: - UITableViewController

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

//MARK: - UITableViewDataSource

extension RecentlyTableViewController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return sectionType.count
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row % 2 == 0 {
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "RecentlyTableViewCell") as? RecentlyTableViewCell else { return UITableViewCell() }
            return cell
        } else {
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "SubscribeTableViewCell") as? SubscribeTableViewCell else { return UITableViewCell() }
            return cell
        }
    }

    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section {
        case 0:
            return "Сегодня"
        default:
            return "На этой неделе"
        }
    }

    func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        view.tintColor = .black
        let header = view as! UITableViewHeaderFooterView
        header.textLabel?.textColor = .white
    }
}

// MARK: - UITableViewDelegate

extension RecentlyTableViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 85
    }
}
