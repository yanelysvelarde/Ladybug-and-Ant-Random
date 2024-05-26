//============================================================
//============================================================

import SwiftUI

struct ContentView: View {
    
    //variables
    @State var ladybugValue = 0
        @State var antValue = 0
        @State var appValue = 0
        @State var timesPlayedValue = 0
        @State var ladybugScore = 0
        @State var antScore = 0
    
    
    var minimumValue = 0
    var maximumValue = 100 // max number has to be 100
    
    
    var body: some View {
        
        Spacer()
        
        
        VStack {
            
            HStack{
                
                VStack{ //VStack ladybug
                    Text("Random Number").frame(width: 140, height: 50, alignment: .center)
                    Text("\(ladybugValue)")
                    Image(systemName: "ladybug")
                        .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                        .scaleEffect(3.0)
                    Text("\(ladybugScore)").font(.largeTitle)
                        .fontWeight(.black)
                        .frame(width: 100, height: 100, alignment: .center)
                    
                }//VStack ladybug end
                
                
                VStack{ //VStack ant
                    Text("Random Number").frame(width: 140, height: 50, alignment: .center)
                    Text("\(antValue)")
                    Image(systemName: "ant")
                        .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                        .scaleEffect(3.0)
                    Text("\(antScore)").font(.largeTitle)
                        .fontWeight(.black)
                        .frame(width: 100, height: 100, alignment: .center)
                }// VStack ant end
                
                
                
            }//HStack animals
            
            
            
         
            
            HStack{
                
                Button(action: {
                    print("YESSS WORKING")
                    playGame()
                   
                }, label: {
                    Image("PlayButton")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame( width: 120)
                })
                
            } //HStack button
            
            Text("Game Random: \(appValue)")
            
            
        }.padding()
        
        HStack{
           
           //Notes: we need to display appValues using images for each digit. We should extract the digits from appValue, so we have to create a extractDigits function firts.
            
            let digits = extractDigits(from: appValue) //digit is an array
                           ForEach(digits, id: \.self) { digit in // ForEach provides views of some data type and id: \.self is saying that each digit array can be identified by itself
                               Image("\(digit)") //thisplaying digit as an image
                           }
            
        }
        
        
        Spacer()
        
        Text("Number of times played: \(timesPlayedValue)")
        
        
       
        
        
        
    }//end body
    
    
  
    func playGame() {
        ladybugValue = Int.random(in: minimumValue...maximumValue)
        antValue = Int.random(in: minimumValue...maximumValue)
        appValue = Int.random(in: minimumValue...maximumValue)
        
        //Instructions:
       //Either Ant or Ladybug’s random number is higher than App’s random number
        //One of the two, Ant or Ladybug, has a higher random number than App’s random number
        // Notes of the function: Not a competition, ladybug and ant are playing againts the appValue, therefore two IFs.
        
        
        if ladybugValue > appValue {
            ladybugScore += 1
        }
        if antValue > appValue {
            antScore += 1
        }
        timesPlayedValue += 1 //counter for the times played
    }
    
    
    //Function to extract digits from a number and return them as an array of integers
    func extractDigits(from number: Int) -> [Int] {
            let numberString = String(format: "%03d", number) //we use this to format the numbers as a 3 digit string
            return numberString.compactMap { $0.wholeNumberValue } //we are converting each number to an integer
        }
    
    
    
    
    
}      //end view




//==================================================
//==================================================
#Preview {
    ContentView()
}
