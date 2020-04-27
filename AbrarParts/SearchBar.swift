//
//  SearchBar.swift
//  AbrarParts
//
//  Created by MacBook on 4/13/20.
//  Copyright © 2020 abrarabrarabrar. All rights reserved.
//

import SwiftUI

struct SearchBar: View {
    @State var txt = ""
    
    var body: some View {
        ZStack{
            
            Color("Color").edgesIgnoringSafeArea(.all)
            SearchView(txt:$txt , data: Data )

        }

    }
}

struct SearchBar_Previews: PreviewProvider {
    static var previews: some View {
        SearchBar()
    }
}
struct SearchView : View {
    @Binding var txt : String
    var data : [String]

    var body : some View{
        
        VStack(spacing:0){
            
            ZStack{
                
                
                HStack{
                    
                    TextField("Search",text:$txt).padding(.trailing)
                }.padding()
                
                    .background(Color.white)
                
                
                if self.txt != ""{
                    HStack{
                        
                        Spacer()
                        
                        Button(action: {
                            self.txt = ""
                        }) {
                           Text("Cancel")
                        }.foregroundColor(.black)
                    }.padding()
                    
                }
                
            }
            if self.txt != "" {
                  List(self.data.filter{$0.lowercased().contains(self.txt.lowercased())}, id:\.self){ i in
                              
                              Text(i)
                          }.frame( height:500)            }
            
          
            Spacer()
        }.padding()
        
        
        
    }
}
