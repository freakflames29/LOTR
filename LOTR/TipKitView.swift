//
//  TipKitView.swift
//  LOTR
//
//  Created by sourav das on 19/06/24.
//

import Foundation
import TipKit

struct CurrencyChangeTipKit : Tip {
    var title: Text = Text("Change Currency")
    
    var message : Text? = Text("Click on the left / right currency name to change the currency")
}
