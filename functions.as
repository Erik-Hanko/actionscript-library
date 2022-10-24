function syntax()
{
    trace("**_DOCUMENTATION:_**");
    trace("syntax(); // prints out the syntax to the console");
    trace("print(string) // returns a trace");
    trace("random(1, 10); // returns an int");
    trace("remove_whitespace(string); // returns a string without any whitespaces before/after");
    trace("remove_spaces(string); // returns a string without any spaces inbetween");
    trace("remove_extra_spaces(string); // returns a string that replaces multiple spaces with a single space");
    trace("factorize(int); // returns an array");
    trace("factorial(int); // returns an int");
    trace("squared(number); // returns a number");
    trace("cubed(number); // returns a number");
    trace("decimal(number, 100); // returns x amount of decimal places");
    trace("random_card(); // returns random card from an array");
    trace("dice_roll(); // returns random dice roll from an array");
    trace("even(); // returns a boolean");
    trace("interval_check(); // returns boolean based on if number is within start/end values");
    trace("radian_to_degree(); // returns a number");
    trace("degree_to_radian(); // returns a number");
    trace("array_sum(array); // returns a number");
    trace("array_avg(array); // returns a number");
    trace("array_max(array); // returns a number");
    trace("random_number_picker(start_num, end_num, amount); // returns an array with random numbers based on argument inputs");
    
    
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

function factorize(number:int)
{
    var tall:int = number;
    var i:int;
    var primtallut:Array = [];

    for(i = 2; i <= tall;i++)
    {
        while(tall % i == 0)
        {
            primtallut.push(i);
            tall /= i;
        }
    }
    if(tall > 1)
    {
        primtallut.push(tall);
    }

    return primtallut;
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
	return total_radian % 360;
}

function degree_to_radian(degree:Number):Number // returns a number
{
	return degree * (Math.PI / 180);
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