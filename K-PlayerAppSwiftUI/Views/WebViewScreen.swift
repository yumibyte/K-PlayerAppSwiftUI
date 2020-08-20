//
//  WebViewScreen.swift
//  K-PlayerAppSwiftUI
//
//  Created by Ashley Raigosa on 8/20/20.
//  Copyright © 2020 Ashley Raigosa. All rights reserved.
//

import UIKit
import WebKit


class WebViewScreen: UIViewController, WKNavigationDelegate {
    
    var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url = URL(string: "https://sites.google.com/site/ashleyraigosa/")
        let request = URLRequest(url: url!)
        webView.load(request)
        
        
    }
    override func loadView() {
        webView = WKWebView(frame: .zero)
        webView.navigationDelegate = self
        view = webView
    }
    
}
