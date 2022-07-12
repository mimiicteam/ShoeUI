//
//  CardView.swift
//  ShoeUI
//
//  Created by MINH DUC NGUYEN on 12/07/2022.
//

import SwiftUI

struct CardView: View {
    @State var product: Product
    var body: some View {
        VStack(spacing: 15) {
            //MARK: - HEART
            Button {
                
            } label: {
                Image(systemName: "suit.heart.fill")
                    .font(.system(size: 13))
                    .foregroundColor(product.isLike ? .white : .gray)
                    .padding(5)
                    .background(
                        Color.red.opacity(product.isLike ? 1 : 0), in: Circle()
                    )
            }
            .frame(maxWidth: .infinity, alignment: .topTrailing)
            
            //MARK: - PRODUCT IMAGE
            Image(product.productImage)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding()
                .rotationEffect(.init(degrees: -20))
                .background(
                    ZStack {
                        Circle()
                            .fill(product.productBG)
                            .padding(-10)
                        
                        //MARK: - White Inner Circle
                        
                        Circle()
                            .stroke(Color.white, lineWidth: 2)
                            .padding(-3)
                    }
                        .padding()
                )
            
            //MARK: - PRODUCT TITLE
            Text(product.productTitle)
                .fontWeight(.semibold)
                .padding(.top)
            
            //MARK: - PRODUCT PRICE
            Text(product.productPrice)
                .font(.title2.bold())
            
            //MARK: - PRODUCT RAITING
            
        }
        .padding()
        .background(Color.white, in: RoundedRectangle(cornerRadius: 12, style: .continuous))
    }
}

//struct CardView_Previews: PreviewProvider {
//    static var previews: some View {
//        CardView()
//    }
//}
