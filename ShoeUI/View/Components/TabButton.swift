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
            HStack {
                Button {
                    withAnimation {
                        currentTab = tab
                    }
                } label: {
                    Image(systemName: tab.rawValue)
                        .resizable()
                        .renderingMode(.template)
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 25, height: 25)
                        .foregroundColor(tab == currentTab ? .white : Color("BG5"))
                        .padding(18)
                        .background(tab == currentTab ? Color("BG5") : .white)
                        .clipShape(Circle())
                        .offset(y: tab == currentTab ? -25 : 0)
                        .frame(maxWidth: .infinity)
                }
            }
        }
    }
}


