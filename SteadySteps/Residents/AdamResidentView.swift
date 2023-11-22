//
//  AdamResidentView.swift
//  SteadySteps
//
//  Created by Robert Homa on 2023-11-21.
//

import SwiftUI

struct AdamResidentView: View {
    @State private var text = "Notes..."
    var body: some View {
        
        VStack {
            
            HStack {
                Text("Adam Doe")
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .font(.system(size: 40))
                    .frame(width: UIScreen.main.bounds.width - 10, height: 30, alignment: .top)
                    .padding(.bottom, 20)
            
            }
            
            HStack {
                Text("Details:")
                    .fontWeight(.semibold)
                    .frame(width: 250, height: 20, alignment: .leading)
                    .padding(.bottom, 10)
                    .font(.system(size: 20))
                
                Image(systemName: "pencil")
                //TODO: change size
            }
            VStack {
                Text("Age: 85")
                    .frame(width: 275, height: 25, alignment: .leading)
                Text("Room #: 104")
                    .frame(width: 275, height: 25, alignment: .leading)
                Text(#"Height: 172cm / 5'8""#)
                    .frame(width: 275, height: 25, alignment: .leading)
                Text("Weight: 70kg / 154lbs")
                    .frame(width: 275, height: 25, alignment: .leading)
                
            }.frame(width: 300, height: 90, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .font(.system(size: 20))
            .padding(.bottom, 50)
            
            HStack {
                ZStack {
                    VStack {
                    Rectangle()
                        .fill(Color.init(red: 255, green: 0, blue: 0))
                        .frame(width: 150, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .cornerRadius(20)
                        
                        
                    }
                    VStack {
                    Text("Heart Rate")
                        .foregroundColor(.black)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .padding(.bottom, 1)
                        .font(.system(size:22))
                    
                    
                    Text("65bpm")
                        .font(.system(size:25))
                    }
                }
                
                ZStack {
                Rectangle()
                    .fill(Color.init(red: 255, green: 0, blue: 0))
                    .frame(width: 150, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .cornerRadius(20)
                
                VStack {
                    HStack {
                    Text("Water Intake")
                        .foregroundColor(.black)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .padding(.bottom, 2)
                        .font(.system(size:20))
                    
                        Image(systemName: "pencil")
                            .padding(.bottom, 4)
                            .frame(width: 7, height: 0, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    }
                    Text("7 Cups")
                        .font(.system(size:25))
                    }
                }
            }
            HStack {
                ZStack {
                    VStack {
                    Rectangle()
                        .fill(Color.init(red: 255, green: 0, blue: 0))
                        .frame(width: 150, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .cornerRadius(20)

                    }
                    VStack {
                    Text("SpO2")
                        .foregroundColor(.black)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .padding(.bottom, 2)
                        .font(.system(size:22))
                    
                    Text("68%")
                        .font(.system(size:25))
                    }
                }
            }
            
            ZStack {
                
                Rectangle()
                    .fill(Color.orange)
                    .cornerRadius(10)
                    
                
                TextField("Notes", text: $text)
                    .padding(.leading)
                    .frame(width: UIScreen.main.bounds.width - 20, height: 280, alignment: .topLeading)
                
            
            
            }.frame(width: UIScreen.main.bounds.width - 20, height: 300, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            
            Spacer()
        
        
        }
    }
}

struct AdamResidentView_Previews: PreviewProvider {
    static var previews: some View {
        AdamResidentView()
    }
}
