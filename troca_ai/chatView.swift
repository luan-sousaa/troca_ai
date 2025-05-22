import SwiftUI

struct chatView: View {
    @State private var searchText = ""
    
    var body: some View {
        NavigationStack {
            ZStack(alignment: .top) {
                LinearGradient(gradient: Gradient(colors: [Color.lightBlue, Color.white]),
                               startPoint: .top,
                               endPoint: .bottom)
                .edgesIgnoringSafeArea(.top)
                
                VStack(alignment: .leading, spacing: 0) {
                    
                    Text("Conversas")
                        .font(.largeTitle)
                        .bold()
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .background(Color.blue.opacity(0.1))
                    
                    TextField("Buscar usuário...", text: $searchText)
                        .padding(10)
                        .background(Color.white)
                        .cornerRadius(10)
                        .padding(.horizontal)
                        .padding(.top, 0)
                    
                    
                    Spacer().frame(height: 40)
                    
                    ScrollView {
                        ForEach(0..<10, id: \.self) { item in
                            NavigationLink(destination: ConversaView()){
                                HStack {
                                    Image(systemName: "person.crop.circle")
                                        .resizable()
                                        .frame(width: 40, height: 40)
                                    Text("Nome_usuario")
                                    Spacer()
                                    Image(systemName: "info.circle")
                                    Image(systemName: "chevron.right")
                                }
                                .padding()
                                .background(Color.white.opacity(0.8))
                                .cornerRadius(10)
                                .padding(.horizontal)
                                
                                Spacer()
                            }
                        }
                    }
                    
                    
                }
                
            }
            
        }
        .tint(.black)
    }
    
}

#Preview {
    chatView()
}

