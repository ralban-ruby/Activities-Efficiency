view: sales_activity_efficiency {
  sql_table_name: "MASTERDATA"."SALES_ACTIVITY_EFFICIENCY"
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

  dimension: agent_name {
    type: string
    sql: ${TABLE}."AGENT_NAME" ;;
  }

  dimension: countopp_sold_date {
    type: number
    sql: ${TABLE}."COUNT(OPP_SOLD_DATE)" ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}."NAME" ;;
  }

  dimension: opp_owner_id {
    type: string
    sql: ${TABLE}."OPP_OWNER_ID" ;;
  }

  dimension_group: opp_sold {
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
    sql: ${TABLE}."OPP_SOLD_DATE" ;;
  }

  dimension: owner_id {
    type: string
    sql: ${TABLE}."OWNER_ID" ;;
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
    drill_fields: [agent_name, name]
  }
}
