//
//  BananaViewModel.swift
//  NavigationStackDemo
//
//  Created by Kim Nyhuus Hansen on 01/07/2024.
//

import Foundation

class PearViewModel: ObservableObject {
    
    @Published var num: Int = 0
    
    let id: Int
    
    init() {
        self.id = Int.random(in: 1...1000)
        print("||| Init ☀️: PearViewModel, id: \(id), num: \(num)")
    }
    
    deinit {
        print("||| Deinit 🔥: PearViewModel, id: \(id), num: \(num)")
    }
    
    func incrementNum() {
        num += 1
    }
    
    func decrementNum() {
        num -= 1
    }
}
