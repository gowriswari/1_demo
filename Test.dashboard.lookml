---
- dashboard: merge_filter_test_
  title: 'Merge filter test '
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: 3XR256fuknFeThLwRWdazS
  elements:
  - name: Test
    title: Test
    merged_queries:
    - model: 1_demo
      explore: order_items
      type: table
      fields: [orders.id, orders.status]
      sorts: [orders.id desc]
      limit: 500
      column_limit: 50
      query_timezone: UTC
    - model: 1_demo
      explore: order_items
      type: table
      fields: [order_items.order_id, order_items.count]
      sorts: [order_items.order_id desc]
      limit: 500
      column_limit: 50
      query_timezone: UTC
      join_fields:
      - field_name: order_items.order_id
        source_field_name: orders.id
    type: table
    sorts: [orders.id desc]
    listen:
    - Status: orders.status
    - Status: orders.status
    row: 0
    col: 0
    width: 8
    height: 6
  - title: New Tile
    name: New Tile
    model: 1_demo
    explore: order_items
    type: looker_grid
    fields: [order_items.id, order_items.order_id, order_items.count]
    sorts: [order_items.count desc 0]
    limit: 500
    column_limit: 50
    query_timezone: UTC
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    listen:
      Status: orders.status
    row: 0
    col: 8
    width: 8
    height: 6
  filters:
  - name: Status
    title: Status
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: dropdown_menu
      display: inline
    model: 1_demo
    explore: order_items
    listens_to_filters: []
    field: orders.status
