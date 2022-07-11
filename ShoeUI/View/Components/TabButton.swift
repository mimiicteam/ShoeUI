//
//  TabButton.swift
//  ShoeUI
//
//  Created by MINH DUC NGUYEN on 12/07/2022.
//

import SwiftUI

struct TabButton: View {
    @Binding var currentTab: Tab
    var body: some View {
        ForEach(Tab.allCases, id: \.rawValue) { tab in
            TabButton(tab: tab)
        }
    }
    
    @ViewBuilder
    func TabButton(tab: Tab) -> some View {
        Button {
            withAnimation {
                currentTab = tab
            }
        } label: {
            Image(tab.rawValue)
                .resizable()
                .renderingMode(.template)
                .aspectRatio(contentMode: .fit)
                .frame(width: 25, height: 25)
                .foregroundColor(tab == currentTab ? Color("BG5") : Color.gray.opacity(0.5))
                .frame(maxWidth: .infinity)
        }
    }
}


