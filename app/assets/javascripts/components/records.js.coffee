# app/assets/javascripts/components/records.js.coffee

@Records = React.createClass
  getInitialState: ->
    records: @props.data
  getDefaultProps: ->
    records: []
  addRecord: (record) ->
    records = @state.records.slice()
    records.push record
    @setState records: records
  render: ->
    React.DOM.div
      className: 'records'
      React.DOM.h2
        className: 'title'
        'Records'
      React.createElement RecordForm, handleNewRecord: @addRecord
      React.DOM.table
        className: 'table table-bordered'
        React.DOM.thead null,
          React.DOM.tr null,
            React.DOM.th null, 'Title'
            React.DOM.th null, 'Username'
            React.DOM.th null, 'Password'
        React.DOM.tbody null,
          for record in @state.records
            React.createElement Record, key: record.id, record: record
