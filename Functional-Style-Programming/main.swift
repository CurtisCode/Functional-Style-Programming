/*
 Author: Curtis Warren
 Date: 06/27/18
 Description:  This program demonstrates the concept of functional programming, by crafting a letter
 using a function which is stateless.  The function does not involve any class datafields in its calculations, thus making the program stateless and functional.
*/
import Foundation

class LetterCreator {
    
    func createLetter (subject: String, name: String, message: String, phoneNumber: String) -> String {
        
        //  Hold the letter as a String.
        var letter: String = ""
        //  Increases the readability of the output.
        let lineSeparator = "\n\n"
        
        //  Crafts the letter.
        //  Subject section.
        letter = "Subject: \(subject)\(lineSeparator)"
        //  Greeting section.
        letter += "Dear \(name.capitalized),\(lineSeparator)"
        //  Content/message section.
        letter += "Message:\n\n\(message)\(lineSeparator)"
        //  Sign off section.
        letter += "Sincerly \(name.capitalized),\(lineSeparator)"
        //  Contact information section.
        letter += "Please contact me at: \(phoneNumber)"

        return letter
    }
    
}

var myLetter = LetterCreator()

var holdMyLetter = myLetter.createLetter(subject:"IT Tutor", name: "Curtis Warren", message: "I am a recent graduate who is interested in teaching others the core concepts of computerr science, like functional programming for example.  Functional programming is simply a way of writing your code such that a clean and reliable response is almost guranteed.", phoneNumber: "XXX-XXX-XXXX")
//  Prints the letter which was created by the call to createLetter().
print(holdMyLetter)

