// Thinkful Playground
// Thinkful.com

// Fibonacci Sequence

// By definition, the first two numbers in the Fibonacci sequence are 1 and 1, or 0 and 1, depending on the chosen starting point of the sequence, and each subsequent number is the sum of the previous two.

import UIKit

class FibonacciSequence {
    
    let includesZero: Bool;
    let values: [UInt];
    
    init(maxNumber: UInt, includesZero: Bool) {
        self.includesZero = includesZero
        //TODO: Create an array which contains the numbers in the Fibonacci sequence, but don't add any numbers to the array which exceed the maxNumber. For example, if the maxNumber is 10 then the array should contain [0,1,1,2,3,5,8] because the next number is 13 which is higher than the maxNumber. If includesZero is false then you should not include the number 0 in the sequence.
        var n_2:UInt = 0;
        var n_1:UInt = 1;
        if(!includesZero)
        {
            n_2 = 1;
        }
        var n:UInt = n_1 + n_2;
        values = [n_2,n_1,n];
        while(true)
        {
            n_2 = n_1;
            n_1 = n;
            var (n_temp, overflow) = UInt.addWithOverflow(n_1, n_2);
            if(n_temp > maxNumber || overflow)
            {
                break;
            }
            n = n_temp;
            values.append(n);
        }
    }
    
    init(numberOfItemsInSequence: UInt, includesZero: Bool) {
        self.includesZero = includesZero
        //TODO: Create an array which contains the numbers in the Fibonacci sequence, but don't add any numbers to the array which exceed the maxNumber. For example, if the maxNumber is 10 then the array should contain [0,1,1,2,3,5,8] because the next number is 13 which is higher than the maxNumber. If includesZero is false then you should not include the number 0 in the sequence.
        var n_2:UInt = 0;
        var n_1:UInt = 1;
        if(!includesZero)
        {
            n_2 = 1;
        }
        var n:UInt = n_1 + n_2;
        values = [n_2,n_1,n];
        var totalItems:UInt = 3;
        for (totalItems; totalItems<numberOfItemsInSequence; ++totalItems)
        {
            n_2 = n_1;
            n_1 = n;
            var (n_temp, overflow) = UInt.addWithOverflow(n_1, n_2);
            if(overflow)
            {
                println("\nOVERFLOW: The next number is too big to be stored in UInt!\n");
                break;

            }
            n = n_temp;
            values.append(n);
        }
    }
}

let fibanocciSequence = FibonacciSequence(maxNumber:12345, includesZero: true);
for i in fibanocciSequence.values{
    print("\(i) ");
}
println("\n");


let anotherSequence = FibonacciSequence(numberOfItemsInSequence: 22, includesZero: true)
for a in anotherSequence.values{
    print("\(a) ");
}

