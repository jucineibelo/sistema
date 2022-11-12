object frmCadastro: TfrmCadastro
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'CADASTRO DE CONTATOS'
  ClientHeight = 357
  ClientWidth = 797
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 198
    Top = 80
    Width = 80
    Height = 16
    Caption = 'ID_CONTATO'
    FocusControl = idContato
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 198
    Top = 120
    Width = 35
    Height = 16
    Caption = 'NOME'
    FocusControl = dbNome
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 198
    Top = 160
    Width = 58
    Height = 16
    Caption = 'TELEFONE'
    FocusControl = DBEdit3
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 403
    Top = 160
    Width = 56
    Height = 16
    Caption = 'CELULAR'
    FocusControl = DBEdit4
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 198
    Top = 200
    Width = 40
    Height = 16
    Caption = 'EMAIL'
    FocusControl = DBEdit5
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object idContato: TDBEdit
    Left = 198
    Top = 96
    Width = 134
    Height = 24
    DataField = 'ID_CONTATO'
    DataSource = dsCadastro
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object dbNome: TDBEdit
    Left = 198
    Top = 136
    Width = 404
    Height = 24
    DataField = 'NOME'
    DataSource = dsCadastro
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object DBEdit3: TDBEdit
    Left = 198
    Top = 176
    Width = 199
    Height = 24
    DataField = 'TELEFONE'
    DataSource = dsCadastro
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object DBEdit4: TDBEdit
    Left = 403
    Top = 176
    Width = 199
    Height = 24
    DataField = 'CELULAR'
    DataSource = dsCadastro
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
  end
  object DBEdit5: TDBEdit
    Left = 198
    Top = 216
    Width = 404
    Height = 24
    DataField = 'EMAIL'
    DataSource = dsCadastro
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 797
    Height = 49
    Align = alTop
    Color = clGradientInactiveCaption
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 5
    object btNovo: TBitBtn
      Left = 14
      Top = 5
      Width = 90
      Height = 36
      Caption = '&Novo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = btNovoClick
    end
    object dtAlterar: TBitBtn
      Left = 125
      Top = 5
      Width = 90
      Height = 36
      Caption = '&Editar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = dtAlterarClick
    end
    object btDeletar: TBitBtn
      Left = 242
      Top = 5
      Width = 90
      Height = 36
      Caption = '&Deletar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = btDeletarClick
    end
    object btGravar: TBitBtn
      Left = 354
      Top = 5
      Width = 90
      Height = 36
      Caption = '&Gravar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnClick = btGravarClick
    end
    object btCancelar: TBitBtn
      Left = 466
      Top = 5
      Width = 90
      Height = 36
      Caption = '&Cancelar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      OnClick = btCancelarClick
    end
    object btAtualizar: TBitBtn
      Left = 578
      Top = 5
      Width = 90
      Height = 36
      Caption = '&Atualizar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      OnClick = btAtualizarClick
    end
    object btSair: TBitBtn
      Left = 690
      Top = 5
      Width = 88
      Height = 36
      Caption = '&Sair'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
      OnClick = btSairClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 288
    Width = 797
    Height = 69
    Align = alBottom
    Color = clGradientInactiveCaption
    ParentBackground = False
    TabOrder = 6
    object DBNavigator1: TDBNavigator
      Left = 88
      Top = 16
      Width = 524
      Height = 36
      DataSource = dsCadastro
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      TabOrder = 0
    end
    object btPesquisar: TBitBtn
      Left = 671
      Top = 16
      Width = 88
      Height = 36
      Caption = '&Pesquisar'
      TabOrder = 1
      OnClick = btPesquisarClick
    end
  end
  object Conexao: TFDConnection
    Params.Strings = (
      'Database=C:\Contatos\DADOS.FDB'
      'User_Name=sysdba'
      'Password=masterkey'
      'CharacterSet=WIN1252'
      'DriverID=FB')
    LoginPrompt = False
    Left = 744
    Top = 72
  end
  object qryCadastro: TFDQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from contato')
    Left = 744
    Top = 120
    object qryCadastroID_CONTATO: TIntegerField
      FieldName = 'ID_CONTATO'
      Origin = 'ID_CONTATO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryCadastroNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 30
    end
    object qryCadastroTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Origin = 'TELEFONE'
      Required = True
      EditMask = '!\(99\)0000-0000;0;_'
      Size = 15
    end
    object qryCadastroCELULAR: TStringField
      FieldName = 'CELULAR'
      Origin = 'CELULAR'
      Required = True
      EditMask = '!\(99\)0000-00000;0;_'
      Size = 15
    end
    object qryCadastroEMAIL: TStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Required = True
      Size = 30
    end
  end
  object dsCadastro: TDataSource
    DataSet = qryCadastro
    Left = 744
    Top = 168
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 744
    Top = 216
  end
end
