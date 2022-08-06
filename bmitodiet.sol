//SPDX-License-Identifier:MIT
pragma solidity 0.8.13 ;
import "./BMI.sol";

contract BMIdiet is BMI_CALC {
    //diet plans
    string public diet_obese;
    string public diet_underweight;

    mapping(bmi_status => string) public BMItodiet;
    constructor () {
        diet_obese = "Chicken and salad";
        diet_underweight = "Oats and fruits";
    }
    function dietOption () external returns(BMItodiet storage ) {
        BMItodiet[bmi_status.underweight] = diet_underweight;
        BMItodiet[bmi_status.normal] = diet_underweight;
        BMItodiet[bmi_status.overweight] = diet_obese;
    }
}

