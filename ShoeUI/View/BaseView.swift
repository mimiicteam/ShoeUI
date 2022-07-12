//
//  BaseView.swift
//  ShoeUI
//
//  Created by MINH DUC NGUYEN on 12/07/2022.
//

import SwiftUI

struct BaseView: View {
    @StateObject var appData = AppViewModel()
    
    // Hiding Tab bar..
    init() {
        UITabBar.appearance().isHidden = true
    }
    var body: some View {
        TabView(selection: $appData.currentTab) {
            Text("Home")
                .environmentObject(appData)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color.black.opacity(0.04))
                .tag(Tab.Home)
            
            Text("Heart")
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color.black.opacity(0.04))
                .tag(Tab.Heart)
            
            Text("Cart")
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color.black.opacity(0.04))
                .tag(Tab.Cart)
            
            Text("Message")
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color.black.opacity(0.04))
                .tag(Tab.Message)
            
            Text("Person")
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color.black.opacity(0.04))
                .tag(Tab.Person)
        }
        .overlay(
            // Custom Tabar ...
            HStack(spacing: 0) {
                TabButton(currentTab: $appData.currentTab)
            }
                .background(Color.white)
            , alignment: .bottom
        )
    }
}

struct BaseView_Previews: PreviewProvider {
    static var previews: some View {
        BaseView()
    }
}
