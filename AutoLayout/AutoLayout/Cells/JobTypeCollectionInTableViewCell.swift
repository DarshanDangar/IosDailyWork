//
//  JobTypeCollectionInTableViewCell.swift
//  AutoLayout
//
//  Created by Darshan Dangar on 06/06/23.
//

import UIKit

class JobTypeCollectionInTableViewCell: UITableViewCell {
    
    // MARK: Outlets
    @IBOutlet weak var JobTypeCVInTV: UICollectionView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        initialSetUP()
    }
    
    // MARK: initialSetUp
    func initialSetUP() {
        JobTypeCVInTV.delegate = self
        JobTypeCVInTV.dataSource = self
        JobTypeCVInTV.register(UINib(nibName: Constant.TblCell.jobTypeCollectionViewCell, bundle: nil), forCellWithReuseIdentifier: Constant.TblCell.jobTypeCollectionViewCell)
    }
    
}
// MARK: UiCollectionView DataSource
extension JobTypeCollectionInTableViewCell: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return JobModelforTableView.dictJobData["Featured Job"]?.count ?? 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = JobTypeCVInTV.dequeueReusableCell(withReuseIdentifier: Constant.TblCell.jobTypeCollectionViewCell, for: indexPath) as? JobTypeCollectionViewCell else {return UICollectionViewCell()}
        let index = JobModelforTableView.dictJobData["Featured Job"]
        
        cell.configCell(data: (index?[indexPath.row])!)
        return cell
    }
    
}

// MARK: CollectionView Delegate
extension JobTypeCollectionInTableViewCell: UICollectionViewDelegate {}

// MARK: CollectionView FlowLayout
extension JobTypeCollectionInTableViewCell: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: (JobTypeCVInTV.frame.width) , height: 158)
    }
    
}
