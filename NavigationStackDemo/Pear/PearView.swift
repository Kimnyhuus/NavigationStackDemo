//
//  BananaView.swift
//  NavigationStackDemo
//
//  Created by Kim Nyhuus Hansen on 01/07/2024.
//

import SwiftUI

struct PearView: View {
    
    // MARK: Properties
    @EnvironmentObject var router: Router
    @StateObject var vm: PearViewModel
    
    
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
            
            Stepper("Num: \(vm.num)") {
                vm.incrementNum()
            } onDecrement: {
                vm.decrementNum()
            }
            .minimumScaleFactor(0.2)
            .padding(.top, 12)
        }
        .navigationBarBackButtonHidden()
        .toolbar(content: {
            ToolbarItem(placement: .topBarLeading) {
                Button(action: {
                    router.navigateBack()
                }, label: {
                    Text("Back")
                })
            }
        })
    }
}
