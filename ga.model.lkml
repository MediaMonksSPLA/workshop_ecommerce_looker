connection: "@{GA4_CONNECTION}"

label: "GA4 Sessions - Ecommerce Workshop"

include: "/ga4/views/*.view.lkml"                # include all views in the views/ folder in this project
# include: "/**/*.view.lkml"                 # include all views in this project
include: "/ga4/dashboards/*.dashboard"
include: "/ga4/explores/sessions.explore.lkml"# include a LookML dashboard called my_dashboard

datagroup: ga4_default_datagroup {
  sql_trigger:  SELECT FLOOR(((TIMESTAMP_DIFF(CURRENT_TIMESTAMP(),'1970-01-01 00:00:00',SECOND)) - 60*60*6)/(60*60*24));;
  max_cache_age: "1 hour"
}

persist_with: ga4_default_datagroup

# # Select the views that should be a part of this model,
# # and define the joins that connect them together.
#
# explore: order_items {
#   join: orders {
#     relationship: many_to_one
#     sql_on: ${orders.id} = ${order_items.order_id} ;;
#   }
#
#   join: users {
#     relationship: many_to_one
#     sql_on: ${users.id} = ${orders.user_id} ;;
#   }
# }

############################## model workshop_ecommerce
#connection: "workshop_ecommerce"

# include all the views
#
#include: "/views2/**/*.view.lkml"
#datagroup: workshop_ecommerce_default_datagroup {
#  # sql_trigger: SELECT MAX(id) FROM etl_log;;
#  max_cache_age: "1 hour"
#}
#
#persist_with: workshop_ecommerce_default_datagroup
#
#explore: ecommerce_sales {
#  label: "Ecommerce - CRM & GA4 Data"
#  description: "Ecommerce para capacitacion."
#
#  join: ecommerce_items{
#    type: left_outer
#    relationship: one_to_many
#    sql_on: ${ecommerce_sales.items} = ${ecommerce_items.item_id} ;;
#  }
#
#  join: ecommerce_users {
#    type: left_outer
#    relationship: one_to_many
#    sql_on: ${ecommerce_sales.user_id} = ${ecommerce_users.user_id} ;;
#  }
#
#  join: ecommerce_store {
#    type: left_outer
#    relationship: one_to_many
#    sql_on: ${ecommerce_sales.store_id} = ${ecommerce_store.store_id} ;;
#  }
#
#  join: ga4_ecommerce_users {
#    type: left_outer
#    relationship: one_to_many
#    sql_on: ${ecommerce_sales.user_id} = ${ga4_ecommerce_users.user_id} ;;
#  }
#
#  join: ga4_ecommerce_events {
#    type: left_outer
#    relationship: one_to_many
#    sql_on: ${ecommerce_sales.user_id} = ${ga4_ecommerce_events.user_id} ;;
#  }
#
#}
#
## explore: ecommerce_items {}
#
## explore: ecommerce_users {}
#
## explore: ga4_ecommerce_events {}
#
## explore: ecommerce_store {}
#
## explore: ga4_ecommerce_users {}
#
