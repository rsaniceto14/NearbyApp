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
    
    
    let descriptionLabel: UILabel = {
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
        imageView.contentMode = .scaleAspectFit
        imageView.image = UIImage(named: "ticket")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let ticketLabel: UILabel = {
        let label = UILabel()
        label.font = Typography.textXS
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let containerView: UIView = {
        let view = UIView()
        view.layer.cornerRadius = 0
        view.layer.borderWidth = 1
        view.layer.borderColor = Colors.gray200.cgColor
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupUI()
    }
    
    required init?(coder: NSCoder){
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupUI() {
        addSubview(containerView)
        containerView.addSubview(itemImageView)
        containerView.addSubview(titleLabel)
        containerView.addSubview(descriptionLabel)
        containerView.addSubview(ticketIcon)
        containerView.addSubview(ticketLabel)
        setupConstraints()
    }
    
    private func setupConstraints(){
        NSLayoutConstraint.activate([
            containerView.topAnchor.constraint(equalTo: topAnchor, constant: 8),
            containerView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 8),
            containerView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -8),
            containerView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -8),
            
            itemImageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 8),
            itemImageView.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            itemImageView.widthAnchor.constraint(equalToConstant: 116),
            itemImageView.heightAnchor.constraint(equalToConstant: 104),
            
            titleLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 8),
            titleLabel.leadingAnchor.constraint(equalTo: itemImageView.trailingAnchor, constant: 8),
            titleLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -8),
            
            descriptionLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 4),
            descriptionLabel.leadingAnchor.constraint(equalTo: itemImageView.trailingAnchor, constant: 8),
            descriptionLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -8),
            
            ticketIcon.leadingAnchor.constraint(equalTo: itemImageView.trailingAnchor, constant: 8),
            ticketIcon.bottomAnchor.constraint(equalTo: containerView.bottomAnchor, constant: -8),
            ticketIcon.widthAnchor.constraint(equalToConstant: 13),
            ticketIcon.heightAnchor.constraint(equalToConstant: 11),
            
            ticketLabel.centerYAnchor.constraint(equalTo: ticketIcon.centerYAnchor),
            ticketLabel.leadingAnchor.constraint(equalTo: ticketIcon.trailingAnchor, constant: 4)
            
            
            
        ])
    }
    
    func configure(width place: Place){
        itemImageView.image = UIImage(named: place.imageName)
        titleLabel.text = place.title
        descriptionLabel.text = place.description
        ticketLabel.text = "Cupons disponiveis"
    }
}
