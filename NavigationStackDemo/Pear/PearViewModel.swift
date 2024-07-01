//
//  BananaViewModel.swift
//  NavigationStackDemo
//
//  Created by Kim Nyhuus Hansen on 01/07/2024.
//

import Foundation

class PearViewModel {
    
    let id: Int
    
    init() {
        self.id = Int.random(in: 1...1000)
    }
    
    deinit {
        print("||| PearViewModel 🔥, id: \(id)")
    }
}
