view: records {
  sql_table_name: cshstkCash.Records ;;

  dimension: account_no {
    type: string
    sql: ${TABLE}.ReconciliationID ;;
    drill_fields: [cash_record*]
  }

  dimension: active_status {
    type: string
    sql: case ${TABLE}.ActiveStatus when 0 then 'Unmatched' when 1 then 'Matched' end;;
  }

  dimension: match_status {
    type: string
    sql: case ${TABLE}.ActiveStatus when 0 then 'Unmatched' when 1 then 'Matched' end;;
  }

  dimension: amount {
    type: number
    sql: ${TABLE}.Amount ;;
  }

  dimension: amount_signed {
    type: number
    sql:   case ${TABLE}.System when 'Internal' then case ${TABLE}.DrCr when 'C' then ${TABLE}.Amount
            else -${TABLE}.Amount
            end
            when 'our' then case ${TABLE}.DrCr when 'C' then ${TABLE}.Amount
            else -${TABLE}.Amount
            end
            end ;;
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
    sql: abs(${TABLE}.AmountGBP) ;;
  }

  dimension: amount_gbpcurrency {
    type: string
    sql: ${TABLE}.AmountGBPCurrency ;;
  }

  dimension: assigned_to {
    type: string
    sql: isnull(substring(${TABLE}.AssignedTo,charindex('.',${TABLE}.AssignedTo)+1,200),'Unassigned');;
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
    sql: ${TABLE}.Ccy ;;
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
    sql: ${TABLE}.StatementDate ;;
  }

  dimension: original_amount {
    type: number
    sql: ${TABLE}.AmountSignedOriginal ;;
  }

  dimension: original_amount_currency {
    type: string
    sql: ${TABLE}.Ccy ;;
  }

  dimension: our_reference {
    type: string
    sql: ${TABLE}.TransactionRef ;;
  }

  dimension: pk {
    type: string
    sql: ${TABLE}.Pk ;;
    primary_key: yes
  }

  #dimension: post_date {
  #  type: string
  #  sql: ${TABLE}.PostDate ;;
  #}
  dimension_group: post_date {
    type: time
    timeframes: [date, week, month, time]
    convert_tz: no
    sql: ${TABLE}.EntryDate ;;
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
    sql: ${TABLE}.DrCr ;;
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

  dimension: transaction_type {
    type: string
    sql: ${TABLE}.TxnType ;;
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

  dimension: country {
    type: string
    sql: case ${TABLE}.ccy when 'AUD' then 'AUS'
                           when 'CAD' then 'CAN'
                           when 'CHF' then 'CHE'
                           when 'CNY' then 'CHN'
                           when 'CZK' then 'CZE'
                           when 'DKK' then 'CNK'
                           when 'EUR' then 'DEU'
                           when 'GBP' then 'GBR'
                           when 'HKD' then 'HKG'
                           when 'HUF' then 'HUN'
                           when 'ILS' then 'ISR'
                           when 'JPY' then 'JPN'
                           when 'MXN' then 'MEX'
                           when 'NOK' then 'NOR'
                           when 'NZD' then 'NZL'
                           when 'PLN' then 'POL'
                           when 'SEK' then 'SWE'
                           when 'SGD' then 'SGP'
                           when 'TRY' then 'TUR'
                           when 'USD' then 'USA'
                           when 'ZAR' then 'ZAF'
                           else 'FRA'
    end ;;
  }
  dimension: country_name {
    type: string
    sql: case ${TABLE}.ccy when 'AUD' then 'Australia'
                           when 'CAD' then 'Canada'
                           when 'CHF' then 'Switzerland'
                           when 'CNY' then 'China'
                           when 'CZK' then 'Czechia'
                           when 'DKK' then 'Denmark'
                           when 'EUR' then 'Germany'
                           when 'GBP' then 'United Kingdom'
                           when 'HKD' then 'Hong Kong'
                           when 'HUF' then 'Hungary'
                           when 'ILS' then 'Israel'
                           when 'JPY' then 'Japan'
                           when 'MXN' then 'Mexico'
                           when 'NOK' then 'Norway'
                           when 'NZD' then 'New Zealand'
                           when 'PLN' then 'Poland'
                           when 'SEK' then 'Sweden'
                           when 'SGD' then 'Singapore'
                           when 'TRY' then 'Turkey'
                           when 'USD' then 'United States of America'
                           when 'ZAR' then 'South Africa'
                           else 'France'
    end ;;
  }

  measure: count {
    type: count
    drill_fields: [cash_record*]
  }
  measure: count_percent {
    type: percent_of_total
    sql: ${count};;
    drill_fields: [cash_record*]
  }
  measure: sum_amount {
    type: sum
    sql: ${original_amount};;
    value_format: "#,##0.00"
    drill_fields: [cash_record*]
  }
  measure: sum_amount_signed {
    type: sum
    sql: ${amount_signed};;
    value_format_name: decimal_2
    drill_fields: [cash_record*]
    html: {% if records.sum_amount_signed._value < 0 %}
                <font color="#df5555">{{ rendered_value }}</font>
          {% else %}
                <font color="#000000">{{ rendered_value }}</font>
          {% endif %} ;;
  }
  measure: average_amount {
    type: average
    sql: ${original_amount};;
    drill_fields: [cash_record*]
  }
  measure: sum_amount_gbp {
    type: sum
    sql: ${amount_gbp};;
    value_format: "#,##0.00"
    drill_fields: [cash_record*]
  }
  measure: count_matched {
    type: sum
    sql: ${TABLE}.ActiveStatus;;
    drill_fields: [cash_record*]
  }

  set: cash_record {
    fields: [
      account_no,
      system,
      currency,
      original_amount,
      sign,
      post_date_time,
      value_date,
      our_reference,
      reference1,
      reference2,
      reference3
    ]
  }

}