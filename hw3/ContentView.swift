//
//  ContentView.swift
//  hw3
//
//  Created by sarah alshammari on 5/7/20.
//  Copyright © 2020 sarah. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var mo : mousque
    var body: some View {
      
       
          
        NavigationView{
           
        
                
              
              List{
                  ForEach(mouques, id: \.self)  {i in
                    NavigationLink(destination:mosquedetails(mo: i)){ Mousquerow(mousque:i)
                      
                    }
       
                }}
                .navigationBarTitle("مساجد الكويت")//.foregroundColor(.white)
        }
            

        
        
    }    }
    


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(mo:mousque(names: "المشعان", sheikh: [
            "الكندري",
            "العفاسي",])
        )
        .previewDisplayName("List Of Movies View iPhone SE (2nd generation)")
        .environment(\.colorScheme, .dark)
       // .environment(\.layoutDirection, .rightToLeft)
       // .environment(\.sizeCategory,.accessibilityExtraExtraExtraLarge)


    }
}





struct Mousquerow: View {
       var mousque: mousque
       var body: some View {
           
           HStack{
            Image(mousque.names)
                   .resizable()
                   .scaledToFill()
                .frame(width:100,height: 100)
                   .clipShape(Circle())
           
               VStack{
                   Text(mousque.names)
                       .font(.largeTitle)
                   // .foregroundColor(.white)
                Text(mousque.area)
                  
                   
                   
               }
               
           }
           .padding(.vertical)
       }
   }
            

