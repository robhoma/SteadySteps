//
//  HomeScreenView.swift
//  SteadySteps
//
//  Created by Robert Homa on 2023-11-20.
//

import SwiftUI

struct HomeScreenView: View {
    @ViewBuilder
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "gearshape")
                    .frame(width: 0, height: 30)
                    .padding([.trailing, .leading], 12)
                    
                Text("SteadySteps Resident Page")
                    .frame(width: 280, height: 20,
                           alignment: .center)
                    
                Image(systemName: "plus.app")
            }
            
            
            Text("Hello, John!")
                .foregroundColor(.orange)
                .fontWeight(.semibold)
                .font(.system(size: 45))
                .padding(.top, 50)
                .frame(width: 300, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: .center)
            
            Text("Here are your residents:")
                .foregroundColor(.gray)
                .fontWeight(.semibold)
                .font(.system(size: 20))
                .frame(width: 300, height: 30, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .padding(.bottom, 20)
            
            HStack {
                NavigationLink(
                    destination: AdamResidentView()
                    .navigationBarBackButtonHidden(false),
                label: {
                        Text("Adam Doe")
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            .font(.system(size: 30))
                    })
                    .foregroundColor(.black)
                
                
                    
            }
            .frame(width: 300, height: 70, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .background(Color.red)
            .cornerRadius(20)
            // Button 2
            
            HStack {
                NavigationLink(
                    destination: MarkResidentView()
                    .navigationBarBackButtonHidden(false),
                label: {
                        Text("Mark Smith")
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            .font(.system(size: 30))
                    })
                    .foregroundColor(.black)
                
                
                    
            }
            .frame(width: 300, height: 70, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .background(Color.orange)
            .cornerRadius(20)
            .padding()
            
            
            Spacer()
        }
        .frame(width: UIScreen.main.bounds.width - 8, height: UIScreen.main.bounds.height, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        //.ignoresSafeArea()
        //Spacer()
    }
}

struct HomeScreenView_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreenView()
    }
}
