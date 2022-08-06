//SPDX-License-Identifier:MIT
pragma solidity 0.8.13;
contract BMI_CALC {

    //Enum for different range of BMI
    enum bmi_status {
        underweight,
        normal,
        overweight,
        obese
    } 

    //Used state variables 
    uint8 public bodymassindex;
    bmi_status public weight_status;
    address owner;

    //contructor to initialize state variable 'owner' to the account that calls the contract
    constructor () {
        owner = msg.sender;
    }

    

    //Modifier - only contract deployer can call some functions
    modifier OnlyOwner() {
        require(msg.sender == owner, "Only owner can call");
        _;
    }

    //Event for when BMI is calculated
    event BMIcalculated (
        address owner,
        uint date
    );

    //Calculate BMI
    function getBMI(uint8 height,uint8 weight) public OnlyOwner{
         bodymassindex = height/weight;
         emit BMIcalculated(msg.sender, block.timestamp);
    }
    

    //Get weight status from BMI
    function checkBmiStatus(uint8 _bodymassindex) public OnlyOwner {
        if (_bodymassindex <= 18) {
            weight_status = bmi_status.underweight;
        }

        else if (_bodymassindex >= 19 && _bodymassindex <= 25){
            weight_status = bmi_status.normal;
        }

        else if (_bodymassindex >= 26 && _bodymassindex <= 30){
            weight_status = bmi_status.overweight;
        }

        else if (_bodymassindex > 30){
            weight_status = bmi_status.obese;
        }
    }
}


