//
//  ContentView.swift
//  TestingStacks
//
//  Created by Richard Price on 17/10/2020.
//

import SwiftUI

struct ContentView: View {
    
    var black = Color.black.opacity(0.7)
    var width = UIScreen.main.bounds.width
    @State var more = false
    @State var gender = "Male"
    
    var body: some View {
        
        VStack {
            ZStack {
                HStack {
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                        Image(systemName: "chevron.left")
                            .font(.system(size: 22))
                            .foregroundColor(.white)
                            .frame(width: 40, height: 40)
                            .background(Color.red)
                            .cornerRadius(10)
                            .shadow(color: Color.black.opacity(0.2), radius: 5, x: 5, y: 5)
                    }
                    Spacer(minLength: 0)
                    
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                        Image(systemName: "suit.heart")
                            .font(.system(size: 22))
                            .foregroundColor(black)
                            .frame(width: 40, height: 40)
                            .background(Color.white)
                            .cornerRadius(10)
                            .shadow(color: Color.black.opacity(0.2), radius: 5, x: 5, y: 5)
                    }
                }
                Image("nike")
                    .resizable()
                    .frame(width: 55, height: 55)
            }.padding()
            .padding()
            Image("shoe")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: width - 100)
                .padding(.top, 25)

            ZStack {
                Color.white
                    .clipShape(customShape())
                    .shadow(color: black.opacity(0.12), radius: 5, x: -5, y: 5)
                VStack {
                    HStack {
                        Text("Nike Air Hurrarche For Women")
                            .font(.title2)
                            .fontWeight(.heavy)
                            .foregroundColor(Color.black)
                        Spacer(minLength: 0)
                        Text("£100")
                            .font(.title2)
                            .fontWeight(.heavy)
                            .foregroundColor(Color.red)
                    }
                    .padding(.top, 50)
                    .padding(.trailing, 25)
                    VStack(alignment: .leading, spacing: 25) {
                        Text("relating to the beacon design element within a neoprene and spandex sock contained within the upper. The sock literally 'hugged' your foot and coupled with Nike's trademark air unit.")
                            .lineLimit(more ? nil : 3)
                            .foregroundColor(Color.black)
                        Button(action: {withAnimation{more.toggle()}}) {
                            Text("Read More")
                                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                .foregroundColor(Color.red)
                        }
                    } .padding([.vertical, .trailing])
                    
                    HStack(spacing: 15) {
                        Text("Gender")
                            .fontWeight(.heavy)
                            .foregroundColor(black)
                            .frame(width: 75, alignment: .leading)
                        
                        GenderButton(gender: $gender, title: "Male")
                        GenderButton(gender: $gender, title: "Female")
                        Spacer()
                    }
                    .padding(.trailing)
                    .padding(.top, 10)
                    
                    Spacer(minLength: 0)
                }
                .padding(.leading, 25)
            }
            .padding(.top, 30)
        }
        .background(Color("bg").ignoresSafeArea(.all, edges: .all))
        .ignoresSafeArea(.all, edges: .bottom)
    }
}

struct customShape: Shape {
     func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: [.topLeft], cornerRadii: CGSize(width: 85, height: 85))
        return Path(path.cgPath)
     }
}

struct GenderButton: View {
    @Binding var gender: String
    var title: String
    var black = Color.black.opacity(0.7)
    var body: some View {
        Button(action: {gender = title}) {
            Text(title)
                .font(.caption)
                .fontWeight(.bold)
                .foregroundColor(gender == title ? .white : black)
                .padding(.vertical, 10)
                .frame(width: 80)
                .background(gender == title ? Color.red : Color.white)
                .cornerRadius(10)
                .shadow(color: Color.black.opacity(0.2), radius: 5, x: 5, y: 5)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

