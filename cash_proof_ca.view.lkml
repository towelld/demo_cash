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
    html: <p align="right">{{ rendered_value }}</p> ;;
  }

  dimension: net_check {
    type: string
    sql: ${TABLE}.net_check ;;
    html: {% if cash_proof_ca.net_check._value == "TRUE" %}
                <p align="left"><img src="http://localhost:9999/images/clareti/icon_tick.png"/></p>
          {% elsif cash_proof_ca.net_check._value == "FALSE" %}
                <p align="left"><img src="http://localhost:9999/images/clareti/icon_cross.png"/></p>
          {% else %}
                <p align="right">{{ rendered_value }}</p>
          {% endif %} ;;
  }

  dimension: ours {
    type: string
    sql: ${TABLE}.ours ;;
    html: <p align="right">{{ rendered_value }}</p> ;;
  }

  dimension: ours_count {
    type: string
    sql: ${TABLE}.ours_count ;;
    html: {% if cash_proof_ca.ours_count._value == "TRUE" %}
                  <p align="left"><img src="http://localhost:9999/images/clareti/icon_tick.png"/></p>
          {% elsif cash_proof_ca.ours_count._value == "FALSE" %}
                  <p align="left"><img src="http://localhost:9999/images/clareti/icon_cross.png"/></p>
          {% else %}
                  <p align="right">{{ rendered_value }}</p>
          {% endif %} ;;
  }

  dimension: sortorder {
    type: number
    sql: ${TABLE}.sortorder ;;
  }

  dimension: theirs {
    type: string
    sql: ${TABLE}.theirs ;;
    html: <p align="right">{{ rendered_value }}</p> ;;
  }

  dimension: theirs_count {
    type: string
    sql: ${TABLE}.theirs_count ;;
    html: {% if cash_proof_ca.theirs_count._value == "TRUE" %}
                <p align="left"><img src="http://localhost:9999/images/clareti/icon_tick.png"/></p>
          {% elsif cash_proof_ca.theirs_count._value == "FALSE" %}
                <p align="left"><img src="http://localhost:9999/images/clareti/icon_cross.png"/></p>
          {% else %}
                <p align="right">{{ rendered_value }}</p>
          {% endif %} ;;
  }

  measure: count {
    type: count
    drill_fields: []
    html: <p align="right">{{ rendered_value }}</p> ;;
  }
}
