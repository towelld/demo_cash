view: groups {
  sql_table_name: DemoCash.Groups ;;

  dimension: active_status {
    type: number
    sql: ${TABLE}.ActiveStatus ;;
  }

  dimension: assigned_to {
    type: string
    sql: ${TABLE}.AssignedTo ;;
  }

  dimension: confidence {
    type: string
    sql: ${TABLE}.Confidence ;;
  }

  #dimension: date_time_stamp {
  #  type: string
  #  sql: ${TABLE}.DateTimeStamp ;;
  #}
  dimension_group: date_time_stamp {
    type: time
    timeframes: [time, date, week, month]
    convert_tz: no
    sql: ${TABLE}.DateTimeStamp ;;
  }

  dimension: do_not_purge_before {
    type: string
    sql: ${TABLE}.DoNotPurgeBefore ;;
  }

  dimension: group_name {
    type: string
    sql: ${TABLE}.GroupName ;;
  }

  dimension: is_same_account_no {
    type: string
    sql: ${TABLE}.isSameAccountNo ;;
  }

  dimension: is_same_currency {
    type: string
    sql: ${TABLE}.isSameCurrency ;;
  }

  dimension: is_same_our_reference {
    type: string
    sql: ${TABLE}.isSameOurReference ;;
  }

  dimension: is_same_post_date {
    type: string
    sql: ${TABLE}.isSamePostDate ;;
  }

  dimension: is_same_value_date {
    type: string
    sql: ${TABLE}.isSameValueDate ;;
  }

  dimension: match_name {
    type: string
    sql: ${TABLE}.MatchName ;;
  }

  dimension: match_status {
    type: number
    sql: ${TABLE}.MatchStatus ;;
  }

  dimension: net_match_amount {
    type: number
    sql: ${TABLE}.NetMatchAmount ;;
  }

  dimension: net_match_amount_currency {
    type: string
    sql: ${TABLE}.NetMatchAmountCurrency ;;
  }

  dimension: net_match_amount_gbp {
    type: number
    sql: ${TABLE}.NetMatchAmountGBP ;;
  }

  dimension: net_match_amount_gbpcurrency {
    type: string
    sql: ${TABLE}.NetMatchAmountGBPCurrency ;;
  }

  dimension: net_match_amount_usd {
    type: number
    sql: ${TABLE}.NetMatchAmountUSD ;;
  }

  dimension: net_match_amount_usdcurrency {
    type: string
    sql: ${TABLE}.NetMatchAmountUSDCurrency ;;
  }

  dimension: pk {
    type: string
    sql: ${TABLE}.Pk ;;
  }

  dimension: rag {
    type: number
    sql: ${TABLE}.RAG ;;
  }

  dimension: time_stamp_zone_id {
    type: number
    sql: ${TABLE}.TimeStampZoneId ;;
  }

  measure: count {
    type: count
    drill_fields: [group_name, match_name]
  }
  measure: start {
    type: min
    sql: ${TABLE}.DateTimeStamp ;;
  }
  measure: end {
    type: max
    sql: ${TABLE}.DateTimeStamp ;;
  }
}
