//
//  ContentView.swift
//  cw5
//
//  Created by ... on 23/06/2022.
//

import SwiftUI

struct ContentView: View {
    @State var counter: [Int] = [0, 0, 0]
    var body: some View {
        VStack{
            ExtractedView(d3aa: "الله اكبر", counters: $counter[0])
            ExtractedView(d3aa: "الحمدلله", counters: $counter[1])
            ExtractedView(d3aa: "سبحان الله", counters: $counter[2])
         
        }
    }
}


// يجب عمل extract

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ExtractedView: View {
    var d3aa: String
    @Binding var counters: Int
    var body: some View {
        HStack{
            Text(d3aa).font(.title)
            Spacer()
            Text("\(counters)")
                .font(.largeTitle)
                .frame(width: 100, height: 100, alignment: .center)
                .foregroundColor(.white)
                .background(Color.green)
                .clipShape(Circle())
                .padding()
                .onTapGesture {
                    counters += 1
                }
        }.padding()
    }
}
