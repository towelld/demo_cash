view: exceptions {
  sql_table_name: DemoCash.Exceptions ;;

  dimension: active_status {
    type: number
    sql: ${TABLE}.ActiveStatus ;;
  }

  dimension: assigned_to {
    type: string
    sql: ${TABLE}.AssignedTo ;;
  }

  dimension: closed {
    type: string
    sql: ${TABLE}.Closed ;;
  }

  dimension: closed_zone_id {
    type: number
    sql: ${TABLE}.ClosedZoneId ;;
  }

  dimension: do_not_purge_before {
    type: string
    sql: ${TABLE}.DoNotPurgeBefore ;;
  }

  dimension: exception_reason_code {
    type: string
    sql: ${TABLE}.ExceptionReasonCode ;;
  }

  dimension: exception_resolution_code {
    type: string
    sql: ${TABLE}.ExceptionResolutionCode ;;
  }

  dimension: exception_status {
    type: number
    sql: ${TABLE}.ExceptionStatus ;;
  }

  dimension: exception_style {
    type: number
    sql: ${TABLE}.ExceptionStyle ;;
  }

  dimension: impact {
    type: number
    sql: ${TABLE}.Impact ;;
  }

  dimension: impact_currency {
    type: string
    sql: ${TABLE}.ImpactCurrency ;;
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

  dimension: name {
    type: string
    sql: ${TABLE}.Name ;;
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

  dimension: num_records {
    type: number
    sql: ${TABLE}.numRecords ;;
  }

  dimension: pk {
    type: string
    sql: ${TABLE}.Pk ;;
  }

  dimension: raised {
    type: string
    sql: ${TABLE}.Raised ;;
  }

  dimension: raised_zone_id {
    type: number
    sql: ${TABLE}.RaisedZoneId ;;
  }

  dimension: reason_code {
    type: number
    sql: ${TABLE}.ReasonCode ;;
  }

  dimension: resolution_code {
    type: number
    sql: ${TABLE}.ResolutionCode ;;
  }

  dimension: resolved {
    type: string
    sql: ${TABLE}.Resolved ;;
  }

  dimension: resolved_zone_id {
    type: number
    sql: ${TABLE}.ResolvedZoneId ;;
  }

  dimension: version {
    type: number
    sql: ${TABLE}.Version ;;
  }

  dimension: account_no {
    type:  string
    sql: ${records.account_no} ;;
  }

  dimension: currency {
    type:  string
    sql: ${records.currency} ;;
  }

  measure: count {
    type: count
    drill_fields: [records*]
  }

  set: records {
    fields: [records.account_no,records.currency,records.original_amount]
  }
}
