//
//  WebViewViewController.swift
//  AutoLayout
//
//  Created by Darshan Dangar on 05/06/23.
//

import UIKit
import WebKit

class WebViewViewController: UIViewController  {
    
    // MARK: Variables
    var webView: WKWebView!
    
    override func loadView() {
        let webConfiguration = WKWebViewConfiguration()
        webView = WKWebView(frame: .zero, configuration: webConfiguration)
        view = webView
        webView.scrollView.refreshControl = UIRefreshControl()
    }
    
    // MARK: View LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        initialSetUp()
    }
    
    // MARK: iniitialSetUp
    func initialSetUp() {
        webView.uiDelegate = self
        webView.navigationDelegate = self
        let myURL = URL(string:"https://www.facebook.com")
        let myRequest = URLRequest(url: myURL!)
        webView.load(myRequest)
    }
    
}

// MARK: WebView Delegate
extension WebViewViewController: WKUIDelegate, WKNavigationDelegate  {
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        print("Did finish")
    }
    
    func webViewDidClose(_ webView: WKWebView) {
        print("webViewDidClose")
    }
    
    func webView(_ webView: WKWebView, contextMenuDidEndForElement elementInfo: WKContextMenuElementInfo) {
        print("contextMenuDidEndForElement")
        webView.reload()
        
    }
    
    func webView(_ webView: WKWebView, createWebViewWith configuration: WKWebViewConfiguration, for navigationAction: WKNavigationAction, windowFeatures: WKWindowFeatures) -> WKWebView? {
        print("createWebViewWith")
        return webView
    }
    
    func webView(_ webView: WKWebView, didFail navigation: WKNavigation!, withError error: Error) {
        print(error)
    }
    
}
