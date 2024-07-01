//
//  BananaView.swift
//  NavigationStackDemo
//
//  Created by Kim Nyhuus Hansen on 01/07/2024.
//

import SwiftUI

struct PearView: View {
    
    @EnvironmentObject var router: Router
    
    // MARK: Properties
    let vm: PearViewModel
    
    
    // MARK: Initialization
    init(vm: PearViewModel) {
        self.vm = vm
    }
    
    
    // MARK: - Views
    var body: some View {
        List {
            Button(action: {
                router.navigate(to: .apple)
            }, label: {
                Text("Apple 🍎")
            })
            
            Button(action: {
                router.navigate(to: .banana)
            }, label: {
                Text("Banana 🍌")
            })
        }
        .navigationBarBackButtonHidden()
        .toolbar(content: {
            Button(action: {
                router.navigateBack()
            }, label: {
                Text("< Back")
            })
            
            Spacer()
        })
    }
}
