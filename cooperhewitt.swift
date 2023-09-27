import Foundation

enum cooperhewitt_Errors: Error {
    case CANNOT_PARSE_DATA_INTO_JSON
    case CANNOT_CONVERT_STRING_TO_URL
}

class cooperhewitt_Helper{
    static private let baseURL_String = "https://api.collection.cooperhewitt.org/rest/."
    
    static public func fetch() async throws -> Any{
        guard
            let url = URL(string: baseURL_String)
        else {throw cooperhewitt_Errors.CANNOT_CONVERT_STRING_TO_URL}
        
        do{
            let (data, response) = try await URLSession.shared.data(from: url)
            
            //print(response)
            
            let jsonObject = try JSONSerialization.jsonObject(with: data)
        
            return jsonObject
        } catch {
            throw error
        }
    }
}

