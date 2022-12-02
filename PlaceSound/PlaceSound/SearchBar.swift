
import SwiftUI


struct SearchBar: View {
    
    @State var inputText: String = ""
    @State private var isEditing = false
    
    var body: some View {
        
        HStack {
            
            TextField("Search Place Sound", text: $inputText)
                .padding(10)
                .padding(.horizontal, 25)
                .background(Color.placeSoundPurple)
            // 정서니가 짠 코드
            // 정선이가 한 몫한 코드 개짱임 ㅠ
                .cornerRadius(8)
                .foregroundColor(.white)
                .padding(.horizontal, 10)
//                .offset(y: -320)
                .onTapGesture {
                    self.isEditing = true
                }
            
            if isEditing {
                Button(action: {
                    self.isEditing = false
                    self.inputText = ""
                    
                }) {
                    Text("Cancel")
                }
                .padding(.trailing, 10)
                .transition(.move(edge: .trailing))
//                .offset(y: -320)
                .animation(.default)
            }
        }
    }
}

struct SearchBar_Previews: PreviewProvider {
    static var previews: some View {
        SearchBar()
    }
}
