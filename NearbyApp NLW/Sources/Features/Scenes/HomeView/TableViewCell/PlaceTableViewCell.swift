//
//  PlaceTableViewCell.swift
//  NearbyApp NLW
//
//  Created by Raphael Aniceto on 04/03/25.
//

import Foundation
import UIKit


class PlaceTableViewCell: UITableViewCell {
    static let identifier = "PlaceTableViewCell"
    
    let itemImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 8
        imageView.contentMode = .scaleAspectFill
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let titleLabel: UILabel = {
        let label = UILabel()
        label.font = Typography.titleSM
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    
    let descripationLabel: UILabel = {
        let label = UILabel()
        label.font = Typography.textSM
        label.numberOfLines = 0
        label.textColor = Colors.gray300
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let ticketIcon: UIImageView = {
        let imageView = UIImageView()
        imageView.tintColor = Colors.redBase
        imageView.contentMode = .scaleAspectFill
        imageView.image = UIImage(named: "ticket")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
}

