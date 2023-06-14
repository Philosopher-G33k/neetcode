import Foundation

public func validateParentheses(_ parenthesesString: String) -> Bool {
    var parenthesesArray = [String]()
    var i = 0;
    for parenthese in parenthesesString {
        parenthesesArray.append(String(parenthese))
        if parenthesesArray.count >= 2 {
            switch parenthesesArray[i-1] {
            case "(":
                if parenthesesArray[i] == ")" {
                    let range = i-1...i
                    parenthesesArray.removeSubrange(range)
                    i -= 2
                }
            case "[":
                if parenthesesArray[i] == "]" {
                    let range = i-1...i
                    parenthesesArray.removeSubrange(range)
                    i -= 2
                }
            case "{":
                if parenthesesArray[i] == "}" {
                    let range = i-1...i
                    parenthesesArray.removeSubrange(range)
                    i -= 2
                }
            default:
                break
                
            }
        }
        i += 1;
    }
    return parenthesesArray.count >= 1 ? false : true
}
