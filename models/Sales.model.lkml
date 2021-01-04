connection: "master_data"

include: "*.view"
explore: sales_ringdna_callduration {}
explore: sales_activity_efficiency {}
explore: sales_activities_byrep_bylead {}
explore: sales_user_openclosedtasks {}
explore: sales_callsovertime {}

datagroup: sales_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: sales_default_datagroup
