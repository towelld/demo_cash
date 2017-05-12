view: v_bcbs248 {
  sql_table_name: DemoCash.vBCBS248 ;;

  dimension: currency {
    type: string
    sql: ${TABLE}.Currency ;;
  }

  dimension: net {
    type: number
    sql: ${TABLE}.net ;;
  }

  #dimension: post_date {
  #  sql: ${TABLE}.PostDate ;;
  #  type: string
  #}
  dimension_group: post_date {
    type: time
    timeframes: [date, week, month, time]
    convert_tz: no
    sql: ${TABLE}.PostDate ;;
  }

  dimension: received {
    type: number
    sql: ${TABLE}.received ;;
  }

  dimension: sent {
    type: number
    sql: ${TABLE}.sent ;;
  }

  dimension: themax {
    type: number
    sql: ${TABLE}.themax ;;
  }

  dimension: themin {
    type: number
    sql: ${TABLE}.themin ;;
  }

  dimension: time_specific {
    type: number
    sql: ${TABLE}.time_specific ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
