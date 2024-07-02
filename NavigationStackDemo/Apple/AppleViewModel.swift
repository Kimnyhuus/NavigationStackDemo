//
//  BananaViewModel.swift
//  NavigationStackDemo
//
//  Created by Kim Nyhuus Hansen on 01/07/2024.
//

import Foundation

class AppleViewModel {
    
    let id: Int
    
    init() {
        self.id = Int.random(in: 1...1000)
        print("||| Init ☀️: AppleViewModel, id: \(id)")
    }
    
    deinit {
        print("||| Deinit 🔥: AppleViewModel, id: \(id)")
    }
}
