//
//  DetailView.swift
//  ShoeUI
//
//  Created by MINH DUC NGUYEN on 13/07/2022.
//

import SwiftUI

struct DetailView: View {
    @EnvironmentObject var appData: AppViewModel
    @State var size: String = "US 6"
    @State var shoeColor: Color = .orange
    
    var animation: Namespace.ID
    var body: some View {
        if let product = appData.currentProduct, appData.showingDetail {
            VStack {
                //MARK: - Head bar
                HStack {
                    Button {
                        withAnimation {
                            appData.showingDetail = false
                        }
                    } label: {
                        Image(systemName: "arrow.backward")
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
                        Image(systemName: "suit.heart.fill")
                            .foregroundColor(.white)
                            .frame(width: 5, height: 5)
                            .padding(10)
                            .background(.red, in: Circle())
                    }
                }
                .foregroundColor(.black)
                .padding()
                .padding(.bottom)
                
                //MARK: - Image Product
                Image(product.productImage)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .matchedGeometryEffect(id: product.productImage, in: animation)
                    .frame(width: 250, height: 250)
                    .rotationEffect(.init(degrees: -20))
                    .background(
                        ZStack {
                            Circle()
                                .fill(product.productBG)
                                .padding(-30)
                            
                            //MARK: - White Inner Circle
                            
                            Circle()
                                .fill(Color.white.opacity(0.5))
                                .padding(30)
                        }
                            .padding()
                    )
                    .frame(height: getScreenBounds().height / 3)
                
                //MARK: - Product Detail
                VStack(alignment: .leading, spacing: 15) {
                    HStack {
                        Text(product.productTitle)
                            .font(.title.bold())
                        
                        Spacer(minLength: 10)
                        
                        Image(systemName: "star.fill")
                            .foregroundColor(.yellow)
                        
                        Text("(\(product.productRaiting))")
                    }
                    
                    //MARK: - Description
                    Text("In love with the classic look of '80s basketball, but craving casual comfort? Meet the Nike Court Vision Low Canvas. Its durable canvas in the upper adds an easygoing vibe to your day while the plush, low-cut collar keeps things feeling sleek and comfortable. To make these a grand slam, we added pops of tennis-inspired colours for true match-winning style.")
                        .font(.caption)
                        .lineSpacing(3)
                    
                    //MARK: - Size
                    HStack(spacing: 0) {
                        let sizes: [String] = ["US 6", "US 7", "US 8", "US 9", "US 10", "US 11"]
                        Text("Size: ")
                            .font(.caption.bold())
                            .foregroundColor(.gray)
                            .padding(.trailing)
                        
                        ForEach(sizes, id: \.self) { size in
                            Button {
                                withAnimation {
                                    self.size = size
                                }
                            } label: {
                                Text(size)
                                    .font(.caption.bold())
                                    .foregroundColor(self.size == size ? .white : .black)
                                    .padding(.vertical, 8)
                                    .padding(.horizontal, 12)
                                    .background(
                                        Capsule()
                                            .fill(self.size == size ? .black : .white)
                                    )
                            }
                        }
                    }
                    .padding(.vertical, 2)
                    
                    //MARK: - Color
                    HStack(spacing: 15) {
                        let colors: [Color] = [.green, .yellow, .purple, .red, .orange]
                        Text("Available Color: ")
                            .font(.caption.bold())
                            .foregroundColor(.gray)
                            .padding(.trailing)
                        
                        ForEach(colors, id: \.self) { color in
                            Button {
                                withAnimation {
                                    self.shoeColor = color
                                }
                            } label: {
                                Circle()
                                    .fill(color.opacity(0.5))
                                    .frame(width: 25, height: 25)
                                    .overlay(
                                        Circle()
                                            .stroke(.black, lineWidth: 2)
                                            .opacity(shoeColor == color ? 0.5 : 0)
                                            .padding(-5)
                                    )
                            }
                        }
                    }
                    
                    //MARK: - Add To Cart
                    Button {
                        
                    } label: {
                        HStack(spacing: 15) {
                            Image(systemName: "cart.fill")
                            
                            Text("Add To Cart")
                                .fontWeight(.bold)
                        }
                        .foregroundColor(.white)
                        .padding(.vertical, 20)
                        .frame(maxWidth: .infinity)
                        .background(.black)
                        .clipShape(Capsule())
                    }
                    .padding(.top)
                }
                .padding()
                .padding(.top)
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
            .background(Color.white)
            .transition(.opacity)
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
