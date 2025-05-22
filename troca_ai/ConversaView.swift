//
//  ConversaView.swift
//  troca_ai
//
//  Created by luan on 21/05/25.
//

import SwiftUI

struct ConversaView: View {
    var body: some View {
        ZStack{
            Rectangle()
                .fill(Color.lightBlue)
                .edgesIgnoringSafeArea(.top)
            VStack{
                ZStack (alignment: .leading){
                    Rectangle()
                        .fill(Color.babyGray)
                        .ignoresSafeArea()
                        .frame(height: 130)
                    VStack(alignment: .leading){
                        Text("Chat")
                            .font(.title)
                        HStack{
                            Image(systemName: "person.circle.fill")
                                .font(.system(size: 55))
                            VStack(alignment: .leading){
                                Text("Fulano")
                                    .font(.title3)
                                Text("Oferece: aula de ingles")
                                    .font(.callout)
                                
                            }
                            
                        }
                        .padding(.top, 1)
                    }
                    .padding(.horizontal)
                }
                Spacer()
                HStack{
                    ZStack(alignment: .leading){
                        Rectangle()
                            .fill(Color.babyGray)
                        Text("Digite algo...")
                            .opacity(0.5)
                            .padding(.leading)
                    }
                    .frame(width: 270, height: 50)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    .padding()
                    Image(systemName: "paperplane.fill")
                        .font(.system(size: 30))
                        .foregroundStyle(.babyGray)
                }
            }
        }
    }
}
#Preview {
    ConversaView()
}
