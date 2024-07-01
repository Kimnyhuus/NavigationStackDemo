//
//  BananaView.swift
//  NavigationStackDemo
//
//  Created by Kim Nyhuus Hansen on 01/07/2024.
//

import SwiftUI

struct BananaView: View {
    
    @EnvironmentObject var router: Router
    
    // MARK: Properties
    let vm: BananaViewModel
    
    
    // MARK: Initialization
    init(vm: BananaViewModel) {
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
                router.navigate(to: .pear)
            }, label: {
                Text("Pear 🍐")
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
