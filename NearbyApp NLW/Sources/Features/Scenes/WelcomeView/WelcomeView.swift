      //
//  WelcomeView.swift
//  NearbyApp NLW
//
//  Created by Raphael Aniceto on 01/02/25.
//

import Foundation
import UIKit

class WelcomeView:UIView {
    
    private let logoImageView: UIImageView = {
        let image = UIImageView(image: UIImage(named: "logo"))
        image.contentMode = .scaleAspectFit
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
        
    }()
        
    private let welcomeLabel: UILabel = {
        let label = UILabel()
        label.text = "Boas vindas ao Nearby!"
        label.font = Typography.titleXL
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    private let descriptionLabel: UILabel = {
        let label = UILabel()
        label.text = "Tenha cupoms de vantagem para usar em seus estabelecimentos favoritos"
        label.font = Typography.textMD
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    private let subTextForTips: UILabel = {
        let label = UILabel()
        label.text = "Veja como funciona:"
        label.font = Typography.textMD
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let tipsStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.spacing = 24
        stackView.axis = .vertical
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        return stackView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupUI(){
            
        setupTips()
        addSubview(logoImageView)
        addSubview(welcomeLabel)
        addSubview(descriptionLabel)
        addSubview(subTextForTips)
        addSubview(tipsStackView)
        addSubview(startButton)
        setupConstraints()
    }
    
    private func setupConstraints(){
        NSLayoutConstraint.activate([
            logoImageView.topAnchor.constraint(equalTo: topAnchor, constant: 16),
            logoImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 24),
            logoImageView.widthAnchor.constraint(equalToConstant: 48),
            logoImageView.heightAnchor.constraint(equalToConstant: 48),
            
            welcomeLabel.topAnchor.constraint(equalTo: logoImageView.bottomAnchor, constant: 24),
            welcomeLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 24),
            
            descriptionLabel.topAnchor.constraint(equalTo: welcomeLabel.bottomAnchor, constant: 16),
            descriptionLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 24),
            descriptionLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -24),
            
            subTextForTips.topAnchor.constraint(equalTo: descriptionLabel.bottomAnchor, constant: 24),
            subTextForTips.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 24),
            
            tipsStackView.topAnchor.constraint(equalTo: subTextForTips.bottomAnchor, constant: 24),
            tipsStackView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 24),
            tipsStackView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -24),
            
            startButton.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -36),
            startButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 24),
            startButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -24), // baixo e direita constante negativa
            startButton.heightAnchor.constraint(equalToConstant: 56)
        ])
    }
    
    private func setupTips(){
        guard let icon1 = UIImage(named: "mapIcon") else {return}
        let tip1 = TipsView(icon: icon1 , title: "Encontre estabelecimentos", description: "Veja locais perto de você que são parceiros do Nearby")
        
        let tip2 = TipsView(icon: UIImage(named: "qrcode") ?? UIImage(), title: "Ative o cupom com Qr Code", description: "Escaneie o código no estabelecimento para usar o benefício")
        
        let tip3 = TipsView(icon: UIImage(named: "ticket") ?? UIImage(), title: "Garanta vantagens perto de você", description: "Ative cupons onde estiver, em diferentes tipos de estabelecimento") // UIImage(named: "ticket")! - Pode ser usado para forçar a image no app, porém pode crashar caso não exista a imagem
        
        tipsStackView.addArrangedSubview(tip1)
        tipsStackView.addArrangedSubview(tip2)
        tipsStackView.addArrangedSubview(tip3)
    }
    
    private let startButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Começar", for: .normal)
        button.titleLabel?.font = Typography.action
        button.backgroundColor = Colors.greenBase
        button.setTitleColor(Colors.gray100, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.layer.cornerRadius = 8
        
        return button
    }()
    
}
