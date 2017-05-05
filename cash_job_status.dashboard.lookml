- dashboard: cash_job_status
  title: Cash Job Status
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
  - name: feature_description
    type: field_filter
    model: demo_cash
    explore: files
    field: files.file_name

  elements:
  - name: load_jobs
    title: Load Jobs
    left: 0
    top: 0
    height: 4
    width: 12
    type: looker_bar
    model: demo_cash
    explore: load_jobs
    dimensions: [load_jobs.file_name]
    pivots: [load_jobs.file_name]
    measures: [load_jobs.sum_duration]
    sorts: [load_jobs.sum_duration desc 0, load_jobs.file_name]
    limit: '500'
    column_limit: '50'
    query_timezone: Europe/London
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
    show_x_axis_ticks: false
    x_axis_scale: auto
    y_axis_scale_mode: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    series_colors:
      bank.txt - Load Jobs Sum Duration: "#fa8d29"
      our.txt - Load Jobs Sum Duration: "#646569"
    y_axis_labels: [Duration (Seconds)]

  - name: match_jobs
    title: Match Jobs
    left: 12
    top: 0
    height: 4
    width: 12
    type: looker_bar
    model: demo_cash
    explore: match_jobs
    dimensions: [match_jobs.rec_name]
    measures: [match_jobs.sum_duration]
    sorts: [match_jobs.sum_duration desc, match_jobs.rec_name]
    limit: '500'
    column_limit: '50'
    query_timezone: Europe/London
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
    show_x_axis_label: false
    show_x_axis_ticks: false
    x_axis_scale: auto
    y_axis_scale_mode: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    series_colors:
      match_jobs.sum_duration: "#646569"
    y_axis_labels: [Duration (Seconds)]
