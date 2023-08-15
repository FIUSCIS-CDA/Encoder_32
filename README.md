#### MODULE NAME
       Encoder_32

#### DEPENDENCIES
       None

#### INPUTS
Name | Size(Bits) 
------|-------------
A0  |     1      
A1  |     1      
A2  |     1      
A3  |     1      
A4  |     1      
A5  |     1      
A6  |     1      
A7  |     1      
A8  |     1      
A9  |     1      
A10  |     1      
A11  |     1      
A12  |     1      
A13  |     1      
A14  |     1      
A15  |     1      
A16  |     1      
A17  |     1      
A18  |     1      
A19  |     1      
A20  |     1      
A21  |     1      
A22  |     1      
A23  |     1      
A24  |     1      
A25  |     1      
A26  |     1      
A27  |     1      
A28  |     1      
A29  |     1      
A30  |     1      
A31  |     1      

#### OUTPUTS
Name | Size(Bits)
------|-------------
Q  |     5      

#### DESCRIPTION
       Takes 32 single-bit inputs A[0..31].  Only one should be set to 1.
       Outputs a 5-bit value Q, equivalent in binary to the A bit that is 1.
       Example if A24 = 1, Q=11000.

#### AUTHOR
       Alexander T Pastoriza
       Trevor Cickovski

#### SEE ALSO
       qms(1), modclone(1)
