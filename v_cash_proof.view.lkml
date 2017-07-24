view: v_cash_proof {
  sql_table_name: dbo.v_cash_proof ;;

  dimension: account_no {
    type: string
    sql: ${TABLE}.AccountNo ;;
  }

  dimension: currency {
    type: string
    sql: ${TABLE}.Currency ;;
  }

  dimension: lbl_bank {
    type: string
    sql: ${TABLE}.lbl_bank ;;
    html: <p align="right">{{ rendered_value }}</p> ;;
  }

  dimension: lbl_close_balance {
    type: string
    sql: ${TABLE}.lbl_close_balance ;;
    html: <p align="left">{{ rendered_value }}</p> ;;
  }

  dimension: lbl_close_date {
    type: string
    sql: ${TABLE}.lbl_close_date ;;
    html: <p align="left">{{ rendered_value }}</p> ;;
  }

  dimension: lbl_credits {
    type: string
    sql: ${TABLE}.lbl_credits ;;
    html: <p align="left">{{ rendered_value }}</p> ;;
  }

  dimension: lbl_debits {
    type: string
    sql: ${TABLE}.lbl_debits ;;
    html: <p align="left">{{ rendered_value }}</p> ;;
  }

  dimension: lbl_difference {
    type: string
    sql: ${TABLE}.lbl_difference ;;
    html: <p align="left">{{ rendered_value }}</p> ;;
  }

  dimension: lbl_net {
    type: string
    sql: ${TABLE}.lbl_net ;;
    html: <p align="right">{{ rendered_value }}</p> ;;
  }

  dimension: lbl_open_balance {
    type: string
    sql: ${TABLE}.lbl_open_balance ;;
    html: <p align="left">{{ rendered_value }}</p> ;;
  }

  dimension: lbl_open_date {
    type: string
    sql: ${TABLE}.lbl_open_date ;;
    html: <p align="left">{{ rendered_value }}</p> ;;
  }

  dimension: lbl_open_plus_transactions {
    type: string
    sql: ${TABLE}.lbl_open_plus_transactions ;;
    html: <p align="left">{{ rendered_value }}</p> ;;
  }

  dimension: lbl_ours {
    type: string
    sql: ${TABLE}.lbl_ours ;;
    html: <p align="right">{{ rendered_value }}</p> ;;
  }

  dimension: lbl_previous_close_balance {
    type: string
    sql: ${TABLE}.lbl_previous_close_balance ;;
    html: <p align="left">{{ rendered_value }}</p> ;;
  }

  dimension: lbl_previous_close_date {
    type: string
    sql: ${TABLE}.lbl_previous_close_date ;;
    html: <p align="left">{{ rendered_value }}</p> ;;
  }

  dimension: lbl_statement_transactions {
    type: string
    sql: ${TABLE}.lbl_statement_transactions ;;
    html: <p align="left">{{ rendered_value }}</p> ;;
  }

  dimension: lbl_unmatched_transactions {
    type: string
    sql: ${TABLE}.lbl_unmatched_transactions ;;
    html: <p align="left">{{ rendered_value }}</p> ;;
  }

  dimension: lbl_write_off_adjustments {
    type: string
    sql: ${TABLE}.lbl_write_off_adjustments ;;
    html: <p align="left">{{ rendered_value }}</p> ;;
  }

  dimension: ldgr_current_close_bal {
    type: number
    sql: ${TABLE}.LdgrCurrentCloseBal ;;
    html: <p align="right">{{ rendered_value }}</p> ;;
    value_format_name: decimal_2
  }

  dimension_group: ldgr_current_close_bal_date {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    sql: ${TABLE}.LdgrCurrentCloseBalDate ;;
    html: <p align="right">{{ rendered_value }}</p> ;;
  }

  dimension: ldgr_current_day_count_credits {
    type: number
    sql: ${TABLE}.LdgrCurrentDayCountCredits ;;
    value_format_name: decimal_2
    html: <p align="right">{{ rendered_value }}</p> ;;
  }

  dimension: ldgr_current_day_count_debits {
    type: number
    sql: ${TABLE}.LdgrCurrentDayCountDebits ;;
    value_format_name: decimal_2
    html: <p align="right">{{ rendered_value }}</p> ;;
  }

  dimension: ldgr_current_day_total_credits {
    type: number
    sql: ${TABLE}.LdgrCurrentDayTotalCredits ;;
    value_format_name: decimal_2
    html: <p align="right">{{ rendered_value }}</p> ;;
  }

  dimension: ldgr_current_day_total_debits {
    type: number
    sql: ${TABLE}.LdgrCurrentDayTotalDebits ;;
    value_format_name: decimal_2
    html: <p align="right">{{ rendered_value }}</p> ;;
  }

  dimension: ldgr_current_open_bal {
    type: number
    sql: ${TABLE}.LdgrCurrentOpenBal ;;
    value_format_name: decimal_2
    html: {% if ldgr_current_open_bal.value = ldgr_previous_close_bal
                 <p align="right"><font color="#EAA153">{{ rendered_value }}</font></p>
          %} ;;
  }

  dimension_group: ldgr_current_open_bal_date {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    sql: ${TABLE}.LdgrCurrentOpenBalDate ;;
    html: <p align="right">{{ rendered_value }}</p> ;;
  }

  dimension: ldgr_previous_close_bal {
    type: number
    sql: ${TABLE}.LdgrPreviousCloseBal ;;
    value_format: "#,##0.00"
    html: <p align="right">{{ rendered_value }}</p> ;;
  }

  dimension_group: ldgr_previous_close_bal_date {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    sql: ${TABLE}.LdgrPreviousCloseBalDate ;;
    html: <p align="right">{{ rendered_value }}</p> ;;
  }

  dimension: ldgr_previous_open_bal {
    type: number
    sql: ${TABLE}.LdgrPreviousOpenBal ;;
    value_format_name: decimal_2
    html: <p align="right">{{ rendered_value }}</p> ;;
  }

  dimension_group: ldgr_previous_open_bal_date {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    sql: ${TABLE}.LdgrPreviousOpenBalDate ;;
    html: <p align="right">{{ rendered_value }}</p> ;;
  }

  dimension: ldgr_unmatched_count_credits {
    type: number
    sql: ${TABLE}.LdgrUnmatchedCountCredits ;;
    value_format_name: decimal_2
    html: <p align="right">{{ rendered_value }}</p> ;;
  }

  dimension: ldgr_unmatched_count_debits {
    type: number
    sql: ${TABLE}.LdgrUnmatchedCountDebits ;;
    value_format_name: decimal_2
    html: <p align="right">{{ rendered_value }}</p> ;;
  }

  dimension: ldgr_unmatched_total_credits {
    type: number
    sql: ${TABLE}.LdgrUnmatchedTotalCredits ;;
    value_format_name: decimal_2
    html: <p align="right">{{ rendered_value }}</p> ;;
  }

  dimension: ldgr_unmatched_total_debits {
    type: number
    sql: ${TABLE}.LdgrUnmatchedTotalDebits ;;
    value_format_name: decimal_2
    html: <p align="right">{{ rendered_value }}</p> ;;
  }

  dimension: stmt_current_close_bal {
    type: number
    sql: ${TABLE}.StmtCurrentCloseBal ;;
    value_format_name: decimal_2
    html: <p align="right">{{ rendered_value }}</p> ;;
  }

  dimension_group: stmt_current_close_bal_date {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    sql: ${TABLE}.StmtCurrentCloseBalDate ;;
    html: <p align="right">{{ rendered_value }}</p> ;;
  }

  dimension: stmt_current_day_count_credits {
    type: number
    sql: ${TABLE}.StmtCurrentDayCountCredits ;;
    value_format_name: decimal_2
    html: <p align="right">{{ rendered_value }}</p> ;;
  }

  dimension: stmt_current_day_count_debits {
    type: number
    sql: ${TABLE}.StmtCurrentDayCountDebits ;;
    value_format_name: decimal_2
    html: <p align="right">{{ rendered_value }}</p> ;;
  }

  dimension: stmt_current_day_total_credits {
    type: number
    sql: ${TABLE}.StmtCurrentDayTotalCredits ;;
    value_format_name: decimal_2
    html: <p align="right">{{ rendered_value }}</p> ;;
  }

  dimension: stmt_current_day_total_debits {
    type: number
    sql: ${TABLE}.StmtCurrentDayTotalDebits ;;
    value_format_name: decimal_2
    html: <p align="right">{{ rendered_value }}</p> ;;
  }

  dimension: stmt_current_open_bal {
    type: number
    sql: ${TABLE}.StmtCurrentOpenBal ;;
    value_format_name: decimal_2
    html: <p align="right">{{ rendered_value }}</p> ;;
  }

  dimension_group: stmt_current_open_bal_date {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    sql: ${TABLE}.StmtCurrentOpenBalDate ;;
    html: <p align="right">{{ rendered_value }}</p> ;;
  }

  dimension: stmt_previous_close_bal {
    type: number
    sql: ${TABLE}.StmtPreviousCloseBal ;;
    value_format_name: decimal_2
    html: <p align="right">{{ rendered_value }}</p> ;;
  }

  dimension_group: stmt_previous_close_bal_date {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    sql: ${TABLE}.StmtPreviousCloseBalDate ;;
    html: <p align="right">{{ rendered_value }}</p> ;;
  }

  dimension: stmt_previous_open_bal {
    type: number
    sql: ${TABLE}.StmtPreviousOpenBal ;;
    value_format_name: decimal_2
    html: <p align="right">{{ rendered_value }}</p> ;;
  }

  dimension_group: stmt_previous_open_bal_date {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    sql: ${TABLE}.StmtPreviousOpenBalDate ;;
    html: <p align="right">{{ rendered_value }}</p> ;;
  }

  dimension: stmt_unmatched_count_credits {
    type: number
    sql: ${TABLE}.StmtUnmatchedCountCredits ;;
    value_format_name: decimal_2
    html: <p align="right">{{ rendered_value }}</p> ;;
  }

  dimension: stmt_unmatched_count_debits {
    type: number
    sql: ${TABLE}.StmtUnmatchedCountDebits ;;
    value_format_name: decimal_2
    html: <p align="right">{{ rendered_value }}</p> ;;
  }

  dimension: stmt_unmatched_total_credits {
    type: number
    sql: ${TABLE}.StmtUnmatchedTotalCredits ;;
    value_format_name: decimal_2
    html: <p align="right">{{ rendered_value }}</p> ;;
  }

  dimension: stmt_unmatched_total_debits {
    type: number
    sql: ${TABLE}.StmtUnmatchedTotalDebits ;;
    value_format_name: decimal_2
    html: <p align="right">{{ rendered_value }}</p> ;;
  }

  dimension: write_off_adjustment {
    type: number
    sql: ${TABLE}.WriteOffAdjustment ;;
    value_format_name: decimal_2
    html: <p align="right">{{ rendered_value }}</p> ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
