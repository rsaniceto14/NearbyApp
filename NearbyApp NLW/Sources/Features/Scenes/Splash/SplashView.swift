//
//  SplashView.swift
//  NearbyApp NLW
//
//  Created by Raphael Aniceto on 01/02/25.
//

import Foundation
import UIKit

class SplashView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
//        animatedEffect()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    let logoImageView: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "logoImage")
        image.contentMode = .scaleAspectFit
        image.translatesAutoresizingMaskIntoConstraints = false
        
        return image
    }()
    
    let backgrounImage: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "backgroundImage")
        image.contentMode = .scaleAspectFit
        image.translatesAutoresizingMaskIntoConstraints = false
            
        return image
    }()
    
    private func setupUI() {
        self.addSubview(logoImageView)
        self.addSubview(backgrounImage)
        
        setupConstraints()
    }
    
    private func setupConstraints(){
        NSLayoutConstraint.activate([
            logoImageView.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            logoImageView.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            
            backgrounImage.bottomAnchor.constraint(equalTo: self.bottomAnchor)
            
        ])
        
    }
    
    private func animatedEffect(){
//        fadeOutEffect() // func sample to using effects on splash
        //jumpEffect() // can create any effects
    }
    
//    private func fadeOutEffect(){
//        UIView.animate(withDuration: 1.5, delay: 2.0, options: .curveEaseOut, animations: { self.logoImageView.alpha = 0})
//        { _ in self.transitionToLogin()}
//    }
}
