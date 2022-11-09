function syntax()
{
    trace("**_DOCUMENTATION:_**");
    trace("syntax(); // prints out the syntax to the console");
    trace("print(string) // returns a trace");
    trace("random(1, 10); // returns an int");
    trace("remove_whitespace(string); // returns a string without any whitespaces before/after");
    trace("remove_spaces(string); // returns a string without any spaces inbetween");
    trace("remove_extra_spaces(string); // returns a string that replaces multiple spaces with a single space");
    trace("prime_factorize(int); // returns an array of every prime factor in number inputted");
    trace("factorial(int); // returns an int");
    trace("squared(number); // returns a number");
    trace("cubed(number); // returns a number");
    trace("decimal(number, 2); // returns x amount of decimal places");
    trace("random_card(); // returns random card from an array");
    trace("dice_roll(); // returns random dice roll from an array");
    trace("even(); // returns a boolean");
    trace("interval_check(); // returns boolean based on if number is within start/end values");
    trace("radian_to_degree(number); // returns a number");
    trace("degree_to_radian(number); // returns a number");
    trace("inch_to_cm(number) // returns a number");
    trace("array_sum(array); // returns a number");
    trace("array_avg(array); // returns a number");
    trace("array_max(array); // returns a number");
    trace("random_number_picker(start_num, end_num, amount); // returns an array with random numbers based on argument inputs");
    trace("password_gen(password_length); // returns a string different characters with a length of user parameter input");
    trace("twofactor(length); // returns a string of just numbers with a length of user parameter input");
    trace("encrypt(word:String,key:int); // encrypts user input word with the key");
	trace("decrypt(word:String,key:int); // decrypts user input word with the key, if key is not the same as encrypted key, output will be weird");
    trace("scramble_name(array); // returns an array with a scrambled name");
    trace("delayed_call(function, ms); // delays a function call by x ms");
    trace("eval(string); // returns a calculated math problem from a string to a number");
    trace("clock(); // returns the current time h:m:s");
    trace("date_and_time(); // returns the current date and time");
	trace("remove_child(child); // proper remove child");

	/*
    var documentation:String = "**_DOCUMENTATION:_** \n";
    var doc_print:String = "print(string) // returns a trace \n";
    var doc_random:String = "random(1, 10); // returns an int \n";
    var doc_factorize:String = "factorize(int); // returns an array \n";
    var doc_factorial:String = "factorial(int); // returns an int \n";
    var doc_squared:String = "squared(number); // returns a number \n";
    var doc_cubed:String = "cubed(number); // returns a number \n";
    var doc_decimal:String = "decimal(number, 100); // returns amount of 0's in decimals (the example would return 2 decimal places) \n";
    var doc_random_card:String = "random_card(); // returns random card from an array \n";
    var doc_dice_roll:String = "dice_roll(); // returns random dice roll from an array \n";
    var doc_even:String = "even(); // returns boolean \n";
    
    return documentation + doc_print + doc_random + doc_factorize + doc_factorial + doc_squared + doc_cubed + doc_decimal + doc_random_card + doc_dice_roll + doc_even;
    */
}

function print(x)
{
    return trace(x);
}

function random(lower_value:int, higher_value:int):int
{
    return (int(Math.random()*((higher_value-lower_value) + 1)+lower_value));
}

function remove_whitespace(string:String):String // removes spaces, tabs, returns and line breaks from the start/end of a string
{
    var trim:RegExp = /^\s+|\s+$/g; // checks for spaces, tabs, returns and line breaks
	return string.replace(trim, "");
}

function remove_spaces(string:String):String // replaces multiple spaces with a single space
{
    var space:RegExp = /\s/g; // checks for all spaces
    return string.replace(space, "");
}

function remove_extra_spaces(string:String):String // replaces multiple spaces with a single space
{
    var multiple_spaces:RegExp = /\s{2,}/g; // checks for all spaces thats bigger than 1 space
    return string.replace(multiple_spaces, " ");
}

function prime_factorize(number:int):Array
{
	var factors_array:Array = new Array;
	var number:int = number;
	for(var i:int = 2; i <= number; i++)
	{
		while(number%i == 0)
		{
			factors_array.push(i);
			number /= i;
		}
	}
    return factors_array;
}

function factorial(x:int):int
{
    var ga:int = x; //fakultet nummer
    var temp:int = 1;

    for(var i:int = 1; i <= ga; i++)
    {
        temp = i * temp;
    }

    return temp;
}

function squared(number:Number):Number
{
    return number * number;
}

function cubed(number:Number):Number
{
    return number * number * number;
}

function decimal(number:Number, decimal_places:int):Number
{
    return Math.round(number * Math.pow(10, decimal_places))/Math.pow(10, decimal_places);
}

function random_card()
{
    var kortnummer:Array = ["Kong","Dronning","Knekt","Ess","2","3","4","5","6","7","8","9","10"];
    var korttype:Array = ["Ruter","Hjerter","Klover","Spar"];

    return korttype[random(0,3)] +" "+ kortnummer[random(0,13)];    
}

function dice_roll()
{
	var terning:Array = [1, 2, 3, 4, 5, 6];
	
	return terning[random(0, 5)];
}

function even(x:int):Boolean
{
    if(x % 2 == 0) {
        return true;
    }
    else {
        return false;
    }
}

function interval_check(number:Number, interval_start:Number, interval_end:Number):Boolean // returns a boolean based on if number is within start/end values
{
	if (number >= interval_start && number <= interval_end)
	{
		return true;
	}
	else
	{
		return false;
	}
}

function radian_to_degree(radian:Number):Number // returns a number
{
	var total_radian:Number = radian * (180 / Math.PI);
	return decimal((total_radian % 360), 2);
}

function degree_to_radian(degree:Number):Number // returns a number
{
	return decimal((degree * (Math.PI / 180)), 2);
}

function inch_to_cm(inch:Number):Number // returns a number
{
    return decimal((inch / 0.39370), 2);
}

function array_sum(tab:Array):Number // returns a number
{
	var total:Number = 0;
	if (tab.length == 0)
		return 0;
	else
	{
		for (var i:int = 0; i < tab.length; i++)
		{
			total += tab[i];
		}
		return total;
	}
}

function array_avg(tab:Array):Number // returns a number
{
    var total:Number = 0;
    if(tab.length == 0)
        return 0
    else
    {
        for(var i:int = 0; i < tab.length; i++)
        {
            total += tab[i];
        }
        return decimal((total/tab.length), 2);
    }
}

function array_max(tab:Array):Number // returns a number
{
    if(tab.length == 0)
        return 0
    else
    {
        var max_num = tab[0];
        for(var i:uint = 1; i < tab.length; i++)
        {
            if(max_num < tab[i])
            {
                max_num = tab[i];
            }
        }
        return max_num;
    }
}

function random_number_picker(start_num:int = 0, end_num:int = 1, amount:int = 1) // returns an array with random numbers based on argument inputs
{
	var array:Array = new Array();
	var random_array:Array = new Array();

	for (var i:int = start_num; i <= end_num; i++)
	{
		array.push(i);
	}

	for (var j:int = 0; j < amount; j++)
	{
		var random_number:int = random(0, array.length-1);
		random_array.push(array[random_number]);
		array.removeAt(random_number);
	}

	return random_array;
}
function password_gen(length_pass:int):String
{
	var symbol_array:Array = new Array(0,1,2,3,4,5,6,7,8,9,"a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","-",".","?","!","#","@","&",",");
	var pass_array:Array = new Array();
	for(var i:int = 0; i < length_pass; i++)
	{
		pass_array.push(symbol_array[random(0,symbol_array.length-1)]);
	}
    return String(pass_array.join(""));
}

function twofactor(length_pass:int):String
{
	var symbol_array:Array = new Array(1,2,3,4,5,6,7,8,9)
	var pass_array:Array = new Array();
	for(var i:int = 0; i < length_pass; i++)
	{
		pass_array.push(symbol_array[random(0,symbol_array.length-1)]);
	}
    return String(pass_array.join(""));
}

function encrypt(e_word:String,e_key:int)
{
	// var word_array:Array = word.split("");
	var encrypted_array:Array = new Array();
	for(var i:int = 0; i < e_word.length; i++)
	{
		encrypted_array.push(String.fromCharCode(e_word.charCodeAt(i)+e_key));
	}
    return encrypted_array.join("");
}

function decrypt(d_word:String,d_key:int)
{
	var decrypted_array:Array = new Array();
	for(var i:int = 0; i < d_word.length; i++)
	{
		decrypted_array.push(String.fromCharCode(d_word.charCodeAt(i)-d_key));
	}
    return decrypted_array.join("");
}


function scramble_name(array:Array = null) // returns an array with a scrambled name
{
	if (array == null)
		return "no array as parameter";
	
	var fixed_name:String = array[random(0, array.length-1)];
	fixed_name = fixed_name.toLowerCase();
	var name_array:Array = fixed_name.split("");
	
	var scrambled_name:Array = new Array();
	
	for (var i:int = 0; i < fixed_name.length; i++)
	{
		var random_number:int = random(0, name_array.length-1);
		scrambled_name.push(name_array[random_number]);
		name_array.removeAt(random_number);
	}

	scrambled_name[0] = scrambled_name[0].toUpperCase();
	
	return scrambled_name;
}

function delayed_call(fn:Function = null, ms:int = 0) // delays a function call by x ms
{
	if (fn == null)
		return;
	
	var timer:Timer = new Timer(ms, 1);
	timer.addEventListener(TimerEvent.TIMER_COMPLETE, load);
	timer.start();
	
	function load(e:TimerEvent)
	{
		fn();
	}
}

function eval(str:String) // returns a calculated math problem from a string to a number
{
	var operators = "+-*/"; 
	for (var i = 0; i < 4; i++)
	{
		var op = operators.charAt(i);
		var pos = str.indexOf(op);
		if (pos > 0 && operators.indexOf(str.charAt(pos - 1)) == -1)
		{
		  var left = eval(str.substr(0, pos));
		  var right = eval(str.substr(pos + 1));
		  switch (op) {
			case "/": return left / right;
			case "*": return left * right;
			case "-": return left - right;
			case "+": return left + right;
			}
		}
	}
    return Number(str);
}

function clock() // returns the current time h:m:s
{	
	var date:Date = new Date();
	var h = date.getHours();
	var m = date.getMinutes();
	var s = date.getSeconds();
	
	h = (h < 10) ? "0" + h : h;
    m = (m < 10) ? "0" + m : m;
    s = (s < 10) ? "0" + s : s;
	
	return h + ":" + m + ":" + s;
}

function date_and_time() // returns the current date and time
{	
	var df:DateTimeFormatter = new DateTimeFormatter("");
	df.setDateTimePattern("dd.MM | HH:mm")
	
	return df.format(new Date());
}

function watermark()
{
	var rectangle:Shape = new Shape;
	rectangle.graphics.beginFill(0x010101);
	rectangle.graphics.drawRect(10, 10, 127,20); // (x spacing, y spacing, width, height)
	rectangle.graphics.endFill(); // not always needed but I like to put it in to end the fill
	addChild(rectangle); 

	var textfield:TextField = new TextField();
	textfield.defaultTextFormat = new TextFormat("Times New Roman", 15);
	textfield.width = 300;
	textfield.height = 200;
	textfield.x = 15;
	textfield.y = 9;
	textfield.type = "dynamic";
	textfield.multiline = false;
	textfield.border = false;
	textfield.textColor = 0xfcfcfc;
	addChild(textfield);


	function loop()
	{
		textfield.text = "Erik | " + date_and_time();
		delayed_call(loop, 1000);
	}

	loop();
}

function remove_child(child:DisplayObject) // proper remove child
{
	if (child != null)
    {
        removeChild(child);
        child = null;

		return child;
    }
	else
	{
		return child;
	}
}