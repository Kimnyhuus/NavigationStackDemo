//
//  ContentView.swift
//  NavigationStackDemo
//
//  Created by Kim Nyhuus Hansen on 01/07/2024.
//

import SwiftUI

struct RootView: View {
    
    @ObservedObject var router = Router()
    
    var body: some View {
        NavigationStack(path: $router.navPath) {
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
                
                Button(action: {
                    router.navigate(to: .pear)
                }, label: {
                    Text("Pear 🍐")
                })
            }
            .navigationBarBackButtonHidden()
            .navigationDestination(for: Destination.self) { destination in
                viewFor(destination: destination)
            }
        }
        .environmentObject(router)
    }
    
    func viewFor(destination: Destination) -> AnyView {
        switch destination {
        case .apple:
            let _ = print("||| NavStack: Destination .apple")
            let vm = AppleViewModel()
            return AnyView(AppleView(vm: vm))
            
        case .banana:
            let _ = print("||| NavStack: Destination .banana")
            let vm = BananaViewModel()
            return AnyView(BananaView(vm: vm))
            
        case .pear:
            let _ = print("||| NavStack: Destination .pear")
            let vm = PearViewModel()
            return AnyView(PearView(vm: vm))
        }
    }
}

#Preview {
    RootView()
}
