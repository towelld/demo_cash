view: v_cash_proof_ca {
  sql_table_name: dbo.v_cash_proof_ca ;;

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
    html: {% if v_cash_proof_ca.label._value == "Credits" %}
    <p align="center">{{ rendered_value }}</p>
    {% elsif v_cash_proof_ca.label._value == "Debits" %}
    <p align="center">{{ rendered_value }}</p>
    {% else %}
    <p align="left">{{ rendered_value }}</p>
    {% endif %} ;;
  }

  dimension: net {
    type: string
    sql: ${TABLE}.net ;;
    html: <p align="right">{{ rendered_value }}</p> ;;
  }
  dimension: net_check {
    type: string
    sql: ${TABLE}.net_check ;;
    html: {% if v_cash_proof_ca.net_check._value == "TRUE" %}
    <p align="left"><img src="https://localhost:9999/images/clareti/icon_tick.png"></p>
    {% elsif v_cash_proof_ca.net_check._value == "FALSE" %}
    <p align="left"><img src="https://localhost:9999/images/clareti/icon_cross.png"></p>
    {% else %}
    <p align="right">{{ rendered_value }}</p>
    {% endif %} ;;
  }

  dimension: ours {
    type: string
    sql: ${TABLE}.ours ;;
    html: {% if v_cash_proof_ca.label._value == " " and v_cash_proof_ca.ours._value != " " %}
    <p align="right" style="border-top:solid;border-width:1px">{{ rendered_value }}</p>
    {% else %}
    <p align="right">{{ rendered_value }}</p>
    {% endif %} ;;
  }

  dimension: ours_count {
    type: string
    sql: ${TABLE}.ours_count ;;
    html: {% if v_cash_proof_ca.ours_count._value == "TRUE" %}
    <p align="left"><img src="https://localhost:9999/images/clareti/icon_tick.png"></p>
    {% elsif v_cash_proof_ca.net_check._value == "FALSE" %}
    <p align="left"><img src="https://localhost:9999/images/clareti/icon_cross.png"></p>
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
    html: {% if v_cash_proof_ca.label._value == " " and v_cash_proof_ca.theirs._value != " " %}
    <p align="right" style="border-top:solid;border-width:1px">{{ rendered_value }}</p>
    {% else %}
    <p align="right">{{ rendered_value }}</p>
    {% endif %} ;;
  }

  dimension: theirs_count {
    type: string
    sql: ${TABLE}.theirs_count ;;
    html: {% if v_cash_proof_ca.theirs_count._value == "TRUE" %}
    <p align="left"><img src="https://localhost:9999/images/clareti/icon_tick.png"></p>
    {% elsif v_cash_proof_ca.net_check._value == "FALSE" %}
    <p align="left"><img src="https://localhost:9999/images/clareti/icon_cross.png"></p>
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
