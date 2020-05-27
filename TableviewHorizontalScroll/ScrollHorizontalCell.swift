//
//  ScrollHorizontalCell.swift
//  TableviewHorizontalScroll
//
//  Created by Daniel Wijono on 27/05/20.
//  Copyright © 2020 Daniel Wijono. All rights reserved.
//

import UIKit

class ScrollHorizontalCell: UITableViewCell, UIScrollViewDelegate {

    @IBOutlet weak var scrollView: UIScrollView!

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    public func setupView() {
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.contentSize = CGSize(width: 500, height: 160)

        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .horizontal
        stackView.distribution = .fillEqually
        stackView.spacing = 20

        scrollView.addSubview(stackView)

        let overview = UIView()
        overview.backgroundColor = UIColor.green
        overview.widthAnchor.constraint(equalToConstant: 150).isActive = true

        let overViewTwo = UIView()
        overViewTwo.backgroundColor = UIColor.systemPink
        overViewTwo.widthAnchor.constraint(equalToConstant: 150).isActive = true

        let overViewThree = UIView()
        overViewThree.backgroundColor = UIColor.blue
        overViewThree.widthAnchor.constraint(equalToConstant: 150).isActive = true

        stackView.addArrangedSubview(overview)
        stackView.addArrangedSubview(overViewTwo)
        stackView.addArrangedSubview(overViewThree)

        stackView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 16).isActive = true
        stackView.heightAnchor.constraint(equalToConstant: 160).isActive = true
    }
}
