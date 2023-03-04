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
  * [Direction](#direction)
  * [Direction](#direction-1)
  * [FirstTick](#firsttick)
  * [GetLot](#getlot)
  * [GetLot](#getlot-1)
  * [GetMaxClose](#getmaxclose)
  * [GetMaxOpen](#getmaxopen)
  * [GetMaxPrice](#getmaxprice)
  * [GetMaxSpread](#getmaxspread)
  * [GetMinClose](#getminclose)
  * [GetMinOpen](#getminopen)
  * [GetMinPrice](#getminprice)
  * [GetMinSpread](#getminspread)
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
  * [TotalOperations](#totaloperations)
  * [TotalOrders](#totalorders)
  * [TotalOrdersBuy](#totalordersbuy)
  * [TotalOrdersSell](#totalorderssell)
  * [TotalPositions](#totalpositions)
  * [TotalPositionsBuy](#totalpositionsbuy)
  * [TotalPositionsSell](#totalpositionssell)
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

- Add "EA Toolkit.mqh" to the MQL/Include/Trade folder
- Include this file in your EA : #include <Trade\EA Toolkit.mqh>

## Enumerations

### TRAILLING STOP

#### Description :
- Enumeration to specify the type of trailing stop to use

#### Parameters :
- @enum FIXE Fixed trailing stop

- @enum MA_FOLLOWING Trailing stop following moving average

- @enum QUICK_SECURITY Trailing stop with quick security

- @enum MEAN_MOVING Trailing stop following mean moving

- @enum INCREASING Increasing trailing stop



---
### TRAILLING STOP CROSSING

#### Description :
- Enumeration to specify the type of trailing stop to use for a crossing moving average strategy

#### Parameters :
- @enum FIXE_C Fixed trailing stop

- @enum MA1_FOLLOWING_C Trailing stop following moving average 1

- @enum MA2_FOLLOWING_C Trailing stop following moving average 2

- @enum QUICK_SECURITY_C Trailing stop with quick security

- @enum MEAN_MOVING_C Trailing stop following mean moving

- @enum INCREASING_C Increasing trailing stop



---
### HOURS

#### Description :
- This is an enumeration of hours. This enumeration includes 24 hours starting


---
### MINUTES

#### Description :
- This is an enumeration that defines the different minutes in increments of 5.


---
### POSITIONS

#### Description :
- Enumeration to specify the type of positions to close

#### Parameters :
- @enum SELL Sell positions only

- @enum BUY Buy positions only

- @enum ALL All positions (both Buy and Sell)



## Functions

### CandlesNumberSince

#### Description :
- This function calculates the number of candles that have formed on a chart since a specified datetime.

#### Parameters :
- @param since: datetime - The specified datetime to calculate the number of candles since.


#### Return :
- @return long - Returns the number of candles that have formed on a chart since the specified datetime.


---
### CheckMoneyForTrade

#### Description :
- This function checks if there is enough money in the account to execute a trade of a certain symbol and lot size.

#### Parameters :
- @param symbol: string - The symbol of the trade to be checked.

- @param lot: double - The size of the trade in lots.

- @param type: ENUM_ORDER_TYPE - The type of the trade (buy or sell).


#### Return :
- @return bool - Returns true if there is enough money in the account to execute the trade. Returns false if there is insufficient funds or if an error occurs.


---
### CloseFridayPositions

#### Description :
- This function checks if it is Friday and if the specified hour and minute have passed, then closes all the positions with a specific magic number.

#### Parameters :
- @param magic : long, The magic number of the expert advisor.

- @param h: An integer that represents the hour after which the positions are to be closed.

- @param m: An integer that represents the minute after which the positions are to be closed.

- @param close: A boolean that indicates whether to close positions on Friday or not.


#### Return :
- @return: Returns true if positions are closed, otherwise false.


---
### ClosePositions

#### Description :
- This function closes the positions of an expert advisor with a specific magic number and matching the specified type (buy, sell, or all).

#### Parameters :
- @param magic : long, The magic number of the expert advisor.

- @param pos : POSITIONS, The type of the positions to be closed (buy, sell, or all).


#### Return :
- @return bool, returns true if the positions are successfully closed, otherwise false.


---
### Comment 

#### Description :
- This function print on the chart the daily profit/loss and total profit/loss information of the Expert Advisor (EA).

#### Parameters :
- @param magic: long - The magic number of the EA.

- @param comment: bool - A flag indicating whether to output the information to the comment section.

- @param last_day: int - A variable to keep track of the previous day of the week.

- @param profit_total[5]: double - An array to store the total profit/loss information, including total profit, total swap, total commission, and total fee.

- @param profit_daily[5]: double - An array to store the daily profit/loss information, including total profit, total swap, total commission, and total fee.



---
### CountDigits

#### Description :
- This function counts the number of digits in a given double value.

#### Parameters :
- @param value: double - The double value to count digits from.

- @param precision_max: double - The maximum precision allowed for counting the digits. Default value is 8.


#### Return :
- @return int - Returns the number of digits.


---
### DateDiff

#### Description :
- This function calculates the difference between two dates.

#### Parameters :
- @param a: datetime - The first date.

- @param b: datetime - The second date.


#### Return :
- @return datetime - Returns the difference between the two dates.


---
### FirstTick

#### Description :
- Permite to know if we are on a new candle/ first tick

#### Parameters :
- @param candles: MqlRates[] - The array of candles to be checked.


#### Return :
- @return bool - Returns true if the first candle in the array is the first tick of that candle. Returns false otherwise.

---
### Direction

#### Description :
- This function returns a order direction based on the specified position type.

#### Parameters :
- @param type: ENUM_ORDER_TYPE - - The type of order to determine the direction for.

#### Return :
- @return POSITIONS - Returns the position direction (BUY or SELL) associated with the given order type. If the order type is not recognized, it returns ALL.

---
### Direction

#### Description :
- This function returns a position direction based on the specified position type.

#### Parameters :
- @param type: ENUM_POSITION_TYPE - The type of position to determine the direction for.

#### Return :
- @return POSITIONS - Returns the direction of the position, either BUY, SELL, or ALL. If an unknown position type is passed, it prints an error message and returns ALL.

---
### GetLot

#### Description :
- This function calculates the lot size to be traded based on the risk and the stop loss point.

#### Parameters :
- @param risk: double - The percentage of the capital to risk in the trade.

- @param point: int - The stop loss point in pips.


#### Return :
- @return double - Returns the calculated lot size.


---
### GetLot

#### Description :
- This function calculates the lot size for a trade.

#### Parameters :
- @param risk: double - The percentage of the account balance to risk on each trade.

- @param point: int - The stop loss in points.

- @param money_managment: bool - Flag indicating whether to use money management to determine the lot size.

- @param fixed_lot: double - The fixed lot size to use if money management is not used.


#### Return :
- @return double - The lot size for the trade.

---
### GetMaxClose

#### Description :
- This function returns the maximum close price for a given number of candles, as specified by the "from" and "to" parameters.

#### Parameters :
- @param candles[]: MqlRates - An array of price data for a symbol.
- @param from: int - The index of the first candle to include in the search. Defaults to 1.
- @param to: int - The index of the last candle to include in the search. Defaults to 10.

#### Return :
- @return double - The maximum close price for the specified range of candles.

---
### GetMaxOpen

#### Description :
- This function returns the maximum opening price for a given range of candles.

#### Parameters :
- @param candles[]: MqlRates - An array of price data for a symbol.
- @param from: int - The index of the first candle to include in the range. Default is 1.
- @param to: int - The index of the last candle to include in the range. Default is 10.

#### Return :
- @return double - The highest opening price within the specified range of candles, normalized to the number of decimal places in the current symbol's price.

---
### GetMaxPrice

#### Description :
- This function retrieves the maximum price value from an array of MqlRates structures for a given range of candles.

#### Parameters :
- @param candles[]: MqlRates - An array of price data for a symbol.
- @param from: int - The index of the starting candle to retrieve the maximum price value from. Default is 1.
- @param to: int - The index of the ending candle to retrieve the maximum price value from. Default is 10.

#### Return :
- @return double - The maximum price value for the given range of candles.

---
### GetMaxSpread

#### Description :
- This function calculates the maximum spread value within a given range of candles.

#### Parameters :
- @param candles[]: MqlRates - an array of price data for a symbol.
- @param from: int - the index of the first candle in the range. Default value is 1.
- @param to: int - the index of the last candle in the range. Default value is 10.

#### Return :
- @return double - the maximum spread value within the specified range of candles, normalized to the number of digits after the decimal point.

---
### GetMinClose

#### Description :
- This function returns the maximum close price for a given number of candles, as specified by the "from" and "to" parameters.

#### Parameters :
- @param candles[]: MqlRates - An array of price data for a symbol.
- @param from: int - The index of the first candle to include in the search. Defaults to 1.
- @param to: int - The index of the last candle to include in the search. Defaults to 10.

#### Return :
- @return double - The maximum close price for the specified range of candles.

---
### GetMinOpen

#### Description :
- This function finds the minimum opening price of a given range of candlesticks.

#### Parameters :
- @param candles[]: MqlRates - An array of price data for a symbol.
- @param from: int - The start index of the range of candlesticks to be considered. Default is 1.
- @param to: int - The end index of the range of candlesticks to be considered. Default is 10.

#### Return :
- @return double - Returns the minimum opening price of the given range of candlesticks.

---
### GetMinPrice

#### Description :
- This function calculates the minimum price value of an array of candles within a specified range.

#### Parameters :
- @param candles[]: MqlRates - An array of price data for a symbol.
- @param from: int - The starting index of the range to calculate the minimum price value. Default value is 1.
- @param to: int - The ending index of the range to calculate the minimum price value. Default value is 10.

#### Return :
- @return double - The minimum price value within the specified range.

---
### GetMinSpread

#### Description :
- This function retrieves the minimum spread value of a given symbol within a specified range of candles.

#### Parameters :
- @param candles[]: MqlRates - An array of price data for a symbol.
- @param from: int - The start index of the candle range (default value is 1).
- @param to: int - The end index of the candle range (default value is 10).

#### Return :
- @return double - The minimum spread value within the specified range of candles.

---
### MarketOpen

#### Description :
- This function checks if the current time falls within the trading hours of the symbol.

#### Return :
- @return: bool, returns true if the current time falls within the trading hours of the symbol and false if it does not.


---
### MeanCandlesSize

#### Description :
- The "MeanCandlesSize" function calculates the average of the absolute value of the difference between the open and close prices of candles.

#### Parameters :
- @param candles: An array of MqlRates structure containing historical price data.

- @param nb: An integer representing the number of candles to be used in the calculation.


#### Return :
- @return double: The mean size of the candles in points.


---
### Movement

#### Description :
- The "Movement" function checks if the mean candle size is within the specified range (mean_sup and mean_inf).

#### Parameters :
- @param candles: An array of MqlRates type that contains the candles information.

- @param mean_sup: An integer representing the upper limit of the mean candle size.

- @param nb_mean_sup: An integer representing the number of candles used to calculate the upper limit mean.

- @param mean_inf: An integer representing the lower limit of the mean candle size.

- @param nb_mean_inf: An integer representing the number of candles used to calculate the lower limit mean.


#### Return :
- @return A boolean value that is true if the mean candle size is within the specified range, false otherwise.


---
### PeriodToInt

#### Description :
- This function takes a time frame enumeration as input and returns the corresponding number of minutes for that time frame.

#### Parameters :
- @param period: ENUM_TIMEFRAMES - The time frame enumeration to be converted to minutes.


#### Return :
- @return int - The number of minutes that correspond to the input time frame. Returns -1 if the input time frame is unknown.

---
### Profit

#### Description :
- This function updates the profit information for an expert advisor using a specified magic number.

#### Parameters :
- @param magic: long - The magic number of the expert advisor.

- @param last_day: int & - The last day of the week that was processed.

- @param profit_total[]: double & - An array containing the total profit for each symbol being traded.

- @param profit_daily[]: double & - An array containing the daily profit for each symbol being traded.



---
### Profit daily

#### Description :
- This function calculates the daily profit of an expert Advisor

#### Parameters :
- @param magic: long - The magic number of the Expert Advisor.

- @param result[5]: double - An array that will store the daily profit and its components (total, profit, swap, commission, and fee).




---
### Profit since

#### Description :
- This function calculates the total, profit, swap, commission, and fee since a certain date for trades.

#### Parameters :
- @param magic: long - The magic number of the EA.

- @param result[5]: double - An array to store the results, which are the total, profit, swap, commission, and fee.

- @param since: datetime - The starting date to consider.



---
### SLBuy

#### Description :
- This function calculates the stop loss price for a buy trade.

#### Parameters :
- @param bid: double - The bid price of the symbol to be traded.

- @param SL: long - The stop loss level in points.


#### Return :
- @return double - Returns the stop loss price for a buy trade


---
### SLSell

#### Description :
- This function calculates the stop loss price for a sell trade.

#### Parameters :
- @param ask: double - The ask price of the symbol to be traded.

- @param SL: long - The stop loss level in points.


#### Return :
- @return double - Returns the stop loss price for a sell trade


---
### Start day

#### Description :
- This function returns the start of the day in terms of the server's time (ex : 09/02/2023 00:00:00).

#### Return :
- @return datetime - Returns the start of the day in terms of the server's time.


---
### Start day

#### Description :
- This function returns the start of the day based on a given date (ex : 09/02/2023 00:00:00).

#### Parameters :
- @param day: datetime - The date to calculate the start of the day from.


#### Return :
- @return datetime - Returns the start of the day based on the given date.


---
### TotalOperations

#### Description :
- This function returns the total number of operations (positions and orders) with a given magic number.

#### Parameters :
- @param magic: long - The magic number used to filter the operations.

#### Return :
- @return int - The total number of operations (positions and orders) with the specified magic number.

---
### TotalOrders

#### Description :
- This function calculates the total number of orders with a specified magic number.

#### Parameters :
- @param magic: long - The magic number of the orders to be counted.

#### Return :
- @return int - The total number of orders with the specified magic number.

---
### TotalOrdersBuy

#### Description :
- This function counts the total number of open buy orders that have a specific magic number.

#### Parameters :
- @param magic: long - The magic number of the expert advisor.

#### Return :
- @return int - The total number of open buy orders with the specified magic number.

---
### TotalOrdersSell

#### Description :
- This function calculates the total number of sell orders with a specific magic number.

#### Parameters :
- @param magic: long - The magic number of the orders to be counted.

#### Return :
- @return int - The total number of sell orders with the specified magic number.

---
### TotalPositions

#### Description :
- This function counts the total number of positions for a given magic number.

#### Parameters :
- @param magic: long - The magic number to filter positions.

#### Return :
- @return int - The total number of positions for the specified magic number.

---
### TotalPositionsBuy

#### Description :
- This function calculates the total number of open buy positions with a specific magic number in the account.

#### Parameters :
- @param magic: long - The magic number of the expert advisor to filter positions.

#### Return :
- @return int - The total number of open buy positions with the specified magic number.

---
### TotalPositionsSell

#### Description :
- This function calculates the total number of sell orders with a specific magic number.

#### Parameters :
- @param magic: long - The magic number of the orders to be counted.

#### Return :
- @return int - The total number of sell orders with the specified magic number.


---
### TPBuy

#### Description :
- This function calculates the take profit buy price for a given ask price and a given take profit value.

#### Parameters :
- @param ask: double - The ask price of the symbol.

- @param TP: long - The take profit value in points.


#### Return :
- @return double - Returns the take profit buy price.


---
### TPSell

#### Description :
- This function calculates the take profit sell price for a given bid price and a given take profit value.

#### Parameters :
- @param bid: double - The bid price of the symbol.

- @param TP: long - The take profit value in points.


#### Return :
- @return double - Returns the take profit sell price.


---
### TradeDays

#### Description :
- This function tells us if we can trade today.

#### Parameters :
- @param monday: bool - Specifies if Monday is a valid trading day.

- @param tuesday: bool - Specifies if Tuesday is a valid trading day.

- @param wednesday: bool - Specifies if Wednesday is a valid trading day.

- @param thursday: bool - Specifies if Thursday is a valid trading day.

- @param friday: bool - Specifies if Friday is a valid trading day.

- @param saturday: bool - Specifies if Saturday is a valid trading day. Defaults to false.

- @param sunday: bool - Specifies if Sunday is a valid trading day. Defaults to false.

#### Return :
- @return bool - Returns true if the specified day of the week is a valid trading day, false otherwise.

---
### TradeHours

#### Description :
- This function allows us to know if we are in trading hours.

#### Parameters :
- @param time_filter: bool - A boolean value indicating whether the time filter should be applied or not.

- @param start_hour: HOURS - The hour of the day at which the specified time range begins

- @param start_minute: MINUTES - The minute of the hour at which the specified time range begins

- @param end_hour: HOURS - The hour of the day at which the specified time range ends

- @param end_minute: MINUTES - The minute of the hour at which the specified time range ends


#### Return :
- @return bool - Returns true if the current time falls within the specified time range and the time_filter is set to true, or if time_filter is set to false. Returns false otherwise.

---
### TraillingStop

#### Description :
- This function implements a trailing stop based on a specified type.

#### Parameters :
- @param sl_type: TRAILLING_STOP - The type of trailing stop to use (FIXE, MA_FOLLOWING, QUICK_SECURITY, MEAN_MOVING, INCREASING).

- @param candles[]: MqlRates - An array of price data for a symbol.

- @param magic: long - The magic number of the expert advisor.

- @param sl: int - The trailing stop level.

- @param ma_buff[]: double - An array of moving average values.

- @param sl_min: int - The minimum trailing stop level.

- @param sl_quick_q: int - The trailing stop level for the quick security type.

- @param sl_start_q: int - The starting point for the trailing stop level for the quick security type.

- @param ratio: int - The ratio used in the mean moving type.

- @param mean_nb_candles: int - The number of candles used in the mean moving type.

- @param sl_i: int - The current trailing stop level for the increasing type.

- @param sl_start_i: int - The starting point for the trailing stop level for the increasing type.

- @param nb_candles_i: int - The number of candles used in the increasing type.

- @param sl_increase: int - The amount to increase the trailing stop level for the increasing type.

- @param max_increase: int - The maximum increase for the trailing stop level for the increasing type.

- @param min_decrease: int - The minimal decrease for the trailing stop level for the increasing type.


#### Return :
- @return bool - Returns true if the trailing stop was executed successfully. Returns false otherwise.


---
### TraillingStop

#### Description :
- The function TraillingStop applies a trailing stop to a trade order based on different criteria for a crossing moving average strategy.

#### Parameters :
- @param sl_type: TRAILLING_STOP_CROSSING - Specifies the type of trailing stop to be applied.

- @param candles[]: MqlRates & - An array of MqlRates, contains historical price data for the symbol.

- @param magic: long - The magic number of the expert advisor.

- @param sl: int - The trailing stop level.

- @param ma1_buff[]: double & - An array of doubles, contains the moving average data for the symbol.

- @param ma2_buff[]: double & - An array of doubles, contains the moving average data for the symbol.

- @param sl_min: int - The minimum trailing stop level.

- @param sl_quick_q: int - The quick security trailing stop level.

- @param sl_start_q: int - The start of the quick security trailing stop.

- @param ratio: int - The ratio to be used in the mean moving trailing stop calculation.

- @param mean_nb_candles: int - The number of candles to be used in the mean moving trailing stop calculation.

- @param sl_i: int - The initial trailing stop level for the increasing trailing stop.

- @param sl_start_i: int - The start of the increasing trailing stop.

- @param nb_candles_i: int - The number of candles to be used in the increasing trailing stop calculation.

- @param sl_increase: int - The increase rate for the increasing trailing stop.

- @param max_increase: int - The maximum increase level for the increasing trailing stop.

- @param min_decrease: int - The minimal decrease for the trailing stop level for the increasing type.


#### Return :
- @return bool - Returns true if the trailing stop has been applied successfully. Returns false otherwise.


---
### TraillingStopFixe

#### Description :
- This function modifies stop loss levels for existing positions of the Expert Advisor with a fixed amount.

#### Parameters :
- @param ask: double - The ask price of the symbol.

- @param bid: double - The bid price of the symbol.

- @param magic: long - The magic number of the Expert Advisor.

- @param sl: int - The fixed stop loss level to be set.


#### Return :
- @return bool - Returns true if the modification is successful. Returns false if an error occurs.


---
### TraillingStopIncreasing

#### Description :
- This function updates the stop loss of a position according to the current market price.

#### Parameters :
- @param ask: double - The current market ask price.

- @param bid: double - The current market bid price.

- @param magic : long, The magic number of the expert advisor.

- @param sl: int - The initial stop loss value.

- @param sl_start: int - The minimum number of pips from the opening price that the stop loss must start to moved.

- @param nb_candles: int - The number of candles used to increase/decrease the stop loss.

- @param sl_increase: int - The amount by which the stop loss is increased/decrease for each candle.

- @param max_increase: int - The maximum amount by which the stop loss can be increased.

- @param min_increase: int - The minimal amount by which the stop loss can be decrease.


#### Return :
- @return bool - Returns true if the stop loss of the position was successfully updated. Returns false if an error occurs.


---
### TraillingStopMa

#### Description :
- This function modifies the stop loss of a position if the new stop loss is better than the old stop loss depending of a moving average.

#### Parameters :
- @param ask: double - The current ask price.

- @param bid: double - The current bid price.

- @param magic: long - The magic number of the expert advisor.

- @param buff[]: double - The moving average buffer.

- @param sl_min: int - The minimum stop loss distance possible.


#### Return :
- @return bool - Returns true if the stop loss is successfully modified. Returns false if an error occurs.


---
### TraillingStopMeanMoving

#### Description :
- This function modifies the stop loss of an existing position based on the mean of a certain number of candles and a specified ratio.

#### Parameters :
- @param ask: double - The current ask price.

- @param bid: double - The current bid price.

- @param magic : long, The magic number of the expert advisor.

- @param candles: MqlRates &candles[] - An array of candles used to calculate the mean.

- @param ratio: int - The ratio used to calculate the new stop loss on 100.

- @param mean_nb_candles: int - The number of candles used to calculate the mean.


#### Return :
- @return bool - Returns true if the modification was successful. Returns false if there was an error or if the modification was unsuccessful.


---
### TraillingStopQuickSecurity

#### Description :
- This function modifies the stop loss of an existing trade for securise it quickly.

#### Parameters :
- @param ask: double - The current ask price.

- @param bid: double - The current bid price.

- @param magic: long - The magic number of the expert advisor.

- @param sl: int - The initial stop loss value.

- @param sl_start: int - The minimum number of pips from the opening price that the stop loss must start to moved.


#### Return :
- @return bool - Returns true if the modification of the stop loss is successful. Returns false if there is an error modifying the stop loss.


---
### UpdateBuffer

#### Description :
- This function updates an array buffer with data from a specified handle.

#### Parameters :
- @param handle: int - The handle of the data source to be copied to the buffer.

- @param buf: double[] - The buffer to be updated with the data from the handle.

- @param size: int - The size of the buffer.


#### Return :
- @return bool - Returns true if the buffer was successfully updated with data from the handle. Returns false if an error occurs.


---
### UpdateCandles

#### Description :
- This function updates an array of candles with historical data of a specified symbol and time frame.

#### Parameters :
- @param candles: MqlRates[] - The array of candles to be updated with the historical data.

- @param size: int - The size of the array of candles.


#### Return :
- @return bool - Returns true if the candles array was successfully updated with the historical data. Returns false if an error occurs.


