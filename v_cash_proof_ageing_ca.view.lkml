view: v_cash_proof_ageing_ca {
  sql_table_name: dbo.v_cash_proof_ageing_ca ;;

  dimension: account_no {
    type: string
    sql: ${TABLE}.AccountNo ;;
  }

  dimension: the_balance {
    type: number
    sql: ${TABLE}.the_balance ;;
  }

  dimension: the_count {
    type: number
    sql: ${TABLE}.the_count ;;
  }

  dimension: the_payment {
    type: number
    sql: ${TABLE}.the_payment ;;
  }

  dimension: the_receipt {
    type: number
    sql: ${TABLE}.the_receipt ;;
  }

  dimension: system {
    type: string
    sql: ${TABLE}.system ;;
  }

  dimension: the_age {
    type: string
    sql: ${TABLE}.the_age ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
