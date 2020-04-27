//
//  PopUpBox.swift
//  AbrarParts
//
//  Created by MacBook on 4/17/20.
//  Copyright © 2020 abrarabrarabrar. All rights reserved.
//

import SwiftUI

struct PopUpBox: View {
    @State var show = false
    
    var body: some View {

        ZStack{
            
            
           NavigationView {
            Text("some").navigationBarTitle("home",displayMode: .inline).navigationBarItems(leading:
                
                Image("image2").resizable().frame(width: 30,height: 30) .clipShape(Circle())
            
            ,trailing:
            
            Button(action:{
            
                withAnimation{
                    
                    self.show.toggle()
                }
            },label:{
            Text("menu")
            
            })
            
            )
            
            
            
            }
            
            if self.show {
            GeometryReader{ _ in
                Box()
                
                
            }.background(Color.black.opacity(0.65)
            
                .edgesIgnoringSafeArea(.all)
                .onTapGesture {
                    withAnimation{
                        
                        self.show.toggle()
                        
                    }
                }
            )
        
            }
            
        }
        
    }
}

struct PopUpBox_Previews: PreviewProvider {
    static var previews: some View {
        PopUpBox()
    }
}
struct Box : View {

    var body : some View{
        
        VStack(alignment: .leading, spacing:15){
            
            Button(action: {
                
            })
            {
                HStack(spacing:20){
                    
                    Text("Home").foregroundColor(.black)
                }
            }
             Button(action: {
                           
                       })
                       {
                           HStack(spacing:12){
                               
                               Text("Home").foregroundColor(.black)
                           }
                       }
            Button(action: {
                           
                       })
                       {
                           HStack(spacing:12){
                               
                               Text("Home").foregroundColor(.black)
                           }
                       }
            
            }.padding()
        .background(Color.white)
        
        .cornerRadius(10)
        
    }


}

