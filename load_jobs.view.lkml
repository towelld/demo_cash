view: load_jobs {
  sql_table_name: DemoCash.LoadJobs ;;

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
    sql: DATEADD(millisecond,${TABLE}.LoadDuration,${TABLE}.DateTimeStamp) ;;
  }

  dimension: feed_name {
    type: string
    sql: ${TABLE}.FeedName ;;
  }

  dimension: file_name {
    type: string
    sql: ${TABLE}.FileName ;;
  }

  dimension: load_duration {
    type: number
    label: "Secs"
    sql: ${TABLE}.LoadDuration/1000.0 ;;
    value_format: "0.00"
  }

  dimension: load_id {
    type: number
    sql: ${TABLE}.LoadId ;;
  }

  dimension: number_of_discarded_records {
    type: number
    label: "Discarded"
    sql: ${TABLE}.NumberOfDiscardedRecords ;;
  }

  dimension: number_of_loaded_records {
    type: number
    label: "Loaded"
    sql: ${TABLE}.NumberOfLoadedRecords ;;
  }

  dimension: package {
    type: string
    sql: ${TABLE}.Package ;;
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

  dimension: tenant_token {
    type: string
    sql: ${TABLE}.TenantToken ;;
  }

  dimension: time_stamp_zone_id {
    type: number
    sql: ${TABLE}.TimeStampZoneId ;;
  }

  measure: count {
    type: count
    drill_fields: [feed_name, file_name, rec_name]
  }
  measure: sum_duration {
    type: sum
    sql:${TABLE}.LoadDuration/1000.0 ;;
  }
}
