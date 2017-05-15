- dashboard: cash_intraday
  title: Cash Intraday
  layout: static
  width: 2400
  tile_size: 100
  auto_run: true
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
    explore: v_bcbs248
    field: v_bcbs248.currency
    default_value: "USD"
  - name: post_date
    type: field_filter
    model: demo_cash
    explore: v_bcbs248
    field: v_bcbs248.post_date_date
    default_value: "2016-01-29"

  elements:

  - name: net_cumulative_position
    title: Net Cumulative Position
    left: 0
    top: 0
    height: 4
    width: 24
    type: looker_line
    model: demo_cash
    explore: v_bcbs248
    dimensions: [v_bcbs248.post_date_time]
    measures: [v_bcbs248.sum_net]
    listen:
      currency: v_bcbs248.currency
      post_date: v_bcbs248.post_date_date
    sorts: [v_bcbs248.post_date_time]
    limit: '500'
    column_limit: '50'
    query_timezone: Europe/London
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: true
    y_axis_gridlines: true
    show_view_names: false
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: false
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    x_axis_scale: time
    y_axis_scale_mode: linear
    show_null_points: true
    point_style: circle_outline
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    x_axis_datetime_label: "%H:%M"
    y_axis_unpin: false
    series_colors:
      v_bcbs248.sum_net: "#646569"
      __FILE: demo_cash/cash_intraday.dashboard.lookml
      __LINE_NUM: 75
    x_axis_datetime_tick_count:
    reference_lines: [{reference_type: line, line_value: '0', range_start: max, range_end: min,
        margin_top: deviation, margin_value: mean, margin_bottom: deviation, label_position: right,
        color: "#5e8aa9"}]

  - name: transaction_history
    title: Transaction History
    left: 0
    top: 4
    height: 8
    width: 24
    type: table
    model: demo_cash
    explore: v_bcbs248
    dimensions: [v_bcbs248.post_date_time, v_bcbs248.sent, v_bcbs248.received, v_bcbs248.net]
    listen:
      currency: v_bcbs248.currency
      post_date: v_bcbs248.post_date_date
    sorts: [v_bcbs248.post_date_time]
    limit: '500'
    column_limit: '50'
    query_timezone: Europe/London
    show_view_names: false
    show_row_numbers: false
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: transparent
    limit_displayed_rows: false
    enable_conditional_formatting: false
    conditional_formatting_ignored_fields: []
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    conditional_formatting: []
