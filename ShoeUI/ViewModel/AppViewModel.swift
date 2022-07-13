//
//  AppViewModel.swift
//  ShoeUI
//
//  Created by MINH DUC NGUYEN on 12/07/2022.
//

import SwiftUI

class AppViewModel: ObservableObject {
    //MARK: - Tab Bar..
    @Published var currentTab: Tab = .Home
    @Published var homeTab: String  = "Sneakers"
    
    //MARK: - Detail View Properties
    @Published var currentProduct: Product?
    @Published var showingDetail: Bool = false
}

//MARK: - Enum Case for Tab Items

enum Tab: String , CaseIterable{
    case Home = "house"
    case Heart = "heart"
    case Cart = "cart"
    case Message = "bubble.right"
    case Person = "person"
}
