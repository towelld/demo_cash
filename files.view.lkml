view: files {
  sql_table_name: cshstkCash.Files ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.Id ;;
  }

  dimension: feed_fqn {
    type: string
    sql: ${TABLE}.FeedFqn ;;
  }

  dimension: file_name {
    type: string
    sql: ${TABLE}.FileName ;;
  }

  dimension: file_time_stamp {
    type: string
    sql: ${TABLE}.FileTimeStamp ;;
  }

  dimension: load_time_stamp {
    type: string
    sql: ${TABLE}.LoadTimeStamp ;;
  }

  dimension: match_pk {
    type: string
    sql: ${TABLE}.MatchPk ;;
  }

  dimension: records_loaded {
    type: number
    sql: ${TABLE}.RecordsLoaded ;;
  }

  dimension: status {
    type: number
    sql: ${TABLE}.Status ;;
  }

  dimension: time_stamp_zone_id {
    type: number
    sql: ${TABLE}.TimeStampZoneId ;;
  }

  measure: count {
    type: count
    drill_fields: [id, file_name, file_record_link.count, file_row_errors.count, record_history.count]
  }
  measure: sum_records_loaded {
    type: sum
    sql: ${records_loaded} ;;
    drill_fields: [id, file_name, file_record_link.count, file_row_errors.count, record_history.count]
    link: {
      label: "Job Status"
      url: "http://localhost:9999/embed/dashboards/demo_cash::cash_job_status"
    }
  }
}