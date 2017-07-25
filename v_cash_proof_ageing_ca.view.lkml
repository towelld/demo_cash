view: v_cash_proof_ageing_ca {
  sql_table_name: dbo.v_cash_proof_ageing_ca ;;

  dimension: account_no {
    type: string
    sql: ${TABLE}.AccountNo ;;
  }

  dimension: the_sort {
    type: number
    sql: ${TABLE}.the_sort ;;
  }

  dimension: the_balance {
    type: number
    sql: ${TABLE}.the_balance ;;
  }
  dimension: net_balance {
    type: number
    sql: case when ${TABLE}.system = 'bank' then ${TABLE}.the_balance else -1.0*${TABLE}.the_balance end ;;
  }

  dimension: the_count {
    type: number
    sql: ${TABLE}.the_count ;;
  }

  dimension: the_payment {
    type: number
    sql: ${TABLE}.the_payment ;;
  }
  dimension: net_payment {
    type: number
    sql: case when ${TABLE}.system = 'bank' then ${TABLE}.the_payment else -1.0*${TABLE}.the_payment end ;;
  }

  dimension: the_receipt {
    type: number
    sql: ${TABLE}.the_receipt ;;
  }
  dimension: net_receipt {
    type: number
    sql: case when ${TABLE}.system = 'bank' then ${TABLE}.the_receipt else -1.0*${TABLE}.the_receipt end ;;
  }

  dimension: system {
    type: string
    sql: ${TABLE}.system ;;
  }

  dimension: the_age {
    type: string
    sql: ${TABLE}.the_age ;;
  }

  measure: sum_count {
    type: sum
    sql: ${the_count} ;;
    drill_fields: []
  }
  measure: sum_balance {
    type: sum
    sql: ${the_balance} ;;
    value_format_name: decimal_2
    drill_fields: []
  }
  measure: sum_payment {
    type: sum
    sql: ${the_payment} ;;
    value_format_name: decimal_2
    drill_fields: []
  }
  measure: sum_receipt {
    type: sum
    sql: ${the_receipt} ;;
    value_format_name: decimal_2
    drill_fields: []
  }
  measure: sum_net_balance {
    type: sum
    sql: ${net_balance} ;;
    value_format_name: decimal_2
    drill_fields: []
  }
  measure: sum_net_payment {
    type: sum
    sql: ${net_payment} ;;
    value_format_name: decimal_2
    drill_fields: []
  }
  measure: sum_net_receipt {
    type: sum
    sql: ${net_receipt} ;;
    value_format_name: decimal_2
    drill_fields: []
  }
}
