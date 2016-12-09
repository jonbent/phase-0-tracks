// input: string
// steps: change to array, reverse elements in array, revert to string
// output: string

function switcheroo(str)
{
	for (var i = str.length; i > -1; i--){
		console.log(str[i]);
	}
}

switcheroo("hello")