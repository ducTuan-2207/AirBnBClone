//
//  DeveloperPreview.swift
//  AirBnbClone
//
//  Created by macOS on 21/03/2024.
//

import Foundation

class DeveloperPreview {
    static let shared = DeveloperPreview()
    var listing: [Listing] = [
        .init(
            id: NSUUID().uuidString,
            ownerName: "Duc Tuan", ownerUid: NSUUID().uuidString,
            ownerImageUrl: "main_avt",
            numberOfBedroomms: 4,
            numberOfBathrooms: 3,
            numberOfGuests: 4,
            numberOfBeds: 4,
            pricePerNight: 999,
            latitude: 22.07,
            longitude: 23.45,
            imageURL: ["listing-1","listing-2","listing-3","listing-4",],
            address: "255 Linh Nam",
            city: "Ha Noi",
            state: "3.99",
            title: "Duc Tuan Villa",
            rating: 4.9,
            features: [.selfCheckIn, .superHost],
            amenities: [.wifi, .alarmSystem, .balcony, .laundry, .tv],
            type: .villa
            
        ),
        .init(
            id: NSUUID().uuidString,
            ownerName: "Duc Tuan1", ownerUid: NSUUID().uuidString,
            ownerImageUrl: "main_avt",
            numberOfBedroomms: 4,
            numberOfBathrooms: 3,
            numberOfGuests: 4,
            numberOfBeds: 4,
            pricePerNight: 987,
            latitude: 22.07,
            longitude: 23.45,
            imageURL: ["listing-3","listing-4","listing-5","listing-6"],
            address: "255 Linh Nam",
            city: "Ha Noi",
            state: "2.99",
            title: "Duc Tuan Villa",
            rating: 4.9,
            features: [.selfCheckIn, .superHost],
            amenities: [.wifi, .alarmSystem, .balcony, .laundry, .tv],
            type: .villa
            
        ),
        .init(
            id: NSUUID().uuidString,
            ownerName: "Duc Tuan2", ownerUid: NSUUID().uuidString,
            ownerImageUrl: "main_avt",
            numberOfBedroomms: 4,
            numberOfBathrooms: 3,
            numberOfGuests: 4,
            numberOfBeds: 4,
            pricePerNight: 989,
            latitude: 22.07,
            longitude: 23.45,
            imageURL: ["listing-4","listing-5","listing-6","listing-7"],
            address: "255 Linh Nam",
            city: "Ha Noi",
            state: "1.99",
            title: "Duc Tuan Villa",
            rating: 4.9,
            features: [.selfCheckIn, .superHost],
            amenities: [.wifi, .alarmSystem, .balcony, .laundry, .tv],
            type: .villa
            
        )
    ]
}
