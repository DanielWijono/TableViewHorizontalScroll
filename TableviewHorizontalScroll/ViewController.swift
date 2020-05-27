//
//  ViewController.swift
//  TableviewHorizontalScroll
//
//  Created by Daniel Wijono on 27/05/20.
//  Copyright © 2020 Daniel Wijono. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var testTableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        testTableView.dataSource = self
        testTableView.delegate = self
        testTableView.register(UINib(nibName: "ScrollHorizontalCell", bundle: nil), forCellReuseIdentifier: "ScrollHorizontalCell")
        testTableView.separatorStyle = .none
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "ScrollHorizontalCell", for: indexPath) as? ScrollHorizontalCell {

            cell.setupView()

            return cell
        }
        return UITableViewCell()
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 180
    }
}

