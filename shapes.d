import std.stdio;
import std.conv;

class shape
{
 static int x, y, z;

    static char s;
    
	void change()
	{
		write("Enter length: "); readf!" %d"(x);
		write("Enter width: "); readf!" %d"(y);
        write("Enter symbol: "); readf!" %c"(s);
	}
    abstract void build();
}
//квадрат
class square : shape
{	
    override void build()
    {
        for (int i = 0; i < x; i++)
        {
            for (int z = 0; z < x; z++)
                write( s);
            writeln;
        }
    }
}
//рамка


class frame : shape
{
    override void build()
    {
        for (int i = 0; i < y; i++)
        {
            for (int z = 0; z < x; z++)
                if (i > 0 && i < y-1 && z > 0 && z < x-1)
                {
                    write(' ');
                    continue; 
                }
                else
                write(s);
            writeln;
        }
    }
} 

//прямоугольник
class rectangle : shape
{
    override void build()
    {
        for (int i = 0; i < y; i++)
        {
            for (int z = 0; z < x; z++)
                write(s);
            writeln;
        }
    }
}
//треугольник
class triangle : shape
{
    override void build()
	{
	/*	if (z==0)
		{
			write(s);
		}
		else
		{
			write(s);
		}*/
			for(int i=1; i<=x; i++) 
			{
				for(z=0; z<(y*i)/x; z++)
				write(s);
				writeln;
			}
	}
}
// main
void main()
{
int number=0;
write("\n");
write("        press 1 to print all shapes \n");
write("\n");

readf! "%d"(number);


  switch (number)
	{
	case 1:
	shape sq = new square;
	sq.change;
	write("\n");
	write("square\n");
	write("\n");
	sq.build;

	shape fr = new frame;
	write("\n");
	write("frame\n");
	write("\n");
	fr.build;

	shape rec = new rectangle;
	write("\n");
	write("rectangle\n");
	write("\n");
	rec.build;

	shape tri = new triangle;
	write("\n");
	write("triangle\n");
	tri.build;
    break;

	default:
    write("error\n");
    break;

	return main;
	}
	
}
