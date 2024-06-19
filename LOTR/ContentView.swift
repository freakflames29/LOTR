//
//  ContentView.swift
//  LOTR
//
//  Created by sourav das on 05/06/24.
//

import SwiftUI
import TipKit

struct ContentView: View {
    @State var leftAmount = ""
    @State var rightAmount = ""
    
    @State var showExchangeInfo = false
    
    
    @State var leftCurrency : CurrencyModel = .SilverPenny
    @State var rightCurrency : CurrencyModel = .GoldPiece
    
    @State var showSelecctCurrency : Bool = false
    
    // to check if we are typing on the text field or not
    
    @FocusState var leftTextFocus
    @FocusState var rightTextFocus
    
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
                            Image(leftCurrency.img)
                                .resizable()
                                .scaledToFit()
                                .frame(height: 33)
                            
                            Text(leftCurrency.imgName)
                                .font(.system(size: 20))
                                .foregroundStyle(.white)
                               
                            
                        }.padding(.bottom,-12)
                            .onTapGesture {
                                showSelecctCurrency.toggle()
                                print(showSelecctCurrency)
                            }
                            .popoverTip(CurrencyChangeTipKit(),arrowEdge: .bottom)
                        //
                        TextField("Amount", text: $leftAmount)
                             .textFieldStyle(.roundedBorder)
//                             .multilineTextAlignment(.trailing)
                             .padding()
                             .focused($leftTextFocus)
                             .onChange(of: leftAmount){
                                 if leftTextFocus
                                 {
                                     rightAmount = leftCurrency.convert(leftAmount, to: rightCurrency)
                                 }
                             }
                         
                    }
                    //equal
                    Image(systemName: "equal")
                        .font(.title)
                        .foregroundStyle(.white)
                        .padding()
                    //right side
                    VStack{
                        HStack{
                            
                            Text(rightCurrency.imgName)
                                .font(.system(size: 20))
                                .foregroundStyle(.white)
                            
                            Image(rightCurrency.img)
                                .resizable()
                                .scaledToFit()
                                .frame(height: 33)
                           
                            
                        }
                        .onTapGesture {
                            showSelecctCurrency.toggle()
                            print(showSelecctCurrency)
                        }
                        .padding(.bottom,-12)
                        //
                       TextField("Amount", text: $rightAmount)
                            .textFieldStyle(.roundedBorder)
                            .multilineTextAlignment(.trailing)
                            .padding()
                            .focused($rightTextFocus)
                            .onChange(of: rightAmount){
                                if rightTextFocus
                                {
                                    leftAmount = rightCurrency.convert(rightAmount, to: leftCurrency)
                                }
                            }
                    }
                }
                .frame(maxWidth: .infinity,maxHeight: 100)
                .background(Color.black.opacity(0.3))

            
                
                Spacer() // this spacer is used for to move the things a little up
                HStack {
                    Spacer()
                    Button{
                        print("Clicked on info btn")
                      
                        showExchangeInfo.toggle()
                    }label: {
                        Image(systemName: "info.circle.fill")
                            .font(.system(size: 30))
                            .foregroundStyle(.white)
                            .padding(.trailing,25)
                    }
               
                }
                .task {
                    try? Tips.configure()
                }
                .onChange(of: leftCurrency){
                    rightAmount = leftCurrency.convert(leftAmount, to: rightCurrency)
                } .onChange(of: rightCurrency){
                    leftAmount = rightCurrency.convert(rightAmount, to: leftCurrency)
                }
               
                .sheet(isPresented: $showExchangeInfo, content: {
                    ExchangeInfoView()
                })
                .sheet(isPresented: $showSelecctCurrency, content: {
                    SelectCurrencyView(startingCurrency: $leftCurrency,convertingCurrency: $rightCurrency)
                })
                
            }
        }
    }
}

#Preview {
    ContentView()
}
