view: bcbshours {
  sql_table_name: DemoCash.BCBSHours ;;

  dimension: thehour {
    type: string
    sql: ${TABLE}.thehour ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
