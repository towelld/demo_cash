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

  dimension: ldgr_current_close_bal {
    type: number
    sql: ${TABLE}.LdgrCurrentCloseBal ;;
  }

  dimension_group: ldgr_current_close_bal {
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
  }

  dimension: ldgr_current_day_count_credits {
    type: number
    sql: ${TABLE}.LdgrCurrentDayCountCredits ;;
  }

  dimension: ldgr_current_day_count_debits {
    type: number
    sql: ${TABLE}.LdgrCurrentDayCountDebits ;;
  }

  dimension: ldgr_current_day_total_credits {
    type: number
    sql: ${TABLE}.LdgrCurrentDayTotalCredits ;;
  }

  dimension: ldgr_current_day_total_debits {
    type: number
    sql: ${TABLE}.LdgrCurrentDayTotalDebits ;;
  }

  dimension: ldgr_current_open_bal {
    type: number
    sql: ${TABLE}.LdgrCurrentOpenBal ;;
  }

  dimension_group: ldgr_current_open_bal {
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
  }

  dimension: ldgr_previous_close_bal {
    type: number
    sql: ${TABLE}.LdgrPreviousCloseBal ;;
  }

  dimension_group: ldgr_previous_close_bal {
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
  }

  dimension: ldgr_previous_open_bal {
    type: number
    sql: ${TABLE}.LdgrPreviousOpenBal ;;
  }

  dimension_group: ldgr_previous_open_bal {
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
  }

  dimension: ldgr_unmatched_count_credits {
    type: number
    sql: ${TABLE}.LdgrUnmatchedCountCredits ;;
  }

  dimension: ldgr_unmatched_count_debits {
    type: number
    sql: ${TABLE}.LdgrUnmatchedCountDebits ;;
  }

  dimension: ldgr_unmatched_total_credits {
    type: number
    sql: ${TABLE}.LdgrUnmatchedTotalCredits ;;
  }

  dimension: ldgr_unmatched_total_debits {
    type: number
    sql: ${TABLE}.LdgrUnmatchedTotalDebits ;;
  }

  dimension: stmt_current_close_bal {
    type: number
    sql: ${TABLE}.StmtCurrentCloseBal ;;
  }

  dimension_group: stmt_current_close_bal {
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
  }

  dimension: stmt_current_day_count_credits {
    type: number
    sql: ${TABLE}.StmtCurrentDayCountCredits ;;
  }

  dimension: stmt_current_day_count_debits {
    type: number
    sql: ${TABLE}.StmtCurrentDayCountDebits ;;
  }

  dimension: stmt_current_day_total_credits {
    type: number
    sql: ${TABLE}.StmtCurrentDayTotalCredits ;;
  }

  dimension: stmt_current_day_total_debits {
    type: number
    sql: ${TABLE}.StmtCurrentDayTotalDebits ;;
  }

  dimension: stmt_current_open_bal {
    type: number
    sql: ${TABLE}.StmtCurrentOpenBal ;;
  }

  dimension_group: stmt_current_open_bal {
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
  }

  dimension: stmt_previous_close_bal {
    type: number
    sql: ${TABLE}.StmtPreviousCloseBal ;;
  }

  dimension_group: stmt_previous_close_bal {
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
  }

  dimension: stmt_previous_open_bal {
    type: number
    sql: ${TABLE}.StmtPreviousOpenBal ;;
  }

  dimension_group: stmt_previous_open_bal {
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
  }

  dimension: stmt_unmatched_count_credits {
    type: number
    sql: ${TABLE}.StmtUnmatchedCountCredits ;;
  }

  dimension: stmt_unmatched_count_debits {
    type: number
    sql: ${TABLE}.StmtUnmatchedCountDebits ;;
  }

  dimension: stmt_unmatched_total_credits {
    type: number
    sql: ${TABLE}.StmtUnmatchedTotalCredits ;;
  }

  dimension: stmt_unmatched_total_debits {
    type: number
    sql: ${TABLE}.StmtUnmatchedTotalDebits ;;
  }

  dimension: write_off_adjustment {
    type: number
    sql: ${TABLE}.WriteOffAdjustment ;;
  }

  dimension: lbl_ours {
    type: string
    sql: case when 1=1 then 'Ours' end ;;
  }
  dimension: lbl_prev_close_date {
    type: string
    sql: case when 1=1 then 'Previous Clsoe Date' end ;;
    }



  measure: count {
    type: count
    drill_fields: []
  }




}
