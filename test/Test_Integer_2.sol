pragma solidity ^0.4.24;

import "truffle/Assert.sol";


/*

*/
contract Test_Integer_2 {

    /* In Solidity, there's no "nil" or "null" or "undefined" default value
     * Uninitiated values are set to 0 by default.
     */
    function test_nil_values_equal_zero() public {
        int actual;

        // TODO: fix this expected value
        int expected = 1;
        Assert.equal(expected, actual, "nil values should default to 0");  
    }

    /* Bit operators can be used to mask Solidity integers
    */
    function test_bitwise_operator_and() public {
        uint integer = 42;          //or 101010 bitwise
        uint mask = 56;             //or 111000 bitwise
        uint actual = integer & mask; //or 101000 bitwise

        // TODO: give the expected uint value of the bitwise
        uint expected = 0;     
        Assert.equal(expected, actual, "should equal bitwise (integer AND mask)");
    }

    function test_bitwise_operator_xor() public {
        uint integer = 42;          //or 101010 bitwise
        uint mask = 56;             //or 111000 bitwise
        uint actual = integer ^ mask; //or 010010 bitwise

        // TODO: give the expected uint value of the bitwise
        uint expected = 0;     
        Assert.equal(expected, actual, "should equal bitwise (integer XOR mask)");
    }

    function test_addition_and_subtraction() public {
        // TODO: change the values of "a" and "b" to pass the tests
        int a = 5;
        int b = -32;

        int expected_sum = 3;
        int expected_diff = -1;
        Assert.equal(expected_sum, (a+b), "should correctly sum a + b");
        Assert.equal(expected_diff, (a-b), "should correctly subtract a + b");
    }

    function test_arithmetic_remainders() public {

    }

//  The expression x << y is equivalent to x * 2**y
    function test_left_shift_operand() public {

    }

}