
import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var calladoptapetApi: UIButton!
    
    @IBAction func calladoptapet(_ sender: Any) {
        Task {
            do{
                await print( try adoptapet_Helper.fetch())
            } catch adoptapet_Errors.CANNOT_CONVERT_STRING_TO_URL {
                print("Please insert connect url")
            } catch let err {
                print(err)
            }
        }
    }
    
    class ViewController: UIViewController {
        
        @IBOutlet weak var calltestbooruApi: UIButton!
        
        @IBAction func calltestbooru(_ sender: Any) {
            Task {
                do{
                    await print( try testbooru_Helper.fetch())
                } catch testbooru_Errors.CANNOT_CONVERT_STRING_TO_URL {
                    print("Please insert connect url")
                } catch let err {
                    print(err)
                }
            }
        }
        
        class ViewController: UIViewController {
            
            @IBOutlet weak var callcooperhewittApi: UIButton!
            
            @IBAction func callcooperhewitt(_ sender: Any) {
                Task {
                    do{
                        await print( try cooperhewitt_Helper.fetch())
                    } catch cooperhewitt_Errors.CANNOT_CONVERT_STRING_TO_URL {
                        print("Please insert connect url")
                    } catch let err {
                        print(err)
                    }
                }
            }
            override func viewDidLoad() {
                super.viewDidLoad()
                // Do any additional setup after loading the view.
                
            }
            
            
        }
    }
}
