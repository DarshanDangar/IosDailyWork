//
//  UITableViewExtension.swift
//  KtScreen
//
//  Created by Darshan Dangar on 18/07/23.
//

import UIKit

extension UITableView {
    
    func layoutTableViewHeaderHeight() {
        guard let headerView = tableHeaderView else { return }
                headerView.translatesAutoresizingMaskIntoConstraints = false

                let headerWidth = headerView.bounds.size.width
                let temporaryWidthConstraint = headerView.widthAnchor.constraint(equalToConstant: headerWidth)
                headerView.addConstraint(temporaryWidthConstraint)
                headerView.setNeedsLayout()
                headerView.layoutIfNeeded()

                let headerSize = headerView.systemLayoutSizeFitting(UIView.layoutFittingCompressedSize)
                let height = headerSize.height
                var frame = headerView.frame
                frame.size.height = height
                headerView.frame = frame
                tableHeaderView = headerView

                headerView.removeConstraint(temporaryWidthConstraint)
                headerView.translatesAutoresizingMaskIntoConstraints = true
    }
    
}
