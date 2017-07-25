- dashboard: cash_proof
  title: Cash Proof
  layout: static
  width: 1632
  tile_size: 68
  auto_run: true
  embed_style:
    background_color: "#ffffff"
    show_title: true
    title_color: "#646569"
    show_filters_bar: true
    tile_background_color: "#ffffff"
    tile_text_color: "#646569"

  filters:
  - name: account_no
    type: field_filter
    model: demo_cash
    explore: v_cash_proof_ca
    field: v_cash_proof_ca.account_no
    default_value: "10928771"

  elements:
    - name: cash_proof
      title: Cash Proof
      type: table
      left: 0
      top: 0
      height: 4
      width: 12
      model: demo_cash
      explore: v_cash_proof_ca
      dimensions: [v_cash_proof_ca.sortorder, v_cash_proof_ca.label, v_cash_proof_ca.ours,
        v_cash_proof_ca.ours_count, v_cash_proof_ca.theirs, v_cash_proof_ca.theirs_count,
        v_cash_proof_ca.net]
      listen:
        account_no: v_cash_proof_ca.account_no
      sorts: [v_cash_proof_ca.sortorder]
      limit: '500'
      column_limit: '50'
      query_timezone: America/Los_Angeles
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
      hidden_fields: [v_cash_proof_ca.sortorder]
      series_labels:
        v_cash_proof_ca.label: Description
        v_cash_proof_ca.ours_count: Count
        v_cash_proof_ca.theirs_count: Count
