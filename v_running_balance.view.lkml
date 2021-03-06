view: v_running_balance {
  sql_table_name: DemoCash.vRunningBalance ;;

  dimension: currency {
    type: string
    sql: ${TABLE}.Currency ;;
  }

  dimension: net {
    type: number
    sql: ${TABLE}.net ;;
  }

  dimension: post_date {
    type: string
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

  dimension: sent_time {
    type: number
    sql: ${TABLE}.sent_time ;;
  }

  dimension: time {
    type: string
    sql: ${TABLE}.time ;;
    drill_fields: [time]
  }

  measure: count {
    type: count
  }

  measure: sum_net{
    type: sum
    sql: ${net};;
  }

}
