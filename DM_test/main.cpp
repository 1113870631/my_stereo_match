#include <iostream>
#include <opencv2/opencv.hpp>
#include <string.h>
using namespace std;
using namespace cv;
//定义图片路径
string  base_path ="/home/ww/opencv/test/DM_test/";
string name1="im2.png";
string name2="im6.png";
//得到完整图片路径
string all_path1=base_path+name1;
string all_path2=base_path+name2;
//读取图片
Mat im0=imread(all_path1);
Mat im1=imread(all_path2);
//定义灰度图和输出图
Mat im0_gray,im1_gray,im_end;
//定义BM算子
Ptr<StereoBM> dm=StereoBM::create(16,5); 

int DM1=5,DM2=0;

//DM1 设置blocksize 5~255
void DM1rCallback(int ,void *)
{
   //设置DM1 奇偶 和 范围 5～255 odd
    if(DM1<5)
    {
        DM1=5;
    }
    else{
                if(DM1%2==0)
            {
                DM1++;
            }  
    }
    //输出要设置的参数
    cout<<DM1<<"\n";
    //设置参数setBlockSize
    dm->setBlockSize(DM1);
    //得到视差
    dm->compute(im0_gray,im1_gray,im_end);
    //视差数据处理
    im_end.convertTo(im_end, CV_32F, 1.0/16); //除以16得到真实视差值
    imshow("win",im_end);
}

//DM2设置 numDisparities
void DM2rCallback(int ,void *)
{
    //16的倍数 tmp
  int    tmp=DM2*16;
  //输出要设置的参数
  cout<<tmp<<"\n";
    //设置参数setNumDisparities
    dm->setNumDisparities(tmp);
    //得到视差
    dm->compute(im0_gray,im1_gray,im_end);
    //视差数据处理
    im_end.convertTo(im_end, CV_32F, 1.0/16); //除以16得到真实视差值
    imshow("win",im_end);

}
int main(int, char**) {
    
   //得到灰度图
    cvtColor(im0,im0_gray,COLOR_BGR2GRAY);
    cvtColor(im1,im1_gray,COLOR_BGR2GRAY);
    //创建一个窗口
    namedWindow("win",WINDOW_FREERATIO);  
    //创建2个bar
    createTrackbar("DM1","win",&DM1,255,DM1rCallback);
    createTrackbar("DM2","win",&DM2,100,DM2rCallback);
    //阻塞
    waitKey(0);
}
