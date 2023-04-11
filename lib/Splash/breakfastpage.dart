final DataGridController _dataGridController = DataGridController();

@override
Widget build(BuildContext context) {
  return Scaffold(
      body: Column(children: [
        TextButton(
            child: Text('Get Checked Items Information'),
            onPressed: () {
              //Index of the checked item
              var _selectedIndex = _dataGridController.selectedIndex;

              //CheckedRow
              var _selectedRow = _dataGridController.selectedRow;

              //Collection of checkedRows
              var _selectedRows = _dataGridController.selectedRows;

              print(_selectedIndex);
              print(_selectedRow);
              print(_selectedRows);
            }),
        Expanded(
            child: SfDataGrid(
                source: _employeeDataSource,
                showCheckboxColumn: true,
                controller: _dataGridController,
                selectionMode: SelectionMode.multiple,
                columns: [
                  GridColumn(
                      columnName: 'id',
                      label: Container(
                          padding: EdgeInsets.symmetric(horizontal: 16.0),
                          alignment: Alignment.centerRight,
                          child: Text(
                            'ID',
                            overflow: TextOverflow.ellipsis,
                          ))),
                  GridColumn(
                      columnName: 'name',
                      label: Container(
                          padding: EdgeInsets.symmetric(horizontal: 16.0),
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Name',
                            overflow: TextOverflow.ellipsis,
                          ))),
                  GridColumn(
                      columnName: 'designation',
                      label: Container(
                          padding: EdgeInsets.symmetric(horizontal: 16.0),
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Designation',
                            overflow: TextOverflow.ellipsis,
                          ))),
                  GridColumn(
                      columnName: 'salary',
                      label: Container(
                          padding: EdgeInsets.symmetric(horizontal: 16.0),
                          alignment: Alignment.centerRight,
                          child: Text(
                            'Salary',
                            overflow: TextOverflow.ellipsis,
                          ))),
                ]))
      ]));
}
