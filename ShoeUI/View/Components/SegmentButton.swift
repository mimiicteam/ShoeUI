//
//  SegmentButton.swift
//  ShoeUI
//
//  Created by MINH DUC NGUYEN on 12/07/2022.
//

import SwiftUI

struct SegmentButton: View {
    @State var image: String
    @State var title: String
    
    @Namespace var animation
    @EnvironmentObject var appData: AppViewModel
    
    var body: some View {
        Button {
            withAnimation {
                appData.homeTab = title
            }
        } label: {
            HStack(spacing : 8) {
                Image(image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 27, height: 27)
                
                Text(title)
                    .font(.system(size: 12.5))
                    .fontWeight(.bold)
                    .foregroundColor(.black)
            }
            .padding(.vertical, 8)
            .padding(.horizontal, 12)
            .background(
                ZStack {
                    if appData.homeTab == title {
                        RoundedRectangle(cornerRadius: 15, style: .continuous)
                            .fill(Color.white)
                            .matchedGeometryEffect(id: "TAB", in: animation)
                            .shadow(color: Color.black.opacity(0.04), radius: 5, x: 5, y: 5)
                    }
                }
            )
        }
    }
}

struct SegmentButton_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
