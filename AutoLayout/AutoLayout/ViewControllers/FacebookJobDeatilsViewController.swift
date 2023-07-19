//
//  FacebookJobDeatilsViewController.swift
//  AutoLayout
//
//  Created by Darshan Dangar on 09/06/23.
//

import UIKit

class FacebookJobDeatilsViewController: UIViewController {
    
    // MARK: Outlets
    @IBOutlet weak var facebookImageView: UIView!
    @IBOutlet weak var juniorView: UIView!
    @IBOutlet weak var fullTimeView: UIView!
    @IBOutlet weak var designView: UIView!
    @IBOutlet weak var btnApplyNow: UIButton!
    @IBOutlet weak var categoriesNameCollectionView: UICollectionView!
    @IBOutlet weak var categoriesDetailsTableView: UITableView!
    
    // MARK: View LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setUp()
    }
    
    // MARK: setUp
    private func setUp() {
        facebookImageView.layer.cornerRadius = facebookImageView.frame.height / 2
        fullTimeView.cornerRadius(16)
        designView.cornerRadius(16)
        juniorView.cornerRadius(16)
        btnApplyNow.cornerRadius(16)
        categoriesNameCollectionView.delegate = self
        categoriesNameCollectionView.dataSource = self
        categoriesDetailsTableView.delegate = self
        categoriesDetailsTableView.dataSource = self
        categoriesNameCollectionView.register(UINib(nibName: Constant.TblCell.facebookDeatilsCategoriesCollectionViewCell, bundle: nil), forCellWithReuseIdentifier: Constant.TblCell.facebookDeatilsCategoriesCollectionViewCell)
        categoriesDetailsTableView.register(UINib(nibName: Constant.TblCell.facebookCategoriesResponsibilitiesTableViewCell, bundle: nil), forCellReuseIdentifier: Constant.TblCell.facebookCategoriesResponsibilitiesTableViewCell)
        categoriesDetailsTableView.register(UINib(nibName: Constant.TblCell.facebookDetailsHeaderForTableViewTableViewCell, bundle: nil), forCellReuseIdentifier: Constant.TblCell.facebookDetailsHeaderForTableViewTableViewCell)
    }
    
}

// MARK: UITableView Delegates
extension FacebookJobDeatilsViewController: UITableViewDelegate {}

// MARK: UITableView DataSource
extension FacebookJobDeatilsViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return FacebookJobCategoriesDetails.arrDiscription.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = categoriesDetailsTableView.dequeueReusableCell(withIdentifier: Constant.TblCell.facebookCategoriesResponsibilitiesTableViewCell) as? FacebookCategoriesResponsibilitiesTableViewCell else {return UITableViewCell()}
        let indexData = FacebookJobCategoriesDetails.arrDiscription[indexPath.row]
        cell.configCell(data: indexData)
        return cell
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        guard let data = categoriesDetailsTableView.dequeueReusableCell(withIdentifier: Constant.TblCell.facebookDetailsHeaderForTableViewTableViewCell) as? FacebookDetailsHeaderForTableViewTableViewCell else {return UITableViewCell()}
        return data
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 140
    }
    
}

// MARK: UiCollectionView Delegates
extension FacebookJobDeatilsViewController: UICollectionViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
        //        return 100
    }
}

// MARK: UiCollectionView DataSource
extension FacebookJobDeatilsViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return CategoriesName.arrCategoriesName.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = categoriesNameCollectionView.dequeueReusableCell(withReuseIdentifier: Constant.TblCell.facebookDeatilsCategoriesCollectionViewCell, for: indexPath) as? FacebookDeatilsCategoriesCollectionViewCell else {return UICollectionViewCell()}
        let dataforIndex = CategoriesName.arrCategoriesName[indexPath.row]
        cell.configCell(data: dataforIndex)
        return cell
    }
    
}

// MARK: CollectionView FlowLayout
extension FacebookJobDeatilsViewController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 21
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        .zero
    }
    
}
