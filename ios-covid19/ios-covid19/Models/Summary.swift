//
//  Summary.swift
//  ios-covid19
//
//  Created by Dwi Randy Herdinanto on 21/03/20.
//  Copyright © 2020 dwirandyh.com. All rights reserved.
//

import Foundation

struct Summary: Decodable, Identifiable {
    let id = UUID()
    let confirmed: Confirmed
    let recovered: Recovered
    let deaths: Deaths
    let activeCare: ActiveCare
    let metadata: Metadata
}

struct Confirmed: Decodable {
    let value: Int
}

struct Recovered: Decodable {
    let value: Int
}

struct Deaths: Decodable {
    let value: Int
}

struct ActiveCare: Decodable {
    let value: Int
}

struct Metadata: Decodable {
    let lastUpdatedAt: String
}

extension Summary {
    static var defaultValue: Summary {
        Summary(confirmed: Confirmed(value: 0), recovered: Recovered(value: 0), deaths: Deaths(value: 0), activeCare: ActiveCare(value: 0), metadata: Metadata(lastUpdatedAt: ""))
    }
}
