//
//  CurrencyModel.swift
//  LOTR
//
//  Created by sourav das on 09/06/24.
//

import SwiftUI

enum CurrencyModel : Double, CaseIterable,Identifiable {
    case CopperPenny = 6400
    case SilverPenny = 64
    case SilverPiece = 16
    case GoldPenny = 4
    case GoldPiece = 1
    
    var id : Double {rawValue}
    
    var img : ImageResource{
        switch self {
            case .CopperPenny:
                    .copperpenny
            case .SilverPenny:
                    .silverpenny
            case .SilverPiece:
                    .silverpiece
            case .GoldPenny:
                    .goldpenny
            case .GoldPiece:
                    .goldpiece
        }
    }
    var imgName : String{
        switch self {
            case .CopperPenny:
                "Copper Penny"
            case .SilverPenny:
                "Silver Penny"
            case .SilverPiece:
                "Silver Pice"
            case .GoldPenny:
                "Gold Penny"
            case .GoldPiece:
                "Gold Piece"
        }
    }
    
    
    func convert(_ amountString : String, to currency: CurrencyModel) -> String{
        guard let doubleAmount = Double(amountString) else {
            return ""
        }
        let convertedAmount = (doubleAmount / self.rawValue) * currency.rawValue
        return String(format: "%.2f", convertedAmount)
    }
    
}


