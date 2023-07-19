//
//  CategoriesViewController.swift
//  AutoLayout
//
//  Created by Darshan Dangar on 03/06/23.
//

import UIKit

class CategoriesViewController: UIViewController {
    
    // MARK: Outlets
    @IBOutlet weak var categoriesCollectionViewController: UICollectionView!
    
    var dictCategories = CategoriesModel.dictOfCategories
    
    // MARK: View LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        initialSetUp()
    }
    
    // MARK: iniitialSetUp
    private func initialSetUp() {
        categoriesCollectionViewController.delegate = self
        categoriesCollectionViewController.dataSource = self
        categoriesCollectionViewController.register(UINib(nibName: Constant.TblCell.categoriesCollectionViewCell, bundle: nil), forCellWithReuseIdentifier: Constant.TblCell.categoriesCollectionViewCell)
        categoriesCollectionViewController.register(UINib(nibName: Constant.TblCell.collectionReusableViewforHeader, bundle: nil), forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: Constant.TblCell.collectionReusableViewforHeader)
    }
}

// MARK: UiCollectionView DataSource
extension CategoriesViewController: UICollectionViewDataSource {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return dictCategories.keys.count
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if section == 0 {
            return dictCategories["Popular"]?.count ?? 0
        } else {
            return dictCategories["Trending"]?.count ?? 0
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = categoriesCollectionViewController.dequeueReusableCell(withReuseIdentifier: Constant.TblCell.categoriesCollectionViewCell, for: indexPath) as? CategoriesCollectionViewCell else {return UICollectionViewCell()}
        switch indexPath.section {
        case 0:
            let index = dictCategories["Popular"]
            cell.configCell(data: (index?[indexPath.row])!)
            return cell
        case 1:
            let index = dictCategories["Trending"]
            cell.configCell(data: (index?[indexPath.row])!)
            return cell
        default:
            return UICollectionViewCell()
        }
    }
    
}

// MARK: UiCollectionView Delegates
extension CategoriesViewController: UICollectionViewDelegate {
    
}

// MARK: UiCollectionView FlowLayout
extension CategoriesViewController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: (categoriesCollectionViewController.bounds.width - 50) / 2 , height: 122)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 30
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: 5, bottom: 20, right: -5)
    }
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        if kind == UICollectionView.elementKindSectionHeader {
            guard let header = collectionView.dequeueReusableSupplementaryView(ofKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: Constant.TblCell.collectionReusableViewforHeader, for: indexPath) as? CollectionReusableViewforHeader else
            {return UICollectionReusableView()}
            
            switch indexPath.section {
            case 0:
                header.lblCategoryType?.text = Constant.Title.popular
                return header
            case 1:
                header.lblCategoryType?.text = Constant.Title.trending
                return header
            default:
                print(Constant.emptyString)
                return UICollectionReusableView()
            }
            
        }
        return UICollectionReusableView()
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        CGSize(width: collectionView.frame.width , height: 50)
    }
    
}
