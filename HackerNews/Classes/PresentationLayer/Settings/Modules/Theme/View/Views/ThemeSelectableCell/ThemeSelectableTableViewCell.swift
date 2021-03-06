//
//  ThemeSelectableTableViewCell.swift
//  HackerNews
//
//  Created by Никита Васильев on 15.04.2020.
//  Copyright © 2020 Никита Васильев. All rights reserved.
//

import UIKit

final class ThemeSelectableTableViewCell: UITableViewCell {
    
    // MARK: Outlets
    @IBOutlet private var titleLabel: UILabel!
    
    // MARK: Public Properties
    
    /// A `String` value that contains the cell title.
    var title: String = "" {
        didSet {
            titleLabel.text = title
        }
    }
    
    // MARK: Initialization
    override func awakeFromNib() {
        super.awakeFromNib()
        self.selectedBackgroundView = UIView()
    }
    
    // MARK: Override
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: true)
    }
    
    /// Apply theme to cell.
    ///
    /// - Parameter theme: A `Theme` value that contains the current application theme.
    func apply(theme: Theme) {
        theme.cellOne.apply(to: self)
        theme.baseSettingsTitle.apply(to: titleLabel)
    }
}
