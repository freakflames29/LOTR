//
//  ContentView.swift
//  LOTR
//
//  Created by sourav das on 05/06/24.
//

import SwiftUI

struct ContentView: View {
    @State var leftAmount = ""
    @State var rightAmount = ""
    
    var body: some View {
        ZStack{
            // background image
            Image(.background)
                .resizable()
                .ignoresSafeArea()
            VStack{
                Image(.prancingpony)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 200)
                Text("LOTR Converter")
                    .font(.title)
                    .bold()
                    .foregroundStyle(.white)
                HStack{
                    //left side
                    VStack{
                        HStack{
                            Image(.silverpenny)
                                .resizable()
                                .scaledToFit()
                                .frame(height: 33)
                            
                            Text("Silver")
                                .font(.system(size: 20))
                                .foregroundStyle(.white)
                            
                            
                        }
                        //
                        TextField("Amount", text: $rightAmount)
                             .textFieldStyle(.roundedBorder)
//                             .multilineTextAlignment(.trailing)
                             .padding()
                    }
                    //equal
                    Image(systemName: "equal")
                        .font(.title)
                        .foregroundStyle(.white)
                        .padding()
                    //right side
                    VStack{
                        HStack{
                            
                            Text("Gold")
                                .font(.system(size: 20))
                                .foregroundStyle(.white)
                            
                            Image(.goldpenny)
                                .resizable()
                                .scaledToFit()
                                .frame(height: 33)
                           
                            
                        }
                        //
                       TextField("Amount", text: $leftAmount)
                            .textFieldStyle(.roundedBorder)
                            .multilineTextAlignment(.trailing)
                            .padding()
                    }
                }
                .frame(maxWidth: .infinity,maxHeight: 100)
                .background(Color.black.opacity(0.3))
//                .clipShape(.capsule)
                
                
                
                Spacer()
                HStack {
                    Spacer()
                    Button{
                        print("Hello world")
                    }label: {
                        Image(systemName: "info.circle.fill")
                            .font(.system(size: 30))
                            .foregroundStyle(.white)
                            .padding(.trailing,25)
                    }
               
                }
                
            }
        }
    }
}

#Preview {
    ContentView()
}
