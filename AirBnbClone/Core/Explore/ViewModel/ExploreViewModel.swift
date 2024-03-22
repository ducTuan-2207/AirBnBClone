//
//  ExploreViewModel.swift
//  AirBnbClone
//
//  Created by macOS on 22/03/2024.
//

import Foundation

class ExploreViewModel: ObservableObject {
    @Published var listings = [Listing]()
    private let service: ExploreService
    
    init(service: ExploreService){
        self.service = service
        
        Task {
            await fetchListing()
        }
    }
    func fetchListing() async{
        do {
            self.listings = try await service.fetchListing()
        }catch {
            print("DEBUG: Failed to fetch listings with error:\(error.localizedDescription)")
        }
    }
}
