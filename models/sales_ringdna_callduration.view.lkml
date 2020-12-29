view: sales_ringdna_callduration {
  sql_table_name: "MASTERDATA"."SALES_RINGDNA_CALLDURATION"
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

  dimension: agent_id {
    type: string
    sql: ${TABLE}."Agent ID" ;;
  }

  dimension: call_duration_minutes {
    type: number
    sql: ${TABLE}."CALL_DURATION_MINUTES" ;;
  }

  dimension: call_id {
    type: string
    sql: ${TABLE}."Call ID" ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}."NAME" ;;
  }

  dimension: ringdna_call_direction_c {
    type: string
    sql: ${TABLE}."RINGDNA_CALL_DIRECTION_C" ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}."STATUS" ;;
  }

  dimension: task_subtype {
    type: string
    sql: ${TABLE}."TASK_SUBTYPE" ;;
  }

  measure: count {
    type: count
    drill_fields: [name]
  }
}
