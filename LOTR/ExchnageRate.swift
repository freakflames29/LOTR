//
//  ExchnageRate.swift
//  LOTR
//
//  Created by sourav das on 09/06/24.
//

import SwiftUI

struct ExchnageRate: View {
    let leftImg : ImageResource
    let msg : String
    let rightImg : ImageResource
    
    var body: some View {
        HStack {
            // currency infos
            Image(leftImg)
                .resizable()
                .scaledToFit()
                .frame(height: 33)
            Text(msg)
            
            Image(rightImg)
                .resizable()
                .scaledToFit()
                .frame(height: 33)
            
        }
    }
}

#Preview {
    ExchnageRate(leftImg: .silverpenny, msg: "HI", rightImg: .goldpenny)
}
