//
//  ExploreService.swift
//  AirBnbClone
//
//  Created by macOS on 22/03/2024.
//

import Foundation

class ExploreService {
    func fetchListing() async throws -> [Listing] {
        return DeveloperPreview.shared.listing
    }
}
