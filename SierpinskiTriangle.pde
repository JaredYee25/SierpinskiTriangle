public void setup()
{
	size(200, 200);
	background(0);
	sierpinski(0, 200, 200);
}
public void draw()
{
}
public void mouseDragged()//optional
{

}
public void sierpinski(int x, int y, int len) 
{
	if(len <= 60) {
		triangle(x, y, x+len, y, x+len/2, y-len);
	}
	else {
		sierpinski(x, y, len/2);
		sierpinski(x + len/2, y, len/2);
		sierpinski(x + len/4, y - len/2, len/2);
	}
}
