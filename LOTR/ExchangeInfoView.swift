//
//  ExchangeInfoView.swift
//  LOTR
//
//  Created by sourav das on 09/06/24.
//

import SwiftUI

struct ExchangeInfoView: View {
    @Environment(\.presentationMode) var presentaionMode // it also provide value to dismiss
    
    @Environment(\.dismiss) var dismiss
    
    
    var body: some View {
        ZStack{
            // background img
            Image(.parchment)
                .resizable()
                .ignoresSafeArea()
                .background(.brown)
            
            VStack{
                Text("Exchange Rates")
                    .font(.largeTitle)
                    .tracking(1.5)
                    .bold()
                // descriptions
                
                Text("The Prancing Pony was based inside the central hub of the town, near stables and various merchant stalls. Since Bree was built on the cross-roads of the Greenway and Great East Road, it was a fairly well-traveled inn, and was so accustomed to hobbits that designated hobbit-rooms had been built. Barliman Butterbur was the innkeeper at the time of the War of the Ring. Nob and Bob were two hobbits that worked under him: Nob was a general servant, and Bob was as a ostler, tending to the horses and ponies.")
                    .padding()
                    .font(.title3)
                
                // hstacks for infos
                ExchnageRate(leftImg: .goldpiece, msg: "1 Gold piece = 4 Gold Pennies", rightImg: .goldpenny)
                
                ExchnageRate(leftImg: .goldpenny, msg: "1 Gold penny = 4 silver pieces", rightImg: .silverpiece)
                
                ExchnageRate(leftImg: .silverpiece, msg: "1 silver piece = 4 silver pennies", rightImg: .silverpenny   )
                
                ExchnageRate(leftImg: .silverpenny, msg: "1 silver penny = 100 copper pennies", rightImg: .copperpenny   )
                
                // done BTn
                Button("Done") {
                    print("Ok ")
//                    presentaionMode.wrappedValue.dismiss()
                    dismiss()
                    
                    
                }
                .buttonStyle(.borderedProminent)
                .tint(.brown)
                .font(.title)
                .padding()
                .foregroundStyle(.white)
            }
            .foregroundStyle(.black)
        }
    }
}

#Preview {
    ExchangeInfoView()
}
