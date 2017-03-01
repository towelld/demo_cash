view: documents {
  sql_table_name: DemoCash.Documents ;;

  dimension: bytes {
    type: string
    sql: ${TABLE}.Bytes ;;
  }

  dimension: pk {
    type: string
    sql: ${TABLE}.Pk ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
