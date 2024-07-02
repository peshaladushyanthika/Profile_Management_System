object DataM: TDataM
  OnCreate = DataModuleCreate
  Height = 750
  Width = 1000
  PixelsPerInch = 120
  object Connection1: TFDConnection
    Params.Strings = (
      'Database=user'
      'User_Name=root'
      'Server=localhost'
      'DriverID=MySQL')
    Connected = True
    LoginPrompt = False
    Left = 360
    Top = 288
  end
  object Query1: TFDQuery
    Connection = Connection1
    SQL.Strings = (
      'select * from profile;')
    Left = 592
    Top = 296
    object Query1id: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object Query1name: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'name'
      Origin = 'name'
      Size = 150
    end
    object Query1dob: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'dob'
      Origin = 'dob'
    end
    object Query1NIC: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NIC'
      Origin = 'NIC'
      Size = 50
    end
    object Query1contact: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'contact'
      Origin = 'contact'
      Size = 50
    end
    object Query1address: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'address'
      Origin = 'address'
      Size = 255
    end
    object Query1age: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'age'
      Origin = 'age'
    end
  end
  object DataSource1: TDataSource
    AutoEdit = False
    DataSet = Query1
    Left = 512
    Top = 440
  end
  object DataSource2: TDataSource
    DataSet = Query2
    Left = 704
    Top = 440
  end
  object Query2: TFDQuery
    Connection = Connection1
    SQL.Strings = (
      'SELECT * FROM con_dtl')
    Left = 784
    Top = 432
    object Query2id: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object Query2profile_id: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'profile_id'
      Origin = 'profile_id'
    end
    object Query2contact: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'contact'
      Origin = 'contact'
      Size = 50
    end
  end
end
