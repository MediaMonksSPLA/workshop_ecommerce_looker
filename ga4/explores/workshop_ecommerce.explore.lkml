connection: "workshop_ecommerce"

# include all the views
include: "/views2/**/*.view.lkml"

datagroup: workshop_ecommerce_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: workshop_ecommerce_default_datagroup

explore: ecommerce_sales {
  label: "Ecommerce - CRM & GA4 Data"
  description: "Ecommerce para capacitacion."

  join: ecommerce_items{
    type: left_outer
    relationship: one_to_many
    sql_on: ${ecommerce_sales.items} = ${ecommerce_items.item_id} ;;
  }

  join: ecommerce_users {
    type: left_outer
    relationship: one_to_many
    sql_on: ${ecommerce_sales.user_id} = ${ecommerce_users.user_id} ;;
  }

  join: ecommerce_store {
    type: left_outer
    relationship: one_to_many
    sql_on: ${ecommerce_sales.store_id} = ${ecommerce_store.store_id} ;;
  }

  join: ga4_ecommerce_users {
    type: left_outer
    relationship: one_to_many
    sql_on: ${ecommerce_sales.user_id} = ${ga4_ecommerce_users.user_id} ;;
  }

  join: ga4_ecommerce_events {
    type: left_outer
    relationship: one_to_many
    sql_on: ${ecommerce_sales.user_id} = ${ga4_ecommerce_events.user_id} ;;
  }

}

# explore: ecommerce_items {}

# explore: ecommerce_users {}

# explore: ga4_ecommerce_events {}

# explore: ecommerce_store {}

# explore: ga4_ecommerce_users {}
