//
//  ListAndGridViewController.swift
//  AutoLayout
//
//  Created by Darshan Dangar on 14/06/23.
//

import UIKit

class ListAndGridViewController: UIViewController {
    
    // MARK: Outlets
    @IBOutlet weak var ListAndGridCollectionView: UICollectionView!
    @IBOutlet weak var btnListOrGrid: UIButton!
    
    // MARK: Variables
    var isTaped = false
    
    // MARK: View LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        initialSetUp()
    }
    
    // MARK: iniitialSetUp
    func initialSetUp() {
        ListAndGridCollectionView.delegate = self
        ListAndGridCollectionView.dataSource = self
        ListAndGridCollectionView.register(UINib(nibName: Constant.TblCell.listAndGridCollectionViewCell, bundle: nil), forCellWithReuseIdentifier: Constant.TblCell.listAndGridCollectionViewCell)
        ListAndGridCollectionView.register(UINib(nibName: Constant.TblCell.collectionReusableViewforHeader, bundle: nil), forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: Constant.TblCell.collectionReusableViewforHeader)
    }
    
    
    @IBAction func btnListAndGridAction(_ sender: UIButton) {
        isTaped.toggle()
        if isTaped {
            btnListOrGrid.setTitle(Constant.Title.grid, for: .normal)
        } else {
            btnListOrGrid.setTitle(Constant.Title.list, for: .normal)
        }
        ListAndGridCollectionView.reloadData()
    }
    
}

// MARK: CollectionView Delegate
extension ListAndGridViewController: UICollectionViewDelegate {}

// MARK: CollectionView DataSource
extension ListAndGridViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return OpeningJobModel.arrOpeningJob.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: Constant.TblCell.listAndGridCollectionViewCell, for: indexPath) as? ListAndGridCollectionViewCell else {return UICollectionViewCell()}
        let indexData = OpeningJobModel.arrOpeningJob[indexPath.row]
        cell.configCell(data: indexData)
        return cell
    }
    
}

// MARK: CollectionView FlowLayout
extension ListAndGridViewController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if isTaped {
            return CGSize(width: (collectionView.frame.width - 20), height: 60)
        } else {
            return CGSize(width: (collectionView.frame.width - 20) / 2 , height: 60)
        }
    }
    
}
