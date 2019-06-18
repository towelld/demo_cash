view: bcbs248 {
  sql_table_name: DemoCashStmt.BCBS248 ;;

  dimension: currency {
    type: string
    sql: ${TABLE}.currency ;;
  }

  dimension: daily_neg_1 {
    type: number
    sql: ${TABLE}.daily_neg_1 ;;
  }

  dimension: daily_neg_2 {
    type: number
    sql: ${TABLE}.daily_neg_2 ;;
  }

  dimension: daily_neg_3 {
    type: number
    sql: ${TABLE}.daily_neg_3 ;;
  }

  dimension: daily_neg_avg {
    type: number
    sql: ${TABLE}.daily_neg_avg ;;
  }

  dimension: daily_pos_1 {
    type: number
    sql: ${TABLE}.daily_pos_1 ;;
  }

  dimension: daily_pos_2 {
    type: number
    sql: ${TABLE}.daily_pos_2 ;;
  }

  dimension: daily_pos_3 {
    type: number
    sql: ${TABLE}.daily_pos_3 ;;
  }

  dimension: daily_pos_avg {
    type: number
    sql: ${TABLE}.daily_pos_avg ;;
  }

  dimension: gross_received_1 {
    type: number
    sql: ${TABLE}.gross_received_1 ;;
  }

  dimension: gross_received_2 {
    type: number
    sql: ${TABLE}.gross_received_2 ;;
  }

  dimension: gross_received_3 {
    type: number
    sql: ${TABLE}.gross_received_3 ;;
  }

  dimension: gross_received_avg {
    type: number
    sql: ${TABLE}.gross_received_avg ;;
  }

  dimension: gross_sent_1 {
    type: number
    sql: ${TABLE}.gross_sent_1 ;;
  }

  dimension: gross_sent_2 {
    type: number
    sql: ${TABLE}.gross_sent_2 ;;
  }

  dimension: gross_sent_3 {
    type: number
    sql: ${TABLE}.gross_sent_3 ;;
  }

  dimension: gross_sent_avg {
    type: number
    sql: ${TABLE}.gross_sent_avg ;;
  }

  dimension: liquidity_1_1 {
    type: number
    sql: ${TABLE}.liquidity_1_1 ;;
  }

  dimension: liquidity_1_2 {
    type: number
    sql: ${TABLE}.liquidity_1_2 ;;
  }

  dimension: liquidity_1_3 {
    type: number
    sql: ${TABLE}.liquidity_1_3 ;;
  }

  dimension: liquidity_1_avg {
    type: number
    sql: ${TABLE}.liquidity_1_avg ;;
  }

  dimension: liquidity_1_tot {
    type: number
    sql: ${TABLE}.liquidity_1_tot ;;
  }

  dimension: liquidity_2_1 {
    type: number
    sql: ${TABLE}.liquidity_2_1 ;;
  }

  dimension: liquidity_2_2 {
    type: number
    sql: ${TABLE}.liquidity_2_2 ;;
  }

  dimension: liquidity_2_3 {
    type: number
    sql: ${TABLE}.liquidity_2_3 ;;
  }

  dimension: liquidity_2_avg {
    type: number
    sql: ${TABLE}.liquidity_2_avg ;;
  }

  dimension: liquidity_2_tot {
    type: number
    sql: ${TABLE}.liquidity_2_tot ;;
  }

  dimension: liquidity_3_1 {
    type: number
    sql: ${TABLE}.liquidity_3_1 ;;
  }

  dimension: liquidity_3_2 {
    type: number
    sql: ${TABLE}.liquidity_3_2 ;;
  }

  dimension: liquidity_3_3 {
    type: number
    sql: ${TABLE}.liquidity_3_3 ;;
  }

  dimension: liquidity_3_avg {
    type: number
    sql: ${TABLE}.liquidity_3_avg ;;
  }

  dimension: liquidity_3_tot {
    type: number
    sql: ${TABLE}.liquidity_3_tot ;;
  }

  dimension: liquidity_4_1 {
    type: number
    sql: ${TABLE}.liquidity_4_1 ;;
  }

  dimension: liquidity_4_2 {
    type: number
    sql: ${TABLE}.liquidity_4_2 ;;
  }

  dimension: liquidity_4_3 {
    type: number
    sql: ${TABLE}.liquidity_4_3 ;;
  }

  dimension: liquidity_4_avg {
    type: number
    sql: ${TABLE}.liquidity_4_avg ;;
  }

  dimension: liquidity_5_1 {
    type: number
    sql: ${TABLE}.liquidity_5_1 ;;
  }

  dimension: liquidity_5_2 {
    type: number
    sql: ${TABLE}.liquidity_5_2 ;;
  }

  dimension: liquidity_5_3 {
    type: number
    sql: ${TABLE}.liquidity_5_3 ;;
  }

  dimension: liquidity_5_avg {
    type: number
    sql: ${TABLE}.liquidity_5_avg ;;
  }

  dimension: liquidity_5a_1 {
    type: number
    sql: ${TABLE}.liquidity_5a_1 ;;
  }

  dimension: liquidity_5a_2 {
    type: number
    sql: ${TABLE}.liquidity_5a_2 ;;
  }

  dimension: liquidity_5a_3 {
    type: number
    sql: ${TABLE}.liquidity_5a_3 ;;
  }

  dimension: liquidity_5a_avg {
    type: number
    sql: ${TABLE}.liquidity_5a_avg ;;
  }

  dimension: liquidity_5b_1 {
    type: number
    sql: ${TABLE}.liquidity_5b_1 ;;
  }

  dimension: liquidity_5b_2 {
    type: number
    sql: ${TABLE}.liquidity_5b_2 ;;
  }

  dimension: liquidity_5b_3 {
    type: number
    sql: ${TABLE}.liquidity_5b_3 ;;
  }

  dimension: liquidity_5b_avg {
    type: number
    sql: ${TABLE}.liquidity_5b_avg ;;
  }

  dimension: liquidity_6_1 {
    type: number
    sql: ${TABLE}.liquidity_6_1 ;;
  }

  dimension: liquidity_6_2 {
    type: number
    sql: ${TABLE}.liquidity_6_2 ;;
  }

  dimension: liquidity_6_3 {
    type: number
    sql: ${TABLE}.liquidity_6_3 ;;
  }

  dimension: liquidity_6_avg {
    type: number
    sql: ${TABLE}.liquidity_6_avg ;;
  }

  dimension: liquidity_7_1 {
    type: number
    sql: ${TABLE}.liquidity_7_1 ;;
  }

  dimension: liquidity_7_2 {
    type: number
    sql: ${TABLE}.liquidity_7_2 ;;
  }

  dimension: liquidity_7_3 {
    type: number
    sql: ${TABLE}.liquidity_7_3 ;;
  }

  dimension: liquidity_7_avg {
    type: number
    sql: ${TABLE}.liquidity_7_avg ;;
  }

  dimension: liquidity_avg_tot {
    type: number
    sql: ${TABLE}.liquidity_avg_tot ;;
  }

  dimension: payment_system {
    type: string
    sql: ${TABLE}.payment_system ;;
  }

  dimension: post_date {
    type: string
    sql: ${TABLE}.post_date ;;
  }

  dimension: reporting_month {
    type: string
    sql: ${TABLE}.reporting_month ;;
  }

  dimension: throughput_0800 {
    type: number
    sql: ${TABLE}.throughput_0800 ;;
  }

  dimension: throughput_0900 {
    type: number
    sql: ${TABLE}.throughput_0900 ;;
  }

  dimension: throughput_1000 {
    type: number
    sql: ${TABLE}.throughput_1000 ;;
  }

  dimension: throughput_1100 {
    type: number
    sql: ${TABLE}.throughput_1100 ;;
  }

  dimension: throughput_1200 {
    type: number
    sql: ${TABLE}.throughput_1200 ;;
  }

  dimension: throughput_1300 {
    type: number
    sql: ${TABLE}.throughput_1300 ;;
  }

  dimension: throughput_1400 {
    type: number
    sql: ${TABLE}.throughput_1400 ;;
  }

  dimension: throughput_1500 {
    type: number
    sql: ${TABLE}.throughput_1500 ;;
  }

  dimension: throughput_1600 {
    type: number
    sql: ${TABLE}.throughput_1600 ;;
  }

  dimension: throughput_1700 {
    type: number
    sql: ${TABLE}.throughput_1700 ;;
  }

  dimension: throughput_1800 {
    type: number
    sql: ${TABLE}.throughput_1800 ;;
  }

  dimension: total_time_1 {
    type: number
    sql: ${TABLE}.total_time_1 ;;
  }

  dimension: total_time_2 {
    type: number
    sql: ${TABLE}.total_time_2 ;;
  }

  dimension: total_time_3 {
    type: number
    sql: ${TABLE}.total_time_3 ;;
  }

  dimension: total_time_avg {
    type: number
    sql: ${TABLE}.total_time_avg ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
