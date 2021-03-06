//
//  mosquedetails.swift
//  hw3
//
//  Created by sarah alshammari on 5/7/20.
//  Copyright © 2020 sarah. All rights reserved.
//

import SwiftUI

struct mosquedetails: View {
    var mo : mousque
    var body: some View {
        ZStack{
            Color.black
                .edgesIgnoringSafeArea(.all)
            
            VStack{
                ZStack {
                    Rectangle().foregroundColor(.clear).frame(maxWidth:.infinity)
                        .background( Image(mo.names)
                            .resizable()
                            .edgesIgnoringSafeArea(.all))
                    Text(mo.names)
                        .font(.system(size: 50))
                        .font(.largeTitle)
                        .foregroundColor(.white)
                    
                    ScrollView(.horizontal){
                        HStack(spacing:30){
                            ForEach(mo.sheikh , id: \.self){ mo in
                                Image(mo)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width:120,height: 200)
                                    .clipShape(Circle())
                                    .overlay(Circle().stroke(Color.white,lineWidth: 8))
                                
                            }
                            
                        }
                        
                    }.offset(y:150)
                }
                ScrollView(.vertical){
                    HStack(spacing:100){
                        VStack(spacing:20){
                            ForEach(mo.time,id:\.self){ mo in
                                Text(mo)
                                    .font(.callout)
                                    .foregroundColor(.white)
                                
                            }
                            
                        }
                        VStack(spacing:20){
                            ForEach(mo.prayer,id:\.self){ mo in
                                Text(mo)
                                    .font(.callout)
                                    .foregroundColor(.white)
                            }
                            
                        }
                        
                    }
                }
                .offset(y:80)
            }
        }
    }
    
    
    struct mosquedetails_Previews: PreviewProvider {
        static var previews: some View {
            mosquedetails(mo:mousque(names: "المشعان", sheikh: ["الطرابلسي",
                                                                       "الكندري",
                                                                       "العفاسي",])
            )   }
    }
    
}

