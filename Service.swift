//
//  Service.swift
//  KFHBranch
//
//  Created by asmat manal on 25/01/23.
//

import Foundation
import Alamofire
import SwiftyJSON


//var addressEnArray = [String]()
//public var addressArray = [String]()
//var coordinatesArray = [String]()
//public var counter = 1


//class service {
//    
//
//    fileprivate var baseUrl = ""
//    init(baseUrl: String = "") {
//        self.baseUrl = baseUrl
//    }
//
//    func getAllBranchDetails(endPoint: String){
//        AF.request(self.baseUrl + endPoint,method: .get,encoding: URLEncoding.default).response{ (responseData) in
//            guard let data = responseData.data else {return}
//            do{
//               // let branchResponse = try? JSONDecoder().decode([branch].self, from: data)
//                let value = JSON(data)
////                if let branchResponse = branchResponse {
//                   // print(branchResponse)
//                for index in 0...20
//                {
//                    addressEnArray.append(value[index]["addressEn"].rawValue as! String)
//                   // print(addressEnArray)
//                    addressArray.append(value[index]["address"].rawValue as! String)
//                   // print(addressArray)
//                    coordinatesArray.append(value[index]["coordinates"].rawValue as! String)
//                   // print(coordinatesArray)
//                    //print("\(value[index]["address"])\(value[index]["addressEn"])")
//                   // print(value[index]["atmType"].map {$0.1["displayName"]})
//                    }
//                 print(addressEnArray)
//                 print(addressArray)
//                 print(coordinatesArray)
//                print(addressArray.count)
//                }
//            counter = addressArray.count
//            print(counter)
//                
//            }
//        }
//    }



        








//        AF.request(self.baseUrl + endPoint,method: .get,encoding: URLEncoding.default).responseJSON(completionHandler: { (responseData) in
//            switch responseData.result
//            {
//            case .success(let data):
//                print("we got the response, it's a success")
//                //print(data)
//                let value = JSON(data)
//                for index in 0...20
//                {
////                    address.append(value[index]["address"].rawValue as! String)
//                    print("\(value[index]["address"]) \(value[index]["addressEn"])")
//                }
//
//            case .failure(let error):
//                print("error in decoding \(error)")
//
//            }
//
//        }
//        )
//
////        print(address)
//    }
//
////    func completionHandler(callBack: @escaping branchesCallBack) {
////        self.callBack = callBack
////    }
//}
//

//responseData in
//switch responseData.result
//{
//case .success(let data):
//    print("we got the response, it's a success")
//    //print(data)
//    //let value = JSON(data)
//    if let data = responseData {
//        let branchResponse = try?.JSONDecoder().decode(branch.self, from: data)
//        for index in 0...20
//        {
//            addressEn.append(value[index]["addressEn"].rawValue as! String)
//            address.append(value[index]["address"].rawValue as! String)
//
//            // print(address)
//            print((value[index]["displayName"]))
//        }
//    }
//case .failure(let error):
//    print("error in decoding \(error)")
//
//}
//})
//}
//}


