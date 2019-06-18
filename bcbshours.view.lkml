view: bcbshours {
  sql_table_name: DemoCashStmt.BCBSHours ;;

  dimension: thehour {
    type: string
    sql: ${TABLE}.thehour ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
