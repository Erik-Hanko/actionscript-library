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
    trace("even(); // returns boolean");
    
    
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

function decimal(number:Number, decimal_places:int)
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

function even(x:int) {
    if(x % 2 == 0) {
        return true;
    }
    else {
        return false;
    }
}