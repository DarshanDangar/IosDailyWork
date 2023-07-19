//
//  NestedCollectionInTableViewCell.swift
//  AutoLayout
//
//  Created by Darshan Dangar on 08/06/23.
//

import UIKit

class NestedCollectionInTableViewCell: UITableViewCell {
    
    // MARK: Outlets
    @IBOutlet weak var collectionViewForJob: UICollectionView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        initialSetUp()
    }
    
    // MARK: initialSetUp
    private func initialSetUp() {
        collectionViewForJob.delegate = self
        collectionViewForJob.dataSource = self
        collectionViewForJob.register(UINib(nibName: Constant.TblCell.jobTypeCollectionViewCell, bundle: nil), forCellWithReuseIdentifier: Constant.TblCell.jobTypeCollectionViewCell)
        collectionViewForJob.register(UINib(nibName: Constant.TblCell.categoriesCollectionViewCell, bundle: nil), forCellWithReuseIdentifier: Constant.TblCell.categoriesCollectionViewCell)
        collectionViewForJob.register(UINib(nibName: Constant.TblCell.expandableCollectionViewCell, bundle: nil), forCellWithReuseIdentifier: Constant.TblCell.expandableCollectionViewCell)
    }
    
}

// MARK: CollectionView Delegate
extension NestedCollectionInTableViewCell: UICollectionViewDelegate {}

// MARK: CollectionView DataSource
extension NestedCollectionInTableViewCell: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return OpeningJobModel.arrOpeningJob.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let data = collectionViewForJob.dequeueReusableCell(withReuseIdentifier: Constant.TblCell.expandableCollectionViewCell, for: indexPath) as? ExpandableCollectionViewCell else {return UICollectionViewCell()}
        let indexData = OpeningJobModel.arrOpeningJob[indexPath.row]
        data.configCell(data: indexData)
        return data
    }
    
}

// MARK: CollectionView FlowLayout
extension NestedCollectionInTableViewCell: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: (collectionViewForJob.frame.width / 1.5), height: 100)
    }
    
}
