//
//  Router.swift
//  NavigationStackDemo
//
//  Created by Kim Nyhuus Hansen on 01/07/2024.
//

import Combine
import SwiftUI

final class Router: ObservableObject {
    
    @Published var navPath = NavigationPath()
    
    func navigate(to destination: Destination) {
        navPath.append(destination)
        print("||| Router: add to navPath: \(navPath.count)")
    }
    
    func navigateBack() {
        guard navPath.count > 0 else { return }
        navPath.removeLast()
        print("||| Router: rm navPath: \(navPath.count)")
    }
    
    func navigateToRoot() {
        guard navPath.count > 1 else { return }
        navPath.removeLast(navPath.count)
    }
    
}

public enum Destination: String, Codable, Hashable {
    case apple
    case banana
    case pear
}
