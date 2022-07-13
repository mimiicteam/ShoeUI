//
//  Home.swift
//  ShoeUI
//
//  Created by MINH DUC NGUYEN on 12/07/2022.
//

import SwiftUI

struct Home: View {
    @EnvironmentObject var appData: AppViewModel
    @Namespace var animation
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(spacing: 15) {
                //MARK: - Header
                HStack {
                    Button {
                        
                    } label: {
                        Image(systemName: "slider.horizontal.3")
                            .frame(width: 25, height: 25)
                    }
                    
                    Spacer()
                    
                    Image("logo")
                        .resizable()
                        .renderingMode(.template)
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 25, height: 25)
                    
                    Spacer()
                    
                    Button {
                        
                    } label: {
                        Image(systemName: "magnifyingglass")
                            .frame(width: 25, height: 25)
                    }
                }
                .foregroundColor(.black)
                .padding()
                
                HStack {
                    Text("Our Products")
                        .font(.title.bold())
                    Spacer()
                    
                    Button {
                        
                    } label: {
                        HStack(spacing: 3) {
                            Text("Sort")
                                .font(.caption.bold())
                            
                            Image(systemName: "chevron.down")
                                .font(.caption.bold())
                        }
                        .foregroundColor(.gray)
                    }
                }
                .padding(.horizontal)
                
                //MARK: -  Custom Segment
                ScrollView(.horizontal, showsIndicators: false) {
                    //MARK: -  Segment Button View
                    HStack(spacing: 30) {
                        SegmentButton(image: "nike1", title: "Air Force'1")
                        SegmentButton(image: "nike7", title: "Jordan")
                        SegmentButton(image: "nike3", title: "Nike1")
                    }
                }
                .padding()
                
                //MARK: - Product View
                let columns = Array(repeating: GridItem(.flexible()), count: 2)
                
                //MARK: - Lazy VStack View
                LazyVGrid(columns: columns, spacing: 12) {
                    ForEach(products) { product in
                        CardView(product: product)
                            .onTapGesture {
                                withAnimation {
                                    appData.currentProduct = product
                                    appData.showingDetail = true
                                }
                            }
                    }
                }
            }
        }
        .overlay(
            DetailView(animation: animation).environmentObject(appData)
        )
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewInterfaceOrientation(.portrait)
    }
}
