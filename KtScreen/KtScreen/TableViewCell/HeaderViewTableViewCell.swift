//
//  HeaderViewTableViewCell.swift
//  KtScreen
//
//  Created by Darshan Dangar on 15/06/23.
//

import UIKit

class HeaderViewTableViewCell: UITableViewCell {
    
    // MARK: Outlets
    @IBOutlet weak var imgParkingLot: UIImageView!
    @IBOutlet weak var lblLocationId: UILabel!
    @IBOutlet weak var lblParkingLotName: UILabel!
    @IBOutlet weak var lblOperatingHours: UILabel!
    @IBOutlet weak var lblLocationPhoneNo: UILabel!
    @IBOutlet weak var amentiesCollectionView: UICollectionView!
    @IBOutlet weak var segmentController: UISegmentedControl!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        initialSetUp()
    }
    
    // MARK: iniitialSetUp
    func initialSetUp() {
        amentiesCollectionView.delegate = self
        amentiesCollectionView.dataSource = self
        registerCell()
        segmentController.setTitleColor(.white, state: .selected)
    }
    
    // MARK: register cell
    func registerCell() {
        amentiesCollectionView.register(UINib(nibName: "AmenitiesCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "AmenitiesCollectionViewCell")
    }
    
    // MARK: config Cell
    func configCell(data: AssignedParkingLotModel) {
        imgParkingLot.image = UIImage(named: data.imgParkingLot)
        lblLocationId.text = data.locationId
        lblParkingLotName.text = data.parkingLotName
        lblOperatingHours.text = data.oeratingHour
        lblOperatingHours.text = data.oeratingHour
        lblLocationPhoneNo.text = data.locationPhoneNo
    }
    
    // MARK: IbActions
    @IBAction func onTapSegmentController(_ sender: UISegmentedControl) {
        segmentController.setTitleColor(.white, state: .selected)
    }
    
}

// MARK: CollectionView Delegate
extension HeaderViewTableViewCell: UICollectionViewDelegate {}

// MARK: CollectionView DataSource
extension HeaderViewTableViewCell: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return AmenitiesModel.arrAmenitiesDetails.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "AmenitiesCollectionViewCell", for: indexPath) as? AmenitiesCollectionViewCell else {return UICollectionViewCell()}
        let dataOfParticularIndex = AmenitiesModel.arrAmenitiesDetails[indexPath.row]
        cell.configCell(data: dataOfParticularIndex)
        return cell
    }
}

// MARK: CollectionView FlowLayout
extension HeaderViewTableViewCell: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: (collectionView.frame.width - 10) / 2, height: 20)
    }
    
}
