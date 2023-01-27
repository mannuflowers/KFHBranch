//
//  branchDetail.swift
//  KFHBranch
//
//  Created by asmat manal on 25/01/23.
//

import Foundation


struct AtmType: Decodable {
    var displayName: String?
    var displayNameEn: String?
}

struct branch: Decodable {
    var address: String?
    var addressEn: String?
    var coordinates: String?
    var atmType: [AtmType] = [AtmType]()

    
    enum BranchDetailResponseKeys: String, CodingKey {
        case atmType = "atmType"
        case address = "address"
        case addressEn = "addressEn"
        case coordinates = "coordinates"
    }
    
    enum atmTypeKeys: String, CodingKey {
        case displayName = "displayName"
        case displayNameEn = "displayNameEn"
    }


    init(from decoder: Decoder) throws {
        if let BranchDetailContainer = try? decoder.container(keyedBy: BranchDetailResponseKeys.self) {

            self.atmType = try! BranchDetailContainer.decode([AtmType].self, forKey: BranchDetailResponseKeys.atmType)
            self.address = try? BranchDetailContainer.decode(String.self, forKey: .address)
            self.addressEn = try? BranchDetailContainer.decode(String.self, forKey: .addressEn)
            self.coordinates = try? BranchDetailContainer.decode(String.self, forKey: .coordinates)

        }
    }
}
