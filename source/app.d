import std.stdio;
import dcv;

void main() {
	Image image = imread("img/frcdisc.png");
	auto slice = image.sliced;

	slice[0..$, 0..$, 1]
		.as!float
		.slice
		.conv!symmetric(sobel!float(GradientDirection.DIR_X))
		.ranged(0, 255)
		.imshow("despacito");
	waitKey();
}