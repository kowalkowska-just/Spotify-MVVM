//
//  WelcomeViewController.swift
//  Spotify
//
//  Created by Justyna Kowalkowska on 16/02/2021.
//

import UIKit

class WelcomeViewController: UIViewController {

    //MARK: - Properties
    
    private let signInButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .white
        button.setTitle("Sign In with Spotify", for: .normal)
        button.setTitleColor(.blue, for: .normal)
        button.addTarget(self, action: #selector(didTapSignIn), for: .touchUpInside)
        button.layer.cornerRadius = 25
        return button
    }()
    
    //MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        signInButton.frame = CGRect(x: 20,
                                    y: view.height - 50 - view.safeAreaInsets.bottom,
                                    width: view.width - 40,
                                    height: 50 )
    }
    
    //MARK: - Selectors
    
    @objc private func didTapSignIn() {
        let vc = AuthViewController()
        vc.completionHandler = { [weak self] success in
            DispatchQueue.main.async {
                self?.handleSignIn(success: success)
            }
        }
        vc.navigationItem.largeTitleDisplayMode = .never
        navigationController?.pushViewController(vc, animated: true)
    }
    
    
    //MARK: - Helper Functions
    
    private func setupView() {
        title = "Spotify"
        view.backgroundColor = .systemGreen
        
        view.addSubview(signInButton)
    }
    
    private func handleSignIn(success: Bool) {
        //Log user in or yell at them for error 
    }
}
