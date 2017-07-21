view: v_job_duration {
  sql_table_name: DemoCash.vJobDuration ;;

  dimension: duration_seconds {
    type: number
    sql: ${TABLE}.DurationSeconds ;;
  }

  dimension: end_date_time {
    type: string
    sql: ${TABLE}.EndDateTime ;;
  }

  dimension: label {
    type: string
    sql: ${TABLE}.Label ;;
  }

  dimension: start_date_time {
    type: string
    sql: ${TABLE}.StartDateTime ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.Type ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
