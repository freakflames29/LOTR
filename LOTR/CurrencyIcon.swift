//
//  CurrencyIcon.swift
//  LOTR
//
//  Created by sourav das on 09/06/24.
//

import SwiftUI

struct CurrencyIcon: View {
    let Icon : ImageResource
    let IconName : String
    var body: some View {
        ZStack(alignment: .bottom){
            Image(Icon)
                .resizable()
                .scaledToFit()
            
            Text(IconName)
                .padding(3)
                .font(.caption)
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                .background(.brown)
        }
        .padding(1)
        .frame(width: 100,height: 100)
        .background(.brown)
        .clipShape(.rect(cornerRadius: 20))
    }
}

#Preview {
    CurrencyIcon(Icon: .silverpenny, IconName: "Silver")
}
