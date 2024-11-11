import Debug "mo:base/Debug";
import Float "mo:base/Float";
import Nat "mo:base/Nat";
import Int "mo:base/Int";
import Buffer "mo:base/Buffer";
import Text "mo:base/Text";




// actor HelloWorld {
//   stable var balance : Float = 100;
//   public func checkbalance(amount: Float): async Float{
//     return amount;
//   };
//   public func topUp(amount: Float): async Float{
//     balance := amount + balance;
//     return balance;
//   };
// };



//   stable var array : [Text] = [""];
//   public func printArrays(list: [Text]): async [Text]{
//     return list;
//   };

//   for (i in array.vals()){
//     Debug.print(debug_show(i));
//   };

//   // let numbers = Buffer.Buffer<Nat>(10);
//   // numbers.add(9);
//   // numbers.remove(0);


// };

// actor numberChecker{
//   public func isPrime(number : Int){
//     if (number <= 1) 
//     return false;
//     // for (int)
//   };
// };




actor HelloWorld {

  public func isEven(number : Nat): async Bool{
     var even : Bool = false;
    if (number % 2 == 0){
       even := true;
    };
     return even;
  };
  public func isOdd(number : Nat): async Bool{
     var odd : Bool = false;
    if (number % 2 != 0){
       odd := true;
    };
     return odd;
  };
  
  public func isPrime(n : Nat) : async Bool {
    if (n <= 1){
        false
    } else if (n <= 3){
        true
    } else if (n % 2 == 0 ){
        false
    }else if(n % 3 == 0){
      false
    } 
    else {
        var i = 5;
        while (i * i <= n) {
            if ((n % i == 0) or (n % (i + 2) == 0)) {
                return false;
            };
            i += 6;
        };
        true
    }
  }
};
