# Ada Unchecked_Conversion Potential Issue

This repository demonstrates a potential issue with Ada's `Unchecked_Conversion` function.  The `Unchecked_Conversion` function allows for conversion between types without range or type checking. While offering performance benefits, this lack of checking can lead to unexpected results if not used carefully. The example shows how converting an integer to a float without bounds checking can lead to inaccurate results if the integer value is too large for the float type.

## How to Reproduce

1. Compile and run the `bug.ada` file. 
2. Observe the output. The output may not be exactly what you expect, highlighting the potential issue with unchecked conversions.  
3. Compare the output to the solution in `bugSolution.ada`, showing the safer and more controlled way to perform the conversion.

## Solution

The `bugSolution.ada` provides a safer approach. It uses a conversion function that includes explicit range checks to prevent potential issues.  This demonstrates best practices for type conversion in Ada to avoid unexpected results and ensure data integrity. 