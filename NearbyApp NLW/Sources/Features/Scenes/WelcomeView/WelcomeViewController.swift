//
//  WelcomeViewController.swift
//  NearbyApp NLW
//
//  Created by Raphael Aniceto on 01/02/25.
//

import Foundation
import UIKit


class WelcomeViewController: UIViewController {
    
    let contentView: WelcomeView
    
    init(contentView: WelcomeView) {
        self.contentView = contentView
        super.init(nibName: nil, bundle: nil)

    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    override func viewDidLoad() { // carrega os metodos quando a tela e carregada
        super.viewDidLoad()
        
        setup()
    }
    
    private func setup(){
        self.view.addSubview(contentView)
        view.backgroundColor = Colors.gray100
        setupConstraints()
    }
    
    private func setupConstraints(){
        self.setupContentViewToViewController(contentView: contentView)
    }
    
}
