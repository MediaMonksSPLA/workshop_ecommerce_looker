connection: "workshop_ecommerce"

# include all the views
include: "/views/**/*.view.lkml"

datagroup: workshop_ecommerce_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: workshop_ecommerce_default_datagroup

explore: ecommerce_items {}

explore: ecommerce_users {}

explore: ga4_ecommerce_events {}

explore: ecommerce_sales {}

explore: ecommerce_store {}

explore: ga4_ecommerce_users {}
