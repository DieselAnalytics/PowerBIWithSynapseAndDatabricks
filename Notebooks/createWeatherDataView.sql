ALTER VIEW WeatherData
AS
SELECT
     EpochTime
    ,HasPrecipitation
    ,IsDayTime
    ,Link
    ,LocalObservationDateTime
    ,MobileLink
    ,PrecipitationType
    ,Fahrenheit
    ,WeatherIcon
    ,WeatherText
FROM
    OPENROWSET(
        BULK 'silver/weatherdata/',
        DATA_SOURCE = 'LakehouseData',
        FORMAT = 'DELTA'
    ) AS [result]