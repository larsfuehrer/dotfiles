-------------------------------------------------
-- Allows to store client specific settings in one place
--
-- @author Pavel Makhov
-- @copyright 2019 Pavel Makhov
--------------------------------------------

local secrets = {
    -- Yandex.Translate API key - https://tech.yandex.com/translate/
    translate_widget_api_key = os.getenv('AWW_TRANSLATE_API_KEY') or 'API_KEY',

    -- OpenWeatherMap API key - https://openweathermap.org/appid
    weather_widget_api_key = os.getenv('AWW_WEATHER_API_KEY') or '019dbb65c8883cf17cd32b37cdb0d91f',
    weather_widget_city = os.getenv('AWW_WEATHER_CITY') or 'Berlin,de',
    weather_widget_units = os.getenv('AWW_WEATHER_UNITS') or 'metric' -- for celsius, or 'imperial' for fahrenheit
}

return secrets
