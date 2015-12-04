object Form1: TForm1
  Left = 192
  Top = 117
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Formatador de Telefone'
  ClientHeight = 219
  ClientWidth = 383
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Arial'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 16
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 369
    Height = 185
    Caption = 'Telefones'
    TabOrder = 0
    object edtTelefone1: TEdit
      Left = 8
      Top = 24
      Width = 121
      Height = 24
      TabOrder = 0
      Text = '32213399'
    end
    object edtTelefone2: TEdit
      Left = 8
      Top = 56
      Width = 121
      Height = 24
      TabOrder = 1
      Text = '8532213399'
    end
    object edtTelefone3: TEdit
      Left = 8
      Top = 88
      Width = 121
      Height = 24
      TabOrder = 2
      Text = '985378771'
    end
    object edtTelefone4: TEdit
      Left = 8
      Top = 120
      Width = 121
      Height = 24
      TabOrder = 3
      Text = '85985379771'
    end
    object btnFormatar: TButton
      Left = 144
      Top = 72
      Width = 75
      Height = 25
      Caption = 'Formatar'
      TabOrder = 4
      OnClick = btnFormatarClick
    end
    object edtTelefoneFormatado1: TEdit
      Left = 232
      Top = 24
      Width = 121
      Height = 24
      TabOrder = 5
    end
    object edtTelefoneFormatado2: TEdit
      Left = 232
      Top = 56
      Width = 121
      Height = 24
      TabOrder = 6
    end
    object edtTelefoneFormatado3: TEdit
      Left = 232
      Top = 88
      Width = 121
      Height = 24
      TabOrder = 7
    end
    object edtTelefoneFormatado4: TEdit
      Left = 232
      Top = 120
      Width = 121
      Height = 24
      TabOrder = 8
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 200
    Width = 383
    Height = 19
    Panels = <>
  end
end
