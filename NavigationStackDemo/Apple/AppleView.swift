//
//  BananaView.swift
//  NavigationStackDemo
//
//  Created by Kim Nyhuus Hansen on 01/07/2024.
//

import SwiftUI

struct AppleView: View {
    
    @EnvironmentObject var router: Router
    
    // MARK: Properties
    let vm: AppleViewModel
    
    
    // MARK: Initialization
    init(vm: AppleViewModel) {
        self.vm = vm
    }
    
    
    // MARK: - Views
    var body: some View {
        List {
            Button(action: {
                router.navigate(to: .banana)
            }, label: {
                Text("Banana 🍌")
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
