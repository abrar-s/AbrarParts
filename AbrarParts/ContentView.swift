//
//  ContentView.swift
//  AbrarParts
//
//  Created by MacBook on 4/13/20.
//  Copyright © 2020 abrarabrarabrar. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        List{
            Spacer()
            
            ForEach(0..<5){  _ in
                
                
                HStack{
                    
                    ForEach(0..<2){ _ in
                       
                        
                        Image("image1")
                        .resizable()
                        .scaledToFit()
                       
                    
                        
                    }
                }
                
            }
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
