#include <iostream>
#include <opencv2/opencv.hpp>
using namespace std;
using namespace cv;

int main()
{
    Mat srcImage = cv::imread("./1.jpeg");
    imshow("srcIMage",srcImage);

    waitKey(0);

    return 0;
}

