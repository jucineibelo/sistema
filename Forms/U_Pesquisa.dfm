object frmPesquisa: TfrmPesquisa
  Left = 0
  Top = 0
  Caption = 'Formul'#225'rio de Consulta'
  ClientHeight = 357
  ClientWidth = 797
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 797
    Height = 65
    Align = alTop
    Color = clGradientInactiveCaption
    ParentBackground = False
    TabOrder = 0
    object Label1: TLabel
      Left = 184
      Top = 8
      Width = 159
      Height = 16
      Caption = 'Digite o c'#243'digo ou nome:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 18
      Top = 8
      Width = 128
      Height = 16
      Caption = 'Op'#231#245'es de Pesquisa'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object edPesquisa: TEdit
      Left = 184
      Top = 30
      Width = 297
      Height = 21
      TabOrder = 0
    end
    object cbOpcao: TComboBox
      Left = 17
      Top = 30
      Width = 129
      Height = 21
      TabOrder = 1
      Items.Strings = (
        'C'#211'DIGO'
        'NOME')
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 306
    Width = 797
    Height = 51
    Align = alBottom
    Color = clGradientInactiveCaption
    ParentBackground = False
    TabOrder = 1
    object DBNavigator1: TDBNavigator
      Left = 272
      Top = 6
      Width = 256
      Height = 35
      DataSource = frmCadastro.dsCadastro
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      TabOrder = 0
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 65
    Width = 797
    Height = 241
    Align = alClient
    DataSource = frmCadastro.dsCadastro
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object btnPesquisar: TBitBtn
    Left = 511
    Top = 20
    Width = 88
    Height = 36
    Caption = '&Pesquisar'
    TabOrder = 3
    OnClick = btnPesquisarClick
  end
  object btnImprimir: TBitBtn
    Left = 663
    Top = 20
    Width = 88
    Height = 36
    Caption = '&Imprimir'
    TabOrder = 4
  end
end
