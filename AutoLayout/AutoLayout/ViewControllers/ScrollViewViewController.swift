//
//  ScrollViewViewController.swift
//  AutoLayout
//
//  Created by Darshan Dangar on 30/05/23.
//

import UIKit

class ScrollViewViewController: UIViewController {
    
    // MARK: Outlets
    @IBOutlet weak var pageController: UIPageControl!
    @IBOutlet weak var contentView: UIView!
    @IBOutlet weak var scrollView: UIScrollView!
    
    // MARK: LifeCycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        initialSetUp()
    }
    
    // MARK: iniitialSetUp
    func initialSetUp() {
        scrollView.delegate = self
        scrollView.isPagingEnabled = true
        pageController.isHidden = true
    }
    
    // MARK: Action Methods
    @IBAction func onTapPageController(_ sender: UIPageControl) {
        let pageIndex = sender.currentPage
        print(pageIndex)
        let pageSize = scrollView.frame.size
        let contentOffset = CGPoint(x: pageSize.width * CGFloat(pageIndex) + 10 , y: 0)
        scrollView.setContentOffset(contentOffset, animated: true)
    }
    
}

// MARK: Extension ScrollViewDelegate
extension ScrollViewViewController: UIScrollViewDelegate {
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        pageController.isHidden = false
    }
    
    func scrollViewWillBeginDragging(_ scrollView: UIScrollView) {
        print("scrollViewWillBeginDragging")
    }
    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        print("scrollViewDidEndDecelerating")
        let index = Int(scrollView.contentOffset.x / scrollView.bounds.width)
        print(scrollView.contentOffset.x)
        print(scrollView.bounds.width)
        pageController.currentPage = index
        print(index)
    }
    
}
