view: records {
  sql_table_name: DemoCash.Records ;;

  dimension: account_no {
    type: string
    sql: ${TABLE}.AccountNo ;;
  }

  dimension: active_status {
    type: string
    sql: case ${TABLE}.ActiveStatus when 0 then 'Unmatched' when 1 then 'Matched' end;;
  }

  dimension: amount {
    type: number
    sql: ${TABLE}.Amount ;;
  }

  dimension: amount_allocated {
    type: number
    sql: ${TABLE}.Amount_Allocated ;;
  }

  dimension: amount_allocated_currency {
    type: string
    sql: ${TABLE}.Amount_AllocatedCurrency ;;
  }

  dimension: amount_currency {
    type: string
    sql: ${TABLE}.AmountCurrency ;;
  }

  dimension: amount_gbp {
    type: number
    sql: ${TABLE}.AmountGBP ;;
  }

  dimension: amount_gbpcurrency {
    type: string
    sql: ${TABLE}.AmountGBPCurrency ;;
  }

  dimension: amount_usd {
    type: number
    sql: ${TABLE}.AmountUSD ;;
  }

  dimension: amount_usdcurrency {
    type: string
    sql: ${TABLE}.AmountUSDCurrency ;;
  }

  dimension: assigned_to {
    type: string
    sql: ${TABLE}.AssignedTo ;;
  }

  dimension: business_key {
    type: string
    sql: ${TABLE}.BusinessKey ;;
  }

  dimension: close_balance {
    type: number
    sql: ${TABLE}.CloseBalance ;;
  }

  dimension: close_balance_currency {
    type: string
    sql: ${TABLE}.CloseBalanceCurrency ;;
  }

  dimension: currency {
    type: string
    sql: ${TABLE}.Currency ;;
  }

  dimension: date_time_created {
    type: string
    sql: ${TABLE}.DateTimeCreated ;;
  }

  dimension: destination {
    type: string
    sql: ${TABLE}.Destination ;;
  }

  dimension: do_not_purge_before {
    type: string
    sql: ${TABLE}.DoNotPurgeBefore ;;
  }

  dimension: has_comments {
    type: string
    sql: ${TABLE}.HasComments ;;
  }

  dimension: internal_number {
    type: string
    sql: ${TABLE}.InternalNumber ;;
  }

  dimension: last_action_by {
    type: string
    sql: ${TABLE}.LastActionBy ;;
  }

  dimension: last_action_date {
    type: string
    sql: ${TABLE}.LastActionDate ;;
  }

  dimension: last_action_id {
    type: number
    sql: ${TABLE}.LastActionId ;;
  }

  dimension: last_action_type {
    type: number
    sql: ${TABLE}.LastActionType ;;
  }

  dimension: last_updated {
    type: string
    sql: ${TABLE}.LastUpdated ;;
  }

  dimension: latest_comment {
    type: string
    sql: ${TABLE}.LatestComment ;;
  }

  dimension: open_balance {
    type: number
    sql: ${TABLE}.OpenBalance ;;
  }

  dimension: open_balance_currency {
    type: string
    sql: ${TABLE}.OpenBalanceCurrency ;;
  }

  dimension_group: open {
    type: time
    timeframes: [date, week, month]
    convert_tz: no
    sql: ${TABLE}.OpenDate ;;
  }

  dimension: open_type {
    type: string
    sql: ${TABLE}.OpenType ;;
  }

  dimension: original_amount {
    type: number
    sql: ${TABLE}.Original_Amount ;;
  }

  dimension: original_amount_currency {
    type: string
    sql: ${TABLE}.Original_AmountCurrency ;;
  }

  dimension: our_reference {
    type: string
    sql: ${TABLE}.OurReference ;;
  }

  dimension: pk {
    type: string
    sql: ${TABLE}.Pk ;;
  }

  #dimension: post_date {
  #  type: string
  #  sql: ${TABLE}.PostDate ;;
  #}
  dimension_group: post_date {
    type: time
    timeframes: [date, week, month]
    convert_tz: no
    sql: ${TABLE}.PostDate ;;
  }

  dimension: reason {
    type: string
    sql: ${TABLE}.Reason ;;
  }

  dimension: reference1 {
    type: string
    sql: ${TABLE}.Reference1 ;;
  }

  dimension: reference2 {
    type: string
    sql: ${TABLE}.Reference2 ;;
  }

  dimension: reference3 {
    type: string
    sql: ${TABLE}.Reference3 ;;
  }

  dimension: row_id {
    type: string
    sql: ${TABLE}.RowId ;;
  }

  dimension: sign {
    type: string
    sql: ${TABLE}.Sign ;;
  }

  dimension: statement_id {
    type: string
    sql: ${TABLE}.StatementId ;;
  }

  dimension: statement_seq {
    type: number
    sql: ${TABLE}.StatementSeq ;;
  }

  dimension: system {
    type: string
    sql: ${TABLE}.System ;;
  }

  dimension: terminal {
    type: string
    sql: ${TABLE}.Terminal ;;
  }

  dimension: transaction_code {
    type: string
    sql: ${TABLE}.TransactionCode ;;
  }

  dimension: transaction_status {
    type: number
    sql: ${TABLE}.TransactionStatus ;;
  }

  dimension: ultimate_parent_pk {
    type: string
    sql: ${TABLE}.UltimateParentPk ;;
  }

  dimension_group: value {
    type: time
    timeframes: [date, week, month]
    convert_tz: no
    sql: ${TABLE}.ValueDate ;;
  }

  dimension: vendor_number {
    type: string
    sql: ${TABLE}.VendorNumber ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
  measure: count_percent {
    type: percent_of_total
    sql: ${count};;
  }
  measure: sum_amount {
    type: sum
    sql: ${original_amount};;
  }
  measure: sum_amount_usd {
    type: sum
    sql: ${amount_usd};;
  }
  measure: count_matched {
    type: sum
    sql: ${TABLE}.ActiveStatus;;
  }

}
