pragma solidity ^0.4.24;
import "truffle/Assert.sol";


/* In this level we learn to use: 
 * Bytes as a value-type, and 
 * Bytes[] as a fixed and dynamic array
 */
contract Test_Bytes_3 {
    
    // TODO: test_everything_converts to bytes (see ruby's objects)
    
    /* Ethereum's smart contract storage slot are 256 bits each, or 32 bytes.
     * You can save storage space (i.e. gas) by initiating bytes to the minimum needed size.
     */
    function test_bytes_default_to_32() public {
        uint large_number = 999999999999999;
        bytes1 one_byte = bytes1(large_number);     //result: 0xff
        bytes2 two_bytes = bytes2(large_number);    //result: 0xffff
        
        // TODO: change the test's input parameters so it passes
        Assert.isBelow(uint(two_bytes), uint(one_byte), "bytes2 should store more data than bytes1");
    }

    function test_nil_bytes_equal_zero() public {
        bytes32 nil_bytes; 

        // TODO: change the test assumption to what you expect uninitialized bytes should equal
        Assert.isNotZero(nil_bytes, "uninitialized bytes should default to 0 value");
    }


    // // You can do bit operation on ints
    // function test_bitwise_operator_and() public {
    //     uint integer = 42;          //or 101010 bitwise
    //     uint mask = 56;             //or 111000 bitwise
    //     uint actual = integer & mask; //or 101000 bitwise

    //     // TODO: give the expected uint value of the bitwise
    //     uint expected = 0;     
    //     Assert.equal(expected, actual, "should equal bitwise (integer AND mask)");
    // }

    // function test_bitwise_operator_xor() public {
    //     uint integer = 42;          //or 101010 bitwise
    //     uint mask = 56;             //or 111000 bitwise
    //     uint actual = integer ^ mask; //or 010010 bitwise

    //     // TODO: give the expected uint value of the bitwise
    //     uint expected = 0;     
    //     Assert.equal(expected, actual, "should equal bitwise (integer XOR mask)");
    // }

    // // You can shift binary values
    // function test_left_shift_operand() public {
    //     uint a = 555555;
    //     uint b = 5;

    //     // TODO: Change n to represent the correct shift base value
    //     uint n = 3;
    //     uint expected = a<<b;
    //     uint actual = a * n**b;     //** is exponentiation
    //     Assert.equal(expected, actual, "should correctly shift binary left");
    // }


    function test_bytes_are_bitwise() public {
        bytes2 data = 0xffff;
        bytes2 mask = 0xf0f0;

        // TODO: fill in the byte value of the "expected_and" and "expected_xor" to pass the test
        bytes2 expected_and; 
        bytes2 expected_xor;

        Assert.equal(expected_and, (data & mask), "should return the AND of data and mask");
        Assert.equal(expected_xor, (data ^ mask), "should return the XOR of data and mask");
    }

    /* "bytes" denote a dynamically sized byte ARRAY, like byte[]
     */
    function test_dynamic_byte_arrays() public {
        // this part needs to be in a contract

    }

    function test_enlarging_byte_arrays() public {
    
    }

    /* As a rule of thumb, use bytes for arbitrary-length raw byte data 
     * and string for arbitrary-length string (UTF-8) data. 
     */
    function test_dynamic_size_strings() public {

    }
}

