//
//  NextButtonViewComponent.swift
//  usermanagement
//
//  Created by Haider on 10/09/2023.
//

import SwiftUI

struct TextButtonViewComponent: View {
    //    var buttonType:ButtonType
    // A closure is defined.
    var action: () -> Void
    var width:CGFloat
    var text:String
    
    var body: some View {
        
        VStack{
            Button(action: action){
                HStack{
                    Text(text)
                        .foregroundColor(Color.black)
                        .font(.system(size: 18,design: .rounded))
                    
                    Spacer()
                    
                    Image("right")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width:30 ,height: 30)
                    
                }
                .padding()
                .frame(width: width)
                .background(
                    RoundedRectangle(cornerRadius: 10,style: .continuous)
                        .fill(LinearGradient(colors: [Color("gradient-start"),
                                                      Color("gradient-end")],
                                             startPoint: .leading,
                                             endPoint: .trailing)))
                
                
            }
            
            .background(Color.white)
            
            
        }
        
    }
}

struct TextButtonViewComponent_Previews: PreviewProvider {
    static var previews: some View {
        TextButtonViewComponent(action: {
            print("button cliecked")
        }, width: 400, text: "Next")
    }
}
