view: currency_rates {
  sql_table_name: CtcSystem.CurrencyRates ;;

  dimension: exchange_rate {
    type: number
    sql: ${TABLE}.exchangeRate ;;
  }

  dimension: foreign_currency {
    type: string
    sql: ${TABLE}.foreignCurrency ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
