//
//  ButtonCoordinator.swift
//  WebServices
//
//  Created by Darshan Dangar on 18/07/23.
//

import UIKit

class ButtonCoordinator: Coordinator {
    
    var navigationController: UINavigationController?
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        guard let butttonListVC = UIStoryboard(name: Constants.Storyboard.main, bundle: nil).instantiateViewController(withIdentifier: Constants.ViewController.butttonListVC) as? ButttonListVC else {
            return
        }
        butttonListVC.coordinator = self
        navigationController?.viewControllers = [butttonListVC]
    }
    
    func gotoRegister() {
        guard let registerVC = UIStoryboard(name: Constants.Storyboard.main, bundle: nil).instantiateViewController(withIdentifier: Constants.ViewController.register) as? Register else {
            return
        }
        registerVC.coordinator = self
        navigationController?.pushViewController(registerVC, animated: true)
    }
    
    func gotoNews() {
        guard let newsVC = UIStoryboard(name: Constants.Storyboard.main, bundle: nil).instantiateViewController(withIdentifier: Constants.ViewController.newsVC) as? NewsVC else {
            return
        }
        newsVC.coordinator = self
        navigationController?.pushViewController(newsVC, animated: true)
    }
    
    func gotoUploadDownload() {
        guard let uploadDownloadVC = UIStoryboard(name: Constants.Storyboard.main, bundle: nil).instantiateViewController(withIdentifier: Constants.ViewController.imageUploadDownloadVC) as? ImageUploadDownloadVC else {
            return
        }
        uploadDownloadVC.coordinator = self
        navigationController?.pushViewController(uploadDownloadVC, animated: true)
    }
    
    func gotoUserList() {
        guard let userListVC = UIStoryboard(name: Constants.Storyboard.main, bundle: nil).instantiateViewController(withIdentifier: Constants.ViewController.peopleVC) as? PeopleVC else {
            return
        }
        userListVC.coordinator = self
        navigationController?.pushViewController(userListVC, animated: true)
    }
    
    func finish() {
        
    }
    
    func finishToRootView() {
        
    }
    
}
