view: sales_queuecallsperday {
  sql_table_name: "MASTERDATA"."SALES_QUEUECALLSPERDAY"
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

  dimension: number_of_calls {
    type: number
    sql: ${TABLE}."NUMBER_OF_CALLS" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
