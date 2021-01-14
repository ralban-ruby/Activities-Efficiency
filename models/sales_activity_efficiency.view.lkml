view: sales_activity_efficiency {
  sql_table_name: "MASTERDATA"."SALES_ACTIVITY_EFFICIENCY"
    ;;

  dimension_group: activity_month {
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
    sql: ${TABLE}."ACTIVITY_MONTH" ;;
  }

  dimension: agent_name {
    type: string
    sql: ${TABLE}."AGENT_NAME" ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}."NAME" ;;
  }

  dimension: opp_owner_id {
    type: string
    sql: ${TABLE}."OPP_OWNER_ID" ;;
  }

  dimension_group: opp_sold_month {
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
    sql: ${TABLE}."OPP_SOLD_MONTH" ;;
  }

  dimension: owner_id {
    type: string
    sql: ${TABLE}."OWNER_ID" ;;
  }

  dimension: sum_opp {
    type: number
    sql: ${TABLE}."SUM_OPP" ;;
  }

  dimension: tasks {
    type: number
    sql: ${TABLE}."TASKS" ;;
  }

  dimension: tasks_over_oppclosed {
    type: number
    sql: ${TABLE}."TASKS_OVER_OPPCLOSED" ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}."TITLE" ;;
  }

  measure: count {
    type: count
    drill_fields: [agent_name, name]
  }
}
