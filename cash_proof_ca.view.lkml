view: cash_proof_ca {
  sql_table_name: DemoCash.CashProofCA ;;

  dimension: account_no {
    type: string
    sql: ${TABLE}.AccountNo ;;
  }

  dimension: currency {
    type: string
    sql: ${TABLE}.Currency ;;
  }

  dimension: label {
    type: string
    sql: ${TABLE}.label ;;
  }

  dimension: net {
    type: string
    sql: ${TABLE}.net ;;
  }

  dimension: ours {
    type: string
    sql: ${TABLE}.ours ;;
  }

  dimension: ours_count {
    type: string
    sql: ${TABLE}.ours_count ;;
  }

  dimension: sortorder {
    type: number
    sql: ${TABLE}.sortorder ;;
  }

  dimension: theirs {
    type: string
    sql: ${TABLE}.theirs ;;
  }

  dimension: theirs_count {
    type: string
    sql: ${TABLE}.theirs_count ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
