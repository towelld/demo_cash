view: v_cash_proof_ageing_ca {
  sql_table_name: dbo.v_cash_proof_ageing_ca ;;

  dimension: account_no {
    type: string
    sql: ${TABLE}.AccountNo ;;
  }

  dimension: our_balance {
    type: number
    sql: ${TABLE}.our_balance ;;
  }

  dimension: our_count {
    type: number
    sql: ${TABLE}.our_count ;;
  }

  dimension: our_payment {
    type: number
    sql: ${TABLE}.our_payment ;;
  }

  dimension: our_receipt {
    type: number
    sql: ${TABLE}.our_receipt ;;
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
