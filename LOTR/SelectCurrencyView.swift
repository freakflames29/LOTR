//
//  SwiftUIView.swift
//  LOTR
//  06240522107
//  Created by sourav das on 09/06/24.
//

import SwiftUI

struct SelectCurrencyView: View {
    @Environment(\.dismiss) var dismiss
    
//    @State var startingCurrency : CurrencyModel = .SilverPenny
    @Binding var startingCurrency : CurrencyModel
    @Binding var convertingCurrency : CurrencyModel
    
    var body: some View {
        ZStack{
            // back img
            Image(.parchment)
                .resizable()
                .ignoresSafeArea()
                .background(.brown)
            
            
            VStack{
                //Text
                Text("Select the currency you are starting with:")
                    .bold()
                    .font(.title3)
                    .padding()
                
                
                // curicons
                
                
                CurrencySelectGridView(selectedCurrency: $startingCurrency)
                
                
                
                // Converting side text
                
                Text("Select the currency you want to convert:")
                    .bold()
                    .font(.title3)
                    .padding()
                
                // copy pasted
                
                // bottom grid
                CurrencySelectGridView(selectedCurrency: $convertingCurrency)
                
                //                LazyVGrid(columns: [GridItem(),GridItem(),GridItem()], content: {
                //                    ForEach(CurrencyModel.allCases) { currency in
                //                        CurrencyIcon(Icon: currency.img, IconName: currency.imgName)
                //                    }
                //                    .padding(4)
                //
                //
                //                })
                
                
                
                // done btn
                Button("Done") {
                    print("Ok ")
                    
                    dismiss()
                    
                    
                }
                .buttonStyle(.borderedProminent)
                .tint(.brown)
                .font(.title)
                .padding()
                .foregroundStyle(.white)
            }
            .padding()
            .multilineTextAlignment(.center)
            
            
        }
    }
}

#Preview {
    SelectCurrencyView(startingCurrency: .constant(.GoldPenny), convertingCurrency: .constant(.SilverPenny))
}
