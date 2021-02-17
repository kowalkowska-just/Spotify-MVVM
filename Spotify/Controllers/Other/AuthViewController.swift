//
//  AuthViewController.swift
//  Spotify
//
//  Created by Justyna Kowalkowska on 16/02/2021.
//

import UIKit
import WebKit

class AuthViewController: UIViewController, WKNavigationDelegate {

    //MARK: Properties
    
    private var webView: WKWebView = {
        let preferences = WKWebpagePreferences()
        preferences.allowsContentJavaScript = true
        let configuration = WKWebViewConfiguration()
        configuration.defaultWebpagePreferences = preferences
        let webView = WKWebView(frame: .zero, configuration: configuration)
        
        return webView
    }()
    
    public var completionHandler: ((Bool) -> Void)?
    
    //MARK: Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupView()
        webView.navigationDelegate = self
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        webView.frame = view.bounds
    }
    
    //MARK: - Helper Functions
    
    private func setupView() {
        title = "Sign In"
        view.backgroundColor = .systemBackground
        view.addSubview(webView)
    }
}
