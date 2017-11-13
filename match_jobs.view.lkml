view: match_jobs {
  sql_table_name: DemoCash.MatchJobs ;;

  #dimension: date_time_stamp {
  #  type: string
  #  sql: ${TABLE}.DateTimeStamp ;;
  #}
  dimension_group: start_date_time_stamp {
    type: time
    timeframes: [date, week, month, time]
    convert_tz: no
    label: "Start"
    sql: ${TABLE}.DateTimeStamp ;;
  }
  dimension_group: end_date_time_stamp {
    type: time
    timeframes: [date, week, month, time]
    convert_tz: no
    label: "End"
    sql: DATEADD(millisecond,${TABLE}.Duration,${TABLE}.DateTimeStamp) ;;
  }

  dimension: duration {
    type: number
    sql: ${TABLE}.Duration ;;
  }

  dimension: duration_secs {
    type: number
    sql: ${TABLE}.Duration/1000.0 ;;
  }

  dimension: match_id {
    type: string
    sql: ${TABLE}.MatchId ;;
  }

  dimension: number_of_matched_groups {
    type: number
    sql: ${TABLE}.NumberOfMatchedGroups ;;
  }

  dimension: number_of_matched_records {
    type: number
    sql: ${TABLE}.NumberOfMatchedRecords ;;
  }

  dimension: number_of_partial_groups {
    type: number
    sql: ${TABLE}.NumberOfPartialGroups ;;
  }

  dimension: number_of_partial_records {
    type: number
    sql: ${TABLE}.NumberOfPartialRecords ;;
  }

  dimension: number_of_records {
    type: number
    sql: ${TABLE}.NumberOfRecords ;;
  }

  dimension: number_of_suggested_groups {
    type: number
    sql: ${TABLE}.NumberOfSuggestedGroups ;;
  }

  dimension: number_of_suggested_records {
    type: number
    sql: ${TABLE}.NumberOfSuggestedRecords ;;
  }

  dimension: pk {
    type: string
    sql: ${TABLE}.Pk ;;
  }

  dimension: rec_name {
    type: string
    sql: ${TABLE}.RecName ;;
  }

  dimension: rec_operational_cycle {
    type: string
    sql: ${TABLE}.RecOperationalCycle ;;
  }

  dimension: time_stamp_zone_id {
    type: number
    sql: ${TABLE}.TimeStampZoneId ;;
  }

  measure: count {
    type: count
    drill_fields: [rec_name]
  }
  measure: sum_duration {
    type: sum
    sql:${TABLE}.Duration/1000.0 ;;
  }

}
