//
//  CurrencySelectGridView.swift
//  LOTR
//
//  Created by sourav das on 16/06/24.
//

import SwiftUI

struct CurrencySelectGridView: View {
//    @State var selectedCurrency : CurrencyModel
    @Binding var selectedCurrency : CurrencyModel
    var body: some View {
        
        LazyVGrid(columns: [GridItem(),GridItem(),GridItem()], content: {
            ForEach(CurrencyModel.allCases) { currency in
                
                if selectedCurrency == currency
                    
                {
                    CurrencyIcon(Icon: currency.img, IconName: currency.imgName)
                        .shadow(color: .black, radius: 5)
                        .overlay{
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(lineWidth: 2)
                                .foregroundStyle(.green)
                            
                                .opacity(0.7)
                        }
                }
                else{
                    CurrencyIcon(Icon: currency.img, IconName: currency.imgName)
                        .onTapGesture {
                            selectedCurrency = currency
                        }
                    
                }
                
            }.padding(4)
            
            
        })
    }
}

#Preview {
    CurrencySelectGridView(selectedCurrency: .constant(.CopperPenny) )
}
