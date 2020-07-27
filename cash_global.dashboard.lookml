- dashboard: cash_global
  title: Cash Global
  layout: static
  width: 1632
  tile_size: 68
  embed_style:
    background_color: "#ffffff"
    show_title: true
    title_color: "#646569"
    show_filters_bar: true
    tile_background_color: "#ffffff"
    tile_text_color: "#646569"

  filters:
  - name: currency
    type: field_filter
    model: demo_cash
    explore: records
    field: records.currency

  elements:
    - name: cash_global_map
      title: Global Cash (GBP)
      type: looker_geo_choropleth
      left: 0
      top: 0
      height: 6
      width: 12
      model: demo_cash
      explore: records
      dimensions: [records.country]
      measures: [records.sum_amount_gbp]
      listen:
        currency: records.currency
      records.system: Internal
      sorts: [records.sum_amount_gbp desc]
      limit: '500'
      column_limit: '50'
      query_timezone: America/Los_Angeles
      map: world
      map_projection: ''
      show_view_names: true
      quantize_colors: true
      stacking: ''
      show_value_labels: false
      label_density: 25
      legend_position: center
      x_axis_gridlines: false
      y_axis_gridlines: true
      limit_displayed_rows: false
      y_axis_combined: true
      show_y_axis_labels: true
      show_y_axis_ticks: true
      y_axis_tick_density: default
      y_axis_tick_density_custom: 5
      show_x_axis_label: true
      show_x_axis_ticks: true
      x_axis_scale: auto
      y_axis_scale_mode: linear
      ordering: none
      show_null_labels: false
      show_totals_labels: false
      show_silhouette: false
      totals_color: "#808080"
      series_types: {}
      colors: ["#92c26e", "#eaa153", "#df5555"]
      empty_color: "#CCCCCC"

    - name: cash_global_pie
      title: Global Percentage (GBP)
      type: looker_pie
      left: 12
      top: 0
      height: 6
      width: 12
      model: demo_cash
      explore: records
      dimensions: [records.country_name]
      measures: [records.sum_amount_gbp]
      listen:
        currency: records.currency
      records.system: Internal
      sorts: [records.country_name asc]
      limit: '500'
      column_limit: '50'
      query_timezone: America/Los_Angeles
      value_labels: legend
      label_type: labPer
      stacking: ''
      show_value_labels: false
      label_density: 25
      legend_position: center
      x_axis_gridlines: false
      y_axis_gridlines: true
      show_view_names: true
      limit_displayed_rows: false
      y_axis_combined: true
      show_y_axis_labels: true
      show_y_axis_ticks: true
      y_axis_tick_density: default
      y_axis_tick_density_custom: 5
      show_x_axis_label: true
      show_x_axis_ticks: true
      x_axis_scale: auto
      y_axis_scale_mode: linear
      ordering: none
      show_null_labels: false
      show_totals_labels: false
      show_silhouette: false
      totals_color: "#808080"
      series_types: {}

    - name: cash_global_bar
      title: Global Cash (GBP)
      type: looker_column
      left: 0
      top: 6
      height: 6
      width: 24
      model: demo_cash
      explore: records
      dimensions: [records.country_name]
      pivots: [records.country_name]
      measures: [records.sum_amount_gbp]
      listen:
        currency: records.currency
      sorts: [records.sum_amount_gbp]
      records.system: Internal
      limit: '500'
      column_limit: '50'
      query_timezone: America/Los_Angeles
      stacking: ''
      show_value_labels: false
      label_density: 25
      legend_position: center
      x_axis_gridlines: false
      y_axis_gridlines: true
      show_view_names: true
      limit_displayed_rows: false
      y_axis_combined: true
      show_y_axis_labels: false
      show_y_axis_ticks: true
      y_axis_tick_density: default
      y_axis_tick_density_custom: 5
      show_x_axis_label: false
      show_x_axis_ticks: true
      x_axis_scale: auto
      y_axis_scale_mode: linear
      ordering: none
      show_null_labels: false
      show_totals_labels: false
      show_silhouette: false
      totals_color: "#808080"
      show_row_numbers: true
      truncate_column_names: false
      hide_totals: false
      hide_row_totals: false
      table_theme: transparent
      enable_conditional_formatting: false
      conditional_formatting_ignored_fields: []
      conditional_formatting_include_totals: false
      conditional_formatting_include_nulls: false
      value_labels: legend
      label_type: labPer
      series_types: {}


    - name: global_cash_table
      title: Global Cash (GBP)
      type: table
      left: 0
      top: 12
      height: 6
      width: 24
      model: demo_cash
      explore: records
      dimensions: [records.country_name]
      measures: [records.sum_amount_gbp]
      listen:
        currency: records.currency
      sorts: [records.country_name asc]
      records.system: Internal
      limit: '500'
      column_limit: '50'
      total: true
      query_timezone: America/Los_Angeles
      show_view_names: true
      show_row_numbers: true
      truncate_column_names: false
      hide_totals: false
      hide_row_totals: false
      table_theme: transparent
      limit_displayed_rows: false
      enable_conditional_formatting: false
      conditional_formatting_ignored_fields: []
      conditional_formatting_include_totals: false
      conditional_formatting_include_nulls: false
      value_labels: legend
      label_type: labPer
      stacking: ''
      show_value_labels: false
      label_density: 25
      legend_position: center
      x_axis_gridlines: false
      y_axis_gridlines: true
      y_axis_combined: true
      show_y_axis_labels: true
      show_y_axis_ticks: true
      y_axis_tick_density: default
      y_axis_tick_density_custom: 5
      show_x_axis_label: true
      show_x_axis_ticks: true
      x_axis_scale: auto
      y_axis_scale_mode: linear
      ordering: none
      show_null_labels: false
      show_totals_labels: false
      show_silhouette: false
      totals_color: "#808080"
      series_types: {}


