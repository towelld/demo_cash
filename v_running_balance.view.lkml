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
  }

  measure: count {
    type: count
    drill_fields: [cash_record*]
  }

  measure: sum_net{
    type: sum
    sql: ${net};;
    drill_fields: [cash_record*]
  }

  set: cash_record {
    fields: [
      records.account_no,
      records.system,
      records.currency,
      records.original_amount,
      records.sign,
      records.post_date_date,
      records.value_date,
      records.our_reference,
      records.reference1,
      records.reference2,
      records.reference3
    ]
  }
}
