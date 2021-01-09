//
//  ContentView.swift
//  101
//
//  Created by にゃんにゃん丸 on 2021/01/09.
//

import SwiftUI

struct ContentView: View {
    @State var show = false
    var body: some View {
        NavigationView{
            
            Home(image1: "p1", image2: "p2", image3: "p3", image4: "p4", image5: "p5", image6: "p6", image7: "p7", image8: "p8", show: $show)
                .navigationBarTitle("Picture", displayMode: .inline)
            
    
                
            
        }
        .navigationViewStyle(StackNavigationViewStyle())
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Home : View {
    var image1 = ""
    var image2 = ""
    var image3 = ""
    var image4 = ""
    var image5 = ""
    var image6 = ""
    var image7 = ""
    var image8 = ""
    @Binding var show : Bool
    
    var body: some View{
        
        
        GeometryReader{reader in
            
            VStack{
                
                HStack{
                    
                    Button(action: {
                        
                        withAnimation{show.toggle()}
                    }, label: {
                        
                        if show{
                            
                           A()
                        }
                       
                        
                        Image(image1)
                            .resizable()
                            .frame(height: 270)
                    })
                    
                    
                    VStack{
                        
                        Image(image2)
                            .resizable()
                        
                        Image(image3)
                            .resizable()
                        
                        
                        
                    }
                    .frame(width: reader.size.width / 3, height: 270)
                    
                }
                HStack{
                    Image(image4)
                        .resizable()
                    Image(image5)
                        .resizable()
                    Image(image6)
                        .resizable()
                    Image(image7)
                        .resizable()
                    Image(image8)
                        .resizable()
                    
                    
                }
                .frame(maxHeight: .infinity)
                
                
                
            }
            .padding(.horizontal,15)
            
        }
        
        
    }
}
