function print(x)
{
    return trace(x);
}

function random(lower_value:int, higher_value:int):int
{
	return (int(Math.random()*((higher_value-lower_value) + 1)+lower_value));
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

function decimal(number:Number, factor:int)
{
    return Math.round(number * factor)/factor; // print(decimal(number, 10)) gives 1 decimal
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