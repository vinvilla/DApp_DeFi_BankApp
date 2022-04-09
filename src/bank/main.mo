import Debug "mo:base/Debug";
import Time "mo:base/Time";
import Float "mo:base/Float";

actor bank {
stable var currentValue: Float = 300;
currentValue := 300;
Debug.print(debug_show(currentValue));

stable var startTime = Time.now();
startTime := Time.now();
Debug.print(debug_show(startTime)); 


let id = 3432423423423423423424234;
Debug.print(debug_show(id));

// allow users to top up by an amount from the current value
public func topUp(amount: Float) {
  currentValue += amount;  // Increase the current value by the amount
Debug.print(debug_show(currentValue));
};


// allow users to withdraw an amount from the current value
public func Withdraw(amount: Float) {
  let tempValue : Float = currentValue - amount;
  if (tempValue >=0) {
  currentValue -= amount;  // Decrease the current value by the amount
Debug.print(debug_show(currentValue));
  } else {
Debug.print("Amount too large, Current value <0, Do Nothing")
  }
};

public query func checkBalance() : async Float {
return currentValue;
};

public func compound(){
  let currentTime = Time.now();
  let timeElapsedNS = currentTime - startTime;
  let timeElapsedS = timeElapsedNS / 100000000000;
  currentValue := currentValue * (1.00001 ** Float.fromInt(timeElapsedS));
  // code is not clean to change from Nat to Float
  startTime := currentTime;
}

};