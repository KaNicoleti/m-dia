object frmCalcMedia: TfrmCalcMedia
  Left = 0
  Top = 0
  Caption = 'Calcular M'#233'dia'
  ClientHeight = 299
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 40
    Top = 37
    Width = 32
    Height = 13
    Caption = 'Nota 1'
  end
  object Label2: TLabel
    Left = 192
    Top = 37
    Width = 32
    Height = 13
    Caption = 'Nota 2'
  end
  object Label3: TLabel
    Left = 342
    Top = 37
    Width = 32
    Height = 13
    Caption = 'Nota 3'
  end
  object Label4: TLabel
    Left = 192
    Top = 173
    Width = 28
    Height = 13
    Caption = 'M'#233'dia'
  end
  object btnCalc: TButton
    Left = 496
    Top = 48
    Width = 80
    Height = 45
    Hint = 'Pressione F2'
    Caption = 'Calcular'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 3
    OnClick = btnCalcClick
  end
  object btnFechar: TButton
    Left = 496
    Top = 192
    Width = 80
    Height = 45
    Hint = 'Pressione Esc'
    Caption = 'Fechar'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 4
    OnClick = btnFecharClick
  end
  object edtN1: TEdit
    Left = 40
    Top = 56
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object edtN2: TEdit
    Left = 192
    Top = 56
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object edtN3: TEdit
    Left = 342
    Top = 56
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object edtMedia: TEdit
    Left = 192
    Top = 192
    Width = 121
    Height = 21
    TabStop = False
    Color = clMoneyGreen
    ReadOnly = True
    TabOrder = 5
  end
  object btnLimpar: TButton
    Left = 496
    Top = 120
    Width = 80
    Height = 45
    Hint = 'Pressione F3'
    Caption = 'Limpar'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 6
    OnClick = btnLimparClick
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 280
    Width = 635
    Height = 19
    Panels = <
      item
        Width = 100
      end
      item
        Width = 100
      end
      item
        Width = 50
      end>
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 600
    Top = 16
  end
end
