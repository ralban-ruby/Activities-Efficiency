view: sales_ringdna_callduration_vs_numberofcalls {
  sql_table_name: "MASTERDATA"."SALES_RINGDNA_CALLDURATION_VS_NUMBEROFCALLS"
    ;;

  dimension_group: activity {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."ACTIVITY_DATE" ;;
  }

  dimension: call_duration_minutes {
    type: number
    sql: ${TABLE}."CALL_DURATION_MINUTES" ;;
  }

  dimension: call_duration_seconds {
    type: number
    sql: ${TABLE}."CALL_DURATION_SECONDS" ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}."NAME" ;;
  }

  dimension: ringdna_call_direction_c {
    type: string
    sql: ${TABLE}."RINGDNA_CALL_DIRECTION_C" ;;
  }

  dimension: total_calls {
    type: number
    sql: ${TABLE}."TOTAL_CALLS" ;;
  }

  measure: count {
    type: count
    drill_fields: [name]
  }
}
