//
//  ContentView.swift
//  CW1
//
//  Created by AWS on 10/26/22.
//

import SwiftUI

struct ContentView: View {
    
    
    @State var height = ""
    @State var weight = ""
    @State var bmi = ""
    @State var status = ""
    @State var Img = ""
    
    var body: some View {
     
        
        ZStack{
            LinearGradient(colors: [Color("Color"), Color("Color 1"), Color("Color 2"), Color("Color 3")], startPoint: .bottom, endPoint: .top).ignoresSafeArea()
            VStack{
                
                
                Image("Bmi")
                    .resizable()
                    .scaledToFit()
                    .opacity(0.6)
                    .frame(width: 250, height: 250)
                    .padding()
                
                Text("Enter height and weight")
                    .font(.system(size: 30, weight: .bold, design: .rounded))
                    .padding()
                
                TextField("enter your height", text: $height)
                    .font(.system(size: 30, weight: .semibold, design: .serif))
                    .frame(width: 350)
                    .padding()
                    .background(Color.gray.opacity(0.1))
                    .cornerRadius(24)
                    
                TextField("enter your weight", text: $weight)
                    .font(.system(size: 30, weight: .semibold, design: .serif))
                    .frame(width: 350)
                    .padding()
                    .background(Color.gray.opacity(0.1))
                    .cornerRadius(24)
                
                Button(action: {
                    
                    BmiCalculater(height: Double (height) ?? 1.0, weight: Double (weight) ?? 1.0, img:Image (Img))
                }) {
                    Text(" Calculate ")
                        .font(.title2)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                    
                }
                .frame(width: 250, height: 70)
                .background(Color("Color 4").opacity(0.7))
                    .cornerRadius(8)
              

                Text("BMI = \(bmi)")
                    .font(.title2)
                Text("Status = \(status)")
                    .font(.title2)
                Image(Img)
                    .resizable()
                    .scaledToFit()
            }
        }
    }
    
    
    
    func BmiCalculater(height: Double, weight: Double , img:Image){
        
        let bbmi = weight / (height * height)
        
        if bbmi <= 18{
           status = "abdullah albanay"
            Img = "stick"
            
        }else if bbmi <= 25 {
            status =  "cool 💪🏻🫀🐤"
           Img = "guko"
        }else {
            status = "tank"
           Img = "tanki"
        }
        bmi = "\(bbmi)"
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
