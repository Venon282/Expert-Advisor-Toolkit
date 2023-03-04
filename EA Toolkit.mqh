#property copyright "Copyright Esteban Thevenon 01/02/2023 France"
#property link      "https://www.mql5.com/en/market/product/94130"

#include <Trade\Trade.mqh>

/*---------------------------------------------------------------------------------------*/
/*------------------------------GLOBAL VARIABLES-----------------------------------------*/
/*---------------------------------------------------------------------------------------*/

CTrade   TradeManager;
CPositionInfo  m_position;
COrderInfo  m_order;


/*---------------------------------------------------------------------------------------*/
/*-----------------------------------ENUM------------------------------------------------*/
/*---------------------------------------------------------------------------------------*/

/*
Description: Enumeration to specify the type of trailing stop to use
@enum FIXE Fixed trailing stop
@enum MA_FOLLOWING Trailing stop following moving average
@enum QUICK_SECURITY Trailing stop with quick security
@enum MEAN_MOVING Trailing stop following mean moving
@enum INCREASING Increasing trailing stop
*/
enum TRAILLING_STOP{
   FIXE = 0,
   MA_FOLLOWING = 1,
   QUICK_SECURITY = 2,
   MEAN_MOVING = 3,      
   INCREASING = 4
};

/*
Description: Enumeration to specify the type of trailing stop to use for a crossing moving average strategy
@enum FIXE_C Fixed trailing stop
@enum MA1_FOLLOWING_C Trailing stop following moving average 1
@enum MA2_FOLLOWING_C Trailing stop following moving average 2
@enum QUICK_SECURITY_C Trailing stop with quick security
@enum MEAN_MOVING_C Trailing stop following mean moving
@enum INCREASING_C Increasing trailing stop
*/
enum TRAILLING_STOP_CROSSING{
   FIXE_C = 0,             //FIXE
   MA1_FOLLOWING_C = 1,    //MA1_FOLLOWING
   MA2_FOLLOWING_C = 2,    //MA2_FOLLOWING
   QUICK_SECURITY_C = 3,   //QUICK_SECURITY
   MEAN_MOVING_C = 4,      //MEAN_MOVING
   INCREASING_C = 5       //INCREASING
};

/*
Description: This is an enumeration of hours. This enumeration includes 24 hours starting
*/
enum HOURS{
   H0 = 0,
   H1 = 1,
   H2 = 2,
   H3 = 3,
   H4 = 4,
   H5 = 5,
   H6 = 6,
   H7 = 7,
   H8 = 8,
   H9 = 9,
   H10 = 10,
   H11 = 11,
   H12 = 12,
   H13 = 13,
   H14 = 14,
   H15 = 15,
   H16 = 16,
   H17 = 17,
   H18 = 18,
   H19 = 19,
   H20 = 20,
   H21 = 21,
   H22 = 22,
   H23 = 23
};

/*
Description: This is an enumeration that defines the different minutes in increments of 5.
*/
enum MINUTES{
   M0 = 0,
   M5 = 5,
   M10 = 10,
   M15 = 15,
   M20 = 20,
   M25 = 25,
   M30 = 30,
   M35 = 35,
   M40 = 40,
   M45 = 45,
   M50 = 50,
   M55 = 55
};

/*
Description: Enumeration to specify the type of positions to close
@enum SELL Sell positions only
@enum BUY Buy positions only
@enum ALL All positions (both Buy and Sell)
*/
enum POSITIONS{
   SELL = 0,
   BUY = 1,
   ALL = 2
};
//+------------------------------------------------------------------+
//| EX5 imports                                                      |
//+------------------------------------------------------------------+
#import "EA Toolkit.ex5"
long CandlesNumberSince(datetime since);
bool CheckMoneyForTrade(string symbol,double lot,ENUM_ORDER_TYPE type);
bool CloseFridayPositions(long magic,HOURS h,MINUTES m,bool close=true);
bool ClosePositions(long magic,POSITIONS pos);
void Comment_(long magic,bool comment,double &profit_total[],double &profit_daily[]);
int CountDigits(double value,double precision_max=8.000000);
datetime DateDiff(datetime a,datetime b);
POSITIONS Direction(ENUM_ORDER_TYPE type);
POSITIONS Direction(ENUM_POSITION_TYPE type);
bool FirstTick(MqlRates &candles[]);
double GetLot(double risk,int point,bool money_managment,double fixed_lot);
double GetLot(double risk,int point);
double GetMaxClose(MqlRates &candles[],int from=1,int to=10);
double GetMaxOpen(MqlRates &candles[],int from=1,int to=10);
double GetMaxPrice(MqlRates &candles[],int from=1,int to=10);
double GetMaxSpread(MqlRates &candles[],int from=1,int to=10);
double GetMinClose(MqlRates &candles[],int from=1,int to=10);
double GetMinOpen(MqlRates &candles[],int from=1,int to=10);
double GetMinPrice(MqlRates &candles[],int from=1,int to=10);
double GetMinSpread(MqlRates &candles[],int from=1,int to=10);
bool MarketOpen(void);
double MeanCandlesSize(MqlRates &candles[],int nb);
bool Movement(MqlRates &candles[],int mean_sup,int nb_mean_sup,int mean_inf,int nb_mean_inf);
int PeriodToInt(ENUM_TIMEFRAMES period);
void Profit(long magic,int &last_day,double &capital_daily,double &profit_total[],double &profit_daily[]);
void Profit_daily(long magic,double &result[]);
void Profit_since(long magic,double &result[],datetime since);
double SLBuy(double bid,long SL);
double SLSell(double ask,long SL);
datetime Start_day(datetime day);
datetime Start_day(void);
int TotalOperations(long magic);
int TotalOrders(long magic);
int TotalOrdersBuy(long magic);
int TotalOrdersSell(long magic);
int TotalPositions(long magic);
int TotalPositionsBuy(long magic);
int TotalPositionsSell(long magic);
double TPBuy(double ask,long TP);
double TPSell(double bid,long TP);
bool TradeDays(bool monday,bool tuesday,bool wednesday,bool thursday,bool friday,bool saturday=false,bool sunday=false);
bool TradeHours(bool time_filter,HOURS start_hour,MINUTES start_minute,HOURS end_hour,MINUTES end_minute);
bool TraillingStop(TRAILLING_STOP sl_type,MqlRates &candles[],long magic,int sl,double &ma_buff[],int sl_min,int sl_quick_q,int sl_start_q,int ratio,int mean_nb_candles,int sl_i,int sl_start_i,int nb_candles_i,int sl_increase,int max_increase,int min_decrease);
bool TraillingStop(TRAILLING_STOP_CROSSING sl_type,MqlRates &candles[],long magic,int sl,double &ma1_buff[],double &ma2_buff[],int sl_min,int sl_quick_q,int sl_start_q,int ratio,int mean_nb_candles,int sl_i,int sl_start_i,int nb_candles_i,int sl_increase,int max_increase,int min_decrease);
bool TraillingStopFixe(double ask,double bid,long magic,int sl);
bool TraillingStopIncreasing(double ask,double bid,long magic,int sl,int sl_start,int nb_candles,int sl_increase,int max_increase,int min_decrease);
bool TraillingStopMa(double ask,double bid,long magic,double &buff[],int sl_min);
bool TraillingStopMeanMoving(double ask,double bid,long magic,MqlRates &candles[],int ratio,int mean_nb_candles);
bool TraillingStopQuickSecurity(double ask,double bid,long magic,int sl,int sl_start);
bool UpdateBuffer(int handle,double &buff[],int size,int shift=0);
bool UpdateCandles(MqlRates &candles[],int size,int shift=0);
#import
//+------------------------------------------------------------------+
