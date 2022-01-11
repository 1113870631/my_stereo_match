#include <iostream>
#include <opencv2/opencv.hpp>
#include </usr/include/opencv2/calib3d/calib3d_c.h>
#include "omp.h"
using namespace std;
using namespace cv;
int   setNumDisparities=1;
int   setblock=1;


void setblock_TrackbarCallback(int , void* )
{
  if(setblock%2==0)
  {setblock=setblock+1;}
  Mat im0 = cv::imread("../im2.png");
  Mat im1 = cv::imread("../im6.png");
  Mat grayLeft,grayRight;

  Mat im3   = Mat(im1.rows, im1.cols, CV_16S);
   cvtColor(im0,grayLeft,COLOR_BGR2GRAY);
   cvtColor(im1,grayRight,COLOR_BGR2GRAY);

    cv::Ptr<cv::StereoSGBM> sgbm = cv::StereoSGBM::create(0,9, setblock);
    int cn = grayLeft.channels();
    sgbm->setP1(8 * cn*setblock*setblock);
    sgbm->setP2(32 * cn*setblock*setblock);
    sgbm->setNumDisparities(setNumDisparities);
    omp_set_num_threads(8);
    //#pragma omp parallel
    sgbm->compute(grayLeft, grayRight, im3);
      im3.convertTo(im3, CV_32F, 1.0/16); //除以16得到真实视差值
     // namedWindow("win",WINDOW_GUI_NORMAL);              
      imshow("win",im3); 


}
 void setNumDisparities_TrackbarCallback(int , void* )
{
 
   Mat im0 = cv::imread("../im2.png");
  Mat im1 = cv::imread("../im6.png");
  Mat grayLeft,grayRight;

  Mat im3   = Mat(im1.rows, im1.cols, CV_16S);
   cvtColor(im0,grayLeft,COLOR_BGR2GRAY);
   cvtColor(im1,grayRight,COLOR_BGR2GRAY);

    cv::Ptr<cv::StereoSGBM> sgbm = cv::StereoSGBM::create(0,9, 3);
      int cn = grayLeft.channels();
    sgbm->setP1(8 * cn*setblock*setblock);
    sgbm->setP2(32 * cn*setblock*setblock);
    sgbm->setNumDisparities(setNumDisparities);
    omp_set_num_threads(8);
    //#pragma omp parallel
    sgbm->compute(grayLeft, grayRight, im3);
      im3.convertTo(im3, CV_32F, 1.0/16); //除以16得到真实视差值
     // namedWindow("win",WINDOW_GUI_NORMAL);              
      imshow("win",im3); 
 

};
int main()
{
     
      namedWindow("win",WINDOW_FREERATIO);
       createTrackbar("setNumDisparities","win",&setNumDisparities,512,setNumDisparities_TrackbarCallback);
       createTrackbar("setblock","win",&setblock,21,setblock_TrackbarCallback);
  /**
     * @brief 
     * sgbm->setPreFilterCap(32);
    int SADWindowSize = 9;
    int sgbmWinSize = SADWindowSize > 0 ? SADWindowSize : 3;
    sgbm->setBlockSize(sgbmWinSize);
    int cn = grayLeft.channels();
    sgbm->setP1(8 * cn*sgbmWinSize*sgbmWinSize);
    sgbm->setP2(32 * cn*sgbmWinSize*sgbmWinSize);
    sgbm->setMinDisparity(0);
    //sgbm->setNumDisparities(16);
    sgbm->setUniquenessRatio(10);
    sgbm->setSpeckleWindowSize(100);
    sgbm->setSpeckleRange(32);
    sgbm->setDisp12MaxDiff(1);
      sgbm->setMode(cv::StereoSGBM::MODE_SGBM);
     */
    waitKey(0);

  return 0;
}
