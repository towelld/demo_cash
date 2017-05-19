- dashboard: cash_job_status
  title: Cash Job Status
  layout: static
  width: 1536
  tile_size: 24
  auto_run: true
  embed_style:
    background_color: "#ffffff"
    show_title: true
    title_color: "#646569"
    show_filters_bar: false
    tile_background_color: "#ffffff"
    tile_text_color: "#646569"

  filters:
  - name: feature_description
    type: field_filter
    model: demo_cash
    explore: load_jobs
    field: load_jobs.file_name

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

  - name: load_jobs_detail
    title: Detail
    left: 0
    top: 4
    height: 2
    width: 12
    type: table
    model: demo_cash
    explore: load_jobs
    dimensions: [load_jobs.file_name, load_jobs.start_date_time_stamp_time, load_jobs.end_date_time_stamp_time,load_jobs.number_of_loaded_records, load_jobs.number_of_discarded_records]
    measures: [load_jobs.sum_duration]
    sorts: [load_jobs.start_date_time_stamp_time desc]
    limit: '500'
    column_limit: '50'
    query_timezone: Europe/London
    show_view_names: false
    show_row_numbers: false
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: gray
    limit_displayed_rows: false
    enable_conditional_formatting: false
    conditional_formatting_ignored_fields: []
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    series_labels:
      load_jobs.sum_duration: Duration (Seconds)

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

  - name: match_jobs_detail
    title: Detail
    left: 12
    top: 4
    height: 2
    width: 12
    type: table
    model: demo_cash
    explore: match_jobs
    dimensions: [match_jobs.start_date_time_stamp_time, match_jobs.end_date_time_stamp_time,
      match_jobs.duration_secs, match_jobs.number_of_matched_records, match_jobs.number_of_suggested_records]
    sorts: [match_jobs.start_date_time_stamp_time desc]
    limit: '500'
    column_limit: '50'
    query_timezone: Europe/London
    show_view_names: false
    show_row_numbers: false
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: gray
    limit_displayed_rows: false
    enable_conditional_formatting: false
    conditional_formatting_ignored_fields: []
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_labels:
      match_jobs.duration_secs: Duration (Seconds)
      match_jobs.number_of_matched_records: Matched
      match_jobs.number_of_suggested_records: Suggested

  - name: match_details
    title: Match Details
    left: 0
    top: 6
    height: 2
    width: 18
    type: table
    model: demo_cash
    explore: groups
    dimensions: [groups.match_name, groups.confidence]
    measures: [groups.count]
    sorts: [groups.match_name desc]
    limit: '500'
    column_limit: '50'
    total: true
    query_timezone: Europe/London
    show_view_names: false
    show_row_numbers: false
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: gray
    limit_displayed_rows: false
    enable_conditional_formatting: false
    conditional_formatting_ignored_fields: []
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_labels:
      groups.count: Matched Groups

  - name: unmatch_details
    title: Unmatch Details
    left: 18
    top: 6
    height: 2
    width: 6
    type: table
    model: demo_cash
    explore: records
    measures: [records.count]
    filters:
      records.active_status: Unmatched
    limit: '500'
    column_limit: '50'
    query_timezone: Europe/London
    show_view_names: false
    show_row_numbers: false
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: gray
    limit_displayed_rows: false
    enable_conditional_formatting: false
    conditional_formatting_ignored_fields: []
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
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
    series_labels:
      records.count: Unmatched Count
