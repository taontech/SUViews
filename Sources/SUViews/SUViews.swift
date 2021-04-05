//
//  AnimationBackView.swift
//  QuitSugar
//
//  Created by tao ning on 2021/4/2.
//

import SwiftUI
public struct RandomCircle:View{
    public var staturation:Double = 0.4
    public var hue:Double = 0.2
    public init(staturation:Double = 0.4, hue:Double = 0.2){
        self.staturation = staturation
        self.hue = hue
    }
    public var body: some View{
        Group{
//            Color(.black)
            GeometryReader(content: { geometry in
                Circle()
                    .foregroundColor(Color(hue: Double.random(in: hue-0.1...hue+0.1), saturation:  Double.random(in: staturation...staturation+0.3), brightness:  Double.random(in: 0.6...0.8)))
                    .frame(width: CGFloat.random(in: maxLength( geometry)/2...maxLength( geometry)/1.5), height: CGFloat.random(in: maxLength( geometry)/2...maxLength( geometry)/1.5), alignment: .center)
                    
            })
        }
        
       
    }
    func maxLength(_ geometry:GeometryProxy) -> CGFloat {
        return max( geometry.size.width, geometry.size.height)
    }
}
public struct AnimationBackView:View{
    @State var offset:CGPoint = CGPoint(x: 0, y: 0)
    @State var staturation:Double = 0.4

    var repeatingAnimation: Animation {
        Animation.linear(duration: 7.3)
            .repeatForever()
    }
    public var body: some View{
        VStack{
            GeometryReader(content: { geometry in
                Group{
                    RandomCircle(staturation: staturation,hue: 0.5)
                        .offset(x: CGFloat.random(in:  -100...geometry.size.width +  offset.x), y:CGFloat.random(in:  -100...geometry.size.height +  offset.y))
                    RandomCircle(staturation: staturation,hue: 0.5)
                        .offset(x: CGFloat.random(in:  -100...geometry.size.width +  offset.x), y:CGFloat.random(in:  -100...geometry.size.height +  offset.y))
                    RandomCircle(staturation: staturation,hue: 0.5)
                        .offset(x: CGFloat.random(in:  -100...geometry.size.width +  offset.x), y:CGFloat.random(in:  -100...geometry.size.height +  offset.y))
                    RandomCircle(staturation: staturation,hue: 0.5)
                        .offset(x: CGFloat.random(in:  -100...geometry.size.width +  offset.x), y:CGFloat.random(in:  -100...geometry.size.height +  offset.y))
                    RandomCircle(staturation: staturation,hue: 0.3)
                        .offset(x: CGFloat.random(in:  -100...geometry.size.width +  offset.x), y:CGFloat.random(in:  -100...geometry.size.height +  offset.y))
                }
                .clipped()
            })
            .clipped()
//            .shadow(radius: 10 )
//            .padding()
            .onAppear(){
                withAnimation(self.repeatingAnimation) { offset.x += 1 }
            }
            .blur(radius: 20)
//            .cornerRadius(10)
//            .shadow(radius:  )
        }
        .background(Color(UIColor.secondarySystemBackground))
//            .cornerRadius(10)
//        shadow(radius: 10 )
        
    }
}
struct testGroup:View{
    var body: some View{
        VStack{
            HStack{
                AnimationBackView(staturation:0.7)
                    .colorScheme(.dark)
                    .padding()
                AnimationBackView(staturation:0.7)
                    .colorScheme(.dark)
                    .padding()
            }
            AnimationBackView(staturation:0.7)
                .padding()
            AnimationBackView(staturation:0.7)
                .padding()

        }
    }
}
