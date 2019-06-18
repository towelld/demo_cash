view: exception_record_link {
  sql_table_name: DemoCash.ExceptionRecordLink ;;

  dimension: exception_pk {
    type: string
    sql: ${TABLE}.ExceptionPk ;;
  }

  dimension: pk {
    type: string
    sql: ${TABLE}.Pk ;;
    primary_key: yes
  }

  dimension: record_pk {
    type: string
    sql: ${TABLE}.RecordPk ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
