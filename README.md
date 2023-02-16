# Documentation

Product link : https://www.mql5.com/en/market/product/94130

## Summary
- [Installation](#installation)
- [Enumerations](#enumerations)
  * [TRAILLING STOP](#trailling-stop)
  * [TRAILLING STOP CROSSING](#trailling-stop-crossing)
  * [HOURS](#hours)
  * [MINUTES](#minutes)
  * [POSITIONS](#positions)
- [Functions](#functions)
  * [CandlesNumberSince](#candlesnumbersince)
  * [CheckMoneyForTrade](#checkmoneyfortrade)
  * [CloseFridayPositions](#closefridaypositions)
  * [ClosePositions](#closepositions)
  * [Comment ](#comment-)
  * [CountDigits](#countdigits)
  * [DateDiff](#datediff)
  * [FirstTick](#firsttick)
  * [GetLot](#getlot)
  * [GetLot](#getlot-1)
  * [MarketOpen](#marketopen)
  * [MeanCandlesSize](#meancandlessize)
  * [Movement](#movement)
  * [PeriodToInt](#periodtoint)
  * [Profit](#profit)
  * [Profit daily](#profit-daily)
  * [Profit since](#profit-since)
  * [SLBuy](#slbuy)
  * [SLSell](#slsell)
  * [Start day](#start-day)
  * [Start day](#start-day-1)
  * [TPBuy](#tpbuy)
  * [TPSell](#tpsell)
  * [TradeDays](#tradedays)
  * [TradeHours](#tradehours)
  * [TraillingStop](#traillingstop)
  * [TraillingStop](#traillingstop-1)
  * [TraillingStopFixe](#traillingstopfixe)
  * [TraillingStopIncreasing](#traillingstopincreasing)
  * [TraillingStopMa](#traillingstopma)
  * [TraillingStopMeanMoving](#traillingstopmeanmoving)
  * [TraillingStopQuickSecurity](#traillingstopquicksecurity)
  * [UpdateBuffer](#updatebuffer)
  * [UpdateCandles](#updatecandles)


## Installation

## Enumerations

### TRAILLING STOP

#### Description :
Enumeration to specify the type of trailing stop to use

#### Parameters :
@enum FIXE Fixed trailing stop
@enum MA_FOLLOWING Trailing stop following moving average
@enum QUICK_SECURITY Trailing stop with quick security
@enum MEAN_MOVING Trailing stop following mean moving
@enum INCREASING Increasing trailing stop


### TRAILLING STOP CROSSING

#### Description :
Enumeration to specify the type of trailing stop to use for a crossing moving average strategy

#### Parameters :
@enum FIXE_C Fixed trailing stop
@enum MA1_FOLLOWING_C Trailing stop following moving average 1
@enum MA2_FOLLOWING_C Trailing stop following moving average 2
@enum QUICK_SECURITY_C Trailing stop with quick security
@enum MEAN_MOVING_C Trailing stop following mean moving
@enum INCREASING_C Increasing trailing stop


### HOURS

#### Description :
This is an enumeration of hours. This enumeration includes 24 hours starting


### MINUTES

#### Description :
This is an enumeration that defines the different minutes in increments of 5.


### POSITIONS

#### Description :
Enumeration to specify the type of positions to close

#### Parameters :
@enum SELL Sell positions only
@enum BUY Buy positions only
@enum ALL All positions (both Buy and Sell)


## Functions

### CandlesNumberSince

#### Description :

#### Parameters :

#### Return :


### CheckMoneyForTrade

#### Description :

#### Parameters :

#### Return :


### CloseFridayPositions

#### Description :

#### Parameters :

#### Return :


### ClosePositions

#### Description :

#### Parameters :

#### Return :


### Comment 

#### Description :
This function print on the chart the daily profit/loss and total profit/loss information of the Expert Advisor (EA).

#### Parameters :
@param magic: long - The magic number of the EA.
@param comment: bool - A flag indicating whether to output the information to the comment section.
@param last_day: int - A variable to keep track of the previous day of the week.
@param profit_total[5]: double - An array to store the total profit/loss information, including total profit, total swap, total commission, and total fee.
@param profit_daily[5]: double - An array to store the daily profit/loss information, including total profit, total swap, total commission, and total fee.


### CountDigits

#### Description :

#### Parameters :

#### Return :


### DateDiff

#### Description :

#### Parameters :

#### Return :


### FirstTick

#### Description :

#### Parameters :

#### Return :


### GetLot

#### Description :

#### Parameters :

#### Return :


### GetLot

#### Description :

#### Parameters :

#### Return :


### MarketOpen

#### Description :

#### Parameters :

#### Return :


### MeanCandlesSize

#### Description :

#### Parameters :

#### Return :


### Movement

#### Description :

#### Parameters :

#### Return :


### PeriodToInt

#### Description :

#### Parameters :

#### Return :


### Profit

#### Description :
This function updates the profit information for an expert advisor using a specified magic number.

#### Parameters :
@param magic: long - The magic number of the expert advisor.
@param last_day: int & - The last day of the week that was processed.
@param profit_total[]: double & - An array containing the total profit for each symbol being traded.
@param profit_daily[]: double & - An array containing the daily profit for each symbol being traded.


### Profit daily

#### Description :
This function calculates the daily profit of an expert Advisor

#### Parameters :
@param magic: long - The magic number of the Expert Advisor.
@param result[5]: double - An array that will store the daily profit and its components (total, profit, swap, commission, and fee).



### Profit since

#### Description :
This function calculates the total, profit, swap, commission, and fee since a certain date for trades.

#### Parameters :
@param magic: long - The magic number of the EA.
@param result[5]: double - An array to store the results, which are the total, profit, swap, commission, and fee.
@param since: datetime - The starting date to consider.


### SLBuy

#### Description :

#### Parameters :

#### Return :


### SLSell

#### Description :

#### Parameters :

#### Return :


### Start day

#### Description :
This function returns the start of the day in terms of the server's time (ex : 09/02/2023 00:00:00).

#### Return :
@return datetime - Returns the start of the day in terms of the server's time.


### Start day

#### Description :
This function returns the start of the day based on a given date (ex : 09/02/2023 00:00:00).

#### Parameters :
@param day: datetime - The date to calculate the start of the day from.

#### Return :
@return datetime - Returns the start of the day based on the given date.


### TPBuy

#### Description :

#### Parameters :

#### Return :


### TPSell

#### Description :

#### Parameters :

#### Return :


### TradeDays

#### Description :

#### Parameters :

#### Return :


### TradeHours

#### Description :
This function allows us to know if we are in trading hours.

#### Parameters :
@param time_filter: bool - A boolean value indicating whether the time filter should be applied or not.
@param start_hour: HOURS - The hour of the day at which the specified time range begins
@param start_minute: MINUTES - The minute of the hour at which the specified time range begins
@param end_hour: HOURS - The hour of the day at which the specified time range ends
@param end_minute: MINUTES - The minute of the hour at which the specified time range ends

#### Return :
@return bool - Returns true if the current time falls within the specified time range and the time_filter is set to true, or if time_filter is set to false. Returns false otherwise.

### TraillingStop

#### Description :

#### Parameters :

#### Return :


### TraillingStop

#### Description :

#### Parameters :

#### Return :


### TraillingStopFixe

#### Description :

#### Parameters :

#### Return :


### TraillingStopIncreasing

#### Description :

#### Parameters :

#### Return :


### TraillingStopMa

#### Description :

#### Parameters :

#### Return :


### TraillingStopMeanMoving

#### Description :

#### Parameters :

#### Return :


### TraillingStopQuickSecurity

#### Description :

#### Parameters :

#### Return :


### UpdateBuffer

#### Description :

#### Parameters :

#### Return :


### UpdateCandles

#### Description :

#### Parameters :

#### Return :

