object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 240
  ClientWidth = 447
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  TextHeight = 13
  object Button1: TButton
    Left = 24
    Top = 35
    Width = 377
    Height = 41
    Caption = 'Verificar se o Regristro foi criado'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Edit1: TEdit
    Left = 24
    Top = 8
    Width = 377
    Height = 21
    TabOrder = 1
  end
  object Edit2: TEdit
    Left = 24
    Top = 91
    Width = 377
    Height = 21
    TabOrder = 2
  end
  object Button2: TButton
    Left = 24
    Top = 118
    Width = 377
    Height = 46
    Caption = 'Deletar Registro'
    TabOrder = 3
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 296
    Top = 183
    Width = 105
    Height = 49
    Caption = 'Criar Registro'
    TabOrder = 4
    OnClick = Button3Click
  end
end
