//
//  WelcomeViewController.swift
//  Spotify
//
//  Created by Justyna Kowalkowska on 16/02/2021.
//

import UIKit

class WelcomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }

    private func setupView() {
        view.backgroundColor = .systemGreen
        title = "Spotify"        
    }
}
