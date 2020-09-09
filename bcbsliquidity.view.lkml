view: bcbsliquidity {
  sql_table_name: cshstkCash.BCBSLiquidity ;;

  dimension: currency {
    type: string
    sql: ${TABLE}.currency ;;
  }

  dimension: liquidity_1 {
    type: number
    sql: ${TABLE}.liquidity_1 ;;
  }

  dimension: liquidity_2 {
    type: number
    sql: ${TABLE}.liquidity_2 ;;
  }

  dimension: liquidity_3 {
    type: number
    sql: ${TABLE}.liquidity_3 ;;
  }

  dimension: liquidity_4 {
    type: number
    sql: ${TABLE}.liquidity_4 ;;
  }

  dimension: liquidity_5a {
    type: number
    sql: ${TABLE}.liquidity_5a ;;
  }

  dimension: liquidity_5b {
    type: number
    sql: ${TABLE}.liquidity_5b ;;
  }

  dimension: liquidity_6 {
    type: number
    sql: ${TABLE}.liquidity_6 ;;
  }

  dimension: liquidity_7 {
    type: number
    sql: ${TABLE}.liquidity_7 ;;
  }

  dimension: post_date {
    type: string
    sql: ${TABLE}.post_date ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}