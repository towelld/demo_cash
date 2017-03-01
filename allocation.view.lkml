view: allocation {
  sql_table_name: DemoCash.Allocation ;;

  dimension: allocation_record_pk {
    type: string
    sql: ${TABLE}.AllocationRecordPk ;;
  }

  dimension: amount_allocated {
    type: number
    sql: ${TABLE}.Amount_Allocated ;;
  }

  dimension: amount_allocated_currency {
    type: string
    sql: ${TABLE}.Amount_AllocatedCurrency ;;
  }

  dimension: group_pk {
    type: string
    sql: ${TABLE}.GroupPk ;;
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
