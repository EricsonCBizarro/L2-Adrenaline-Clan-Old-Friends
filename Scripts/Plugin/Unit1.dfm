object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 223
  ClientWidth = 438
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object btn1: TButton
    Left = 24
    Top = 16
    Width = 75
    Height = 25
    Caption = 'UserName'
    TabOrder = 0
    OnClick = btn1Click
  end
  object Edit1: TEdit
    Left = 120
    Top = 18
    Width = 121
    Height = 21
    TabOrder = 1
    Text = 'Edit1'
  end
  object btn2: TButton
    Left = 24
    Top = 72
    Width = 75
    Height = 25
    Caption = 'MoveTo'
    TabOrder = 2
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 24
    Top = 128
    Width = 75
    Height = 25
    Caption = 'Print'
    TabOrder = 3
    OnClick = btn3Click
  end
  object Edit2: TEdit
    Left = 120
    Top = 130
    Width = 121
    Height = 21
    TabOrder = 4
    Text = 'Print text'
  end
  object ColorBox1: TColorBox
    Left = 247
    Top = 130
    Width = 162
    Height = 22
    TabOrder = 5
  end
  object Edit3: TEdit
    Left = 120
    Top = 74
    Width = 81
    Height = 21
    TabOrder = 6
    Text = '0'
  end
  object Edit4: TEdit
    Left = 207
    Top = 74
    Width = 81
    Height = 21
    TabOrder = 7
    Text = '0'
  end
  object btn4: TButton
    Left = 294
    Top = 72
    Width = 75
    Height = 25
    Caption = 'CurPos'
    TabOrder = 8
    OnClick = btn4Click
  end
  object btn5: TButton
    Left = 334
    Top = 184
    Width = 75
    Height = 25
    Caption = 'Hide'
    TabOrder = 9
    OnClick = btn5Click
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 128
    Top = 176
  end
end
