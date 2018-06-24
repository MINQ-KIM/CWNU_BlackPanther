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

/******************************************************************************/
/*-------------------------Function Prototypes--------------------------------*/
/******************************************************************************/
/******************************************************************************/
/*------------------------Private Variables/Constants-------------------------*/
/******************************************************************************/

/******************************************************************************/
/*-------------------------Function Implementations---------------------------*/
/******************************************************************************/
void InfineonRacer_init(void){
	IR_setMotor0En(0.0);
	IR_Motor.Motor0Vol = 0.25;
	IR_getSrvAngle() = 0.0;
}

void InfineonRacer_detectLane(void){

	float error_left=0;
	float error_right=0;

	error_left = 63.5 - index_left;		// ������� ������ ������ ������ �ȼ��Ÿ�
	error_right = index_right - 63.5;	// ������� �������� ������ ������ �ȼ��Ÿ�

	if( error_left - error_right > 5 )	// ������ �ȼ��Ÿ��� �� ũ�� ��ȸ��
	{
		IR_getSrvAngle() = -0.1;
	}

	if (error_left - error_right < -5)	// �������� �ȼ��Ÿ��� �� ũ�� ��ȸ��
	{
		IR_getSrvAngle() = 0.1;
	}

	if ( (error_left - error_right > -5) && (error_left - error_right < 5) )	// ū ���̰� ������ ����
	{
		IR_getSrvAngle() = 0.0;
	}
}

void InfineonRacer_control(void){

}

void FindIndex( void )
{
	float pixel_left_sum = 0.0; // pixel ����
	float pixel_right_sum = 0.0;

	int pixel_left;		// �ݺ��� pixel
	int pixel_right;

	float pixel_LeftCount = 0.0;	// ��� �ȼ� ī��Ʈ
	float pixel_RightCount = 0.0;

	index_left = 0;
	index_right = 0;
	pixel_count_cross = 0;		// Ⱦ�ܺ��� �ν��� ���� count variable

	for(pixel_left = 0; pixel_left <= 63; pixel_left++)		// ������ ��� �ȼ� ī��Ʈ
	{
		if(IR_LineScan.adcResult[1][pixel_left] < 2000)
		{
			pixel_left_sum = pixel_left + pixel_left_sum;	// �ȼ� �ѹ� ����
			pixel_LeftCount++;									// ī��Ʈ �� �ȼ� ��
			pixel_count_cross++;
		}
	}
	index_left = pixel_left_sum / pixel_LeftCount;				// �ȼ����� ���(�����)



	for(pixel_right = 64; pixel_right < 128; pixel_right++)	// ������ ��� �ȼ� ī��Ʈ
	{
		if(IR_LineScan.adcResult[1][pixel_right] < 2000)
		{
			pixel_right_sum = pixel_right + pixel_right_sum;
			pixel_RightCount++;
			pixel_count_cross++;
		}
	}
	index_right = pixel_right_sum / pixel_RightCount;
	pixel_RightCount = 0.0;
}

void Find_Cross(void)
{
	if(pixel_count_cross >= 50)	// 0~128�ȼ� �� ��� �ȼ��� 50�̻��� ���
	{
		if(status == normal)		// normal �����̸�
		{
			status = v_limit;		// �ӵ����� ������ ���� ���·� ����
			IR_setBeeperOn(TRUE);	// Beep ON�ؼ� �� �� �ְ� ��.
			status_count = 0;
		}

		if(status == v_limit)		// v_limit �����̸�
		{
			status = normal;		// �ӵ����� �������� ������ ����
			IR_setBeeperOn(FALSE);	// Beep OFF�� �� �� �ְ� ��.
			status_count = 0;
		}
	pixel_count_cross = 0;			// count variable �ʱ�ȭ
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
