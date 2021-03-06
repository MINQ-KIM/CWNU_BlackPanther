/******************************************************************************/
/*----------------------------------Includes----------------------------------*/
/******************************************************************************/
#include "InfineonRacer.h"
#include "Basic.h"

/******************************************************************************/
/*-----------------------------------Macros-----------------------------------*/
/******************************************************************************/

/******************************************************************************/
/*--------------------------------Enumerations--------------------------------*/
/******************************************************************************/

typedef enum now_status{
	normal = 0,
	v_limit
}status_t;
/******************************************************************************/
/*-----------------------------Data Structures--------------------------------*/
/******************************************************************************/

/******************************************************************************/
/*------------------------------Global variables------------------------------*/
/******************************************************************************/

InfineonRacer_t IR_Ctrl  /**< \brief  global data */
		={64, 64, FALSE  };

status_t status = normal;

int status_count;

float index_left;
float index_right;

int pixel_count_cross;
uint32 Find_Timecnt;

/******************************************************************************/
/*-------------------------Function Prototypes--------------------------------*/
/******************************************************************************/
void adj_value(float pixel_RightCount,float pixel_LeftCount);
void InfineonRacer_ControlSrv(float error_value);

/******************************************************************************/
/*------------------------Private Variables/Constants-------------------------*/
/******************************************************************************/

/******************************************************************************/
/*-------------------------Function Implementations---------------------------*/
/******************************************************************************/
void InfineonRacer_init(void)
{
	IR_setMotor0En(0.0);
	IR_Motor.Motor0Vol = 0.25;
	IR_getSrvAngle() = 0.0;
	Find_Timecnt = 0;
}

void InfineonRacer_detectLane(void)
{
	float error_left=0;
	float error_right=0;
	float error;

	error_left = 63.5 - index_left;		// 가운데에서 왼쪽의 검은선 까지의 픽셀거리
	error_right = index_right - 63.5;	// 가운데에서 오른쪽의 검은선 까지의 픽셀거리
	error = error_left - error_right;

	if (error_right <= 0)
	{
		error_right = 63.5;
	}

	InfineonRacer_ControlSrv(error);
}


void InfineonRacer_control(void)
{

}


void FindIndex( void )
{
	float pixel_left_sum = 0.0; // pixel 총합
	float pixel_right_sum = 0.0;

	int pixel_left;		// 반복문 pixel
	int pixel_right;

	float pixel_LeftCount = 0.0;	// 흑색 픽셀 카운트
	float pixel_RightCount = 0.0;

	index_left = 0;
	index_right = 0;
	pixel_count_cross = 0;		// 횡단보도 인식을 위한 count variable

	for(pixel_left = 0; pixel_left <= 63; pixel_left++)		// 좌측의 흑색 픽셀 카운트
	{
		if(IR_LineScan.adcResult[1][pixel_left] < 1500)
		{
			pixel_left_sum = pixel_left + pixel_left_sum;	// 픽셀 넘버 총합
			pixel_LeftCount++;									// 카운트 된 픽셀 수
			pixel_count_cross++;
		}
	}
	index_left = pixel_left_sum / pixel_LeftCount;				// 픽셀들의 평균(가운데값)



	for(pixel_right = 64; pixel_right < 128; pixel_right++)	// 우측의 흑색 픽셀 카운트
	{
		if(IR_LineScan.adcResult[1][pixel_right] < 1500)
		{
			pixel_right_sum = pixel_right + pixel_right_sum;
			pixel_RightCount++;
			pixel_count_cross++;
		}
	}
	index_right = pixel_right_sum / pixel_RightCount;

	adj_value(pixel_RightCount,pixel_LeftCount);
}



void Find_Cross(void)
{

	Find_Timecnt++;

	if((pixel_count_cross >= 50) && (Find_Timecnt >= 50))	// 0~128픽셀 중 흑색 픽셀이 50이상인 경우, status가 1초 주기로 변경된다.
	{
		if(status == normal)		// normal 상태이면
		{
			status = v_limit;		// 속도제한 구간에 들어온 상태로 변경
			IR_setBeeperOn(TRUE);	// Beep ON해서 알 수 있게 함.
			Find_Timecnt = 0;
		}

		if(status == v_limit)		// v_limit 상태이면
		{
			status = normal;		// 속도제한 구간에서 나가는 상태
			IR_setBeeperOn(FALSE);	// Beep OFF로 알 수 있게 함.
			Find_Timecnt = 0;
		}

		if(Find_Timecnt >= 1000)
		{
			Find_Timecnt = 0;
		}

	}
}



void Control_Velocity (void)
{
	if(status == normal)
	{
		IR_Motor.Motor0Vol = 0.25;
	}

	if(status == v_limit)
	{
		IR_Motor.Motor0Vol = 0.15;
	}
}



void adj_value(float RightCount,float LeftCount)		// 커브 도중 중간에 들어오는 라인을 무시하기 위해서 사용
{
	if((RightCount > 0) && (LeftCount > 0))
	{
		if((index_left >20) && (index_left <63.5))
		{
			index_left = 0;
		}
		if((index_right > 63.5) && (index_right <100))
		{
			index_right = 0;
		}

	}
}

void InfineonRacer_ControlSrv(float error_value)   //error_value에 따라 서브모터의 angle 을 변형시킨다.
{
	if( error_value < -10 )
		{
			IR_getSrvAngle() = 0.2;
		}

	if ((error_value >= -10) && (error_value <= -5))
		{
			IR_getSrvAngle() = 0.1;
		}

	if ( (error_value > -5) && (error_value < 5) )
		{
			IR_getSrvAngle() = 0.0;
		}

	if( (error_value >= 5) && (error_value <= 10) )
		{
			IR_getSrvAngle() = -0.1;
		}

	if( error_value > 10 )
		{
			IR_getSrvAngle() = -0.2;
		}
}
