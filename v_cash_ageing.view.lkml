view: v_cash_ageing {
  sql_table_name: dbo.v_cash_ageing ;;

  dimension: age {
    type: string
    sql: ${TABLE}.age ;;
  }

  dimension: age_balance {
    type: number
    sql: ${TABLE}.age_balance ;;
  }

  dimension: age_count {
    type: number
    sql: ${TABLE}.age_count ;;
  }

  dimension: age_payment {
    type: number
    sql: ${TABLE}.age_payment ;;
  }

  dimension: age_receipt {
    type: number
    sql: ${TABLE}.age_receipt ;;
  }

  dimension: age_sort {
    type: number
    sql: ${TABLE}.age_sort ;;
  }

  dimension: currency {
    type: string
    sql: ${TABLE}.Currency ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
  measure: sum_age_balance {
    type: sum
    sql: ${age_balance};;
  }
}
