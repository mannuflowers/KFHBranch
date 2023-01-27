//
//  ViewController.swift
//  KFHBranch
//
//  Created by asmat manal on 25/01/23.
//

import UIKit
import Alamofire
import SwiftyJSON

var addressEnArray = [String]()
var addressArray = [String]()
var coordinatesArray = [String]()
var displayNameArray = [String]()
var displayNameEnArray = [String]()


class ViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource {
    
    var branchData = [branch]()
    private var collectionView: UICollectionView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        //let service = service(baseUrl: "https://www.kfh.com/")
        getAllBranchDetails(endPoint: ".rest/mob/branches")
        
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        
        collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        guard let collectionView = collectionView else {
            return
        }
        
        collectionView.register(collectionCell.self, forCellWithReuseIdentifier: collectionCell.identifier)
        collectionView.backgroundColor = UIColor(red: 0.965 , green: 0.965, blue: 0.965, alpha: 1)
        collectionView.delegate = self
        collectionView.dataSource = self
        
        view.addSubview(collectionView)
        collectionView.frame = view.bounds
        
    }
    
    func getAllBranchDetails(endPoint: String){
        let baseUrl = "https://www.kfh.com/"
        AF.request(baseUrl + endPoint,method: .get,encoding: URLEncoding.default).response{ (responseData) in
            guard let data = responseData.data else {return}
            do{
                let branchResponse = try? JSONDecoder().decode([branch].self, from: data)
                let value = JSON(data)
//                if let branchResponse = branchResponse {
//                    print(branchResponse)
                for index in 0...20
                {
                    addressEnArray.append(value[index]["addressEn"].rawValue as! String)
                    addressArray.append(value[index]["address"].rawValue as! String)
                    coordinatesArray.append(value[index]["coordinates"].rawValue as! String)
                    displayNameArray.append(contentsOf: (value[index]["atmType"].map {$0.1["displayName"].rawValue as! String}))
                    displayNameEnArray.append(contentsOf: (value[index]["atmType"].map {$0.1["displayNameEn"].rawValue as! String}))

                    self.collectionView?.reloadData()
                    
                    //print("\(value[index]["address"])\(value[index]["addressEn"])")
                    }
                }
            }
        }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return addressArray.count
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: collectionCell.identifier, for: indexPath) as! collectionCell
        //cell.addressLabel.text = branchData[indexPath.row].address
        let cellIndex = indexPath.item
        cell.mainHeadingLabel.text = "KFH Branch No: " + String(cellIndex+1)
        cell.addressLabel.text = addressArray[cellIndex]
        cell.addressEnLabel.text = addressEnArray[cellIndex]
        cell.coordinatesLabel.text = coordinatesArray[cellIndex]
        cell.displayNameLabel.text = displayNameArray[cellIndex]
        cell.displayNameEnLabel.text = displayNameEnArray[cellIndex]
        cell.contentView.backgroundColor = .white
        return cell
    }
}

extension ViewController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return.init(width: view.frame.width - 20, height: 300)
    }
}













