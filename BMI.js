let height; //in meters
let weight; //in kg
var bodymassindex; // kg/m^2
const bmi_status = ["underweight", "normal weight", "overweight", "obese"];
let weightStatus;


function calc_bmi(height, weight) {
	bodymassindex = weight / (height)**2;
	var bmi = bodymassindex.toFixed(1);
	//return bodymassindex;
	console.log(bodymassindex);
	console.log(`Your BMI is:\n${bmi}`);
}

//(1.8, 50);

function getBMIStatus(bodymassindex) {
	if (bodymassindex < 0) {
		return "Please enter a valid number";
	}
	else{
		if (bodymassindex < 18.5) {
			weightStatus = bmi_status[0];
			console.log(`You are ${weightStatus}`);
		}
		else if (bodymassindex > 18.5 && bodymassindex <= 24.9) {
			weightStatus = bmi_status[1];
			console.log(`You are ${weightStatus}`);
		}
		else if (bodymassindex >= 25 && bodymassindex <= 29.9) {
			weightStatus = bmi_status[2];
					console.log(`You are ${weightStatus}`);
		}
		else if (bodymassindex > 30.0) {
			weightStatus = bmi_status[3];
			console.log(`You are ${weightStatus}`);
		}
	}
}






