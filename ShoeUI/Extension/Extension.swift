//
//  Extension.swift
//  ShoeUI
//
//  Created by MINH DUC NGUYEN on 13/07/2022.
//

import SwiftUI

//MARK: - Extending View to get Screen bounds
extension View {
    func getScreenBounds() -> CGRect{
        return UIScreen.main.bounds
    }
}

