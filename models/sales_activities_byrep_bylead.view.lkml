view: sales_activities_byrep_bylead {
  sql_table_name: "MASTERDATA"."SALES_ACTIVITIES_BYREP_BYLEAD"
    ;;

  dimension_group: l_trunc {
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
    sql: ${TABLE}."L_TRUNC_DATE" ;;
  }

  dimension: leads {
    type: number
    sql: ${TABLE}."LEADS" ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}."NAME" ;;
  }

  dimension: ratio {
    type: number
    sql: ${TABLE}."RATIO" ;;
  }

  dimension_group: t_trunc {
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
    sql: ${TABLE}."T_TRUNC_DATE" ;;
  }

  dimension: tasks {
    type: number
    sql: ${TABLE}."TASKS" ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}."TITLE" ;;
  }

  measure: count {
    type: count
    drill_fields: [name]
  }
}
