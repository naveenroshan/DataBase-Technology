package com.example.utils;

import java.time.LocalDateTime;
import java.time.ZoneId;
import java.time.ZonedDateTime;
import java.time.format.DateTimeFormatter;

public class DateUtil {
    public static LocalDateTime convertStringToLocalDateTime(String dateString, String timeZone){
        DateTimeFormatter isoFormat = DateTimeFormatter.ofPattern("yyyy-MM-dd'T'HH:mm:ss.SSSz");	// 2021-04-28T12:35:00.000Z
        LocalDateTime d = LocalDateTime.parse(dateString, isoFormat);
        ZonedDateTime dZoned = d.atZone(ZoneId.of(timeZone));	//clientTimeZone = "Asia/Calcutta"
        ZonedDateTime dUTCZoned = dZoned.withZoneSameInstant(ZoneId.of("UTC"));
        LocalDateTime dInUTC = dUTCZoned.toLocalDateTime();
        return dInUTC;
    }
}
