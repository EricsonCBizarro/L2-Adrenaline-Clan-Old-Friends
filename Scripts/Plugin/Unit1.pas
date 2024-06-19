// Для наилучшей совместимости плагин нужно делать в Delphi 2010
// Отладка плагина: Запускаем Delphi 2010
// Открываем настройки Run -> Parameters -> Host application, затем выбрать путь к AW.exe
// Запуск(F9), открываем TestPlugin скрипт, теперь можно делать брейкпоинты и отладку плагина.

unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TForm1 = class(TForm)
    btn1: TButton;
    Edit1: TEdit;
    btn2: TButton;
    btn3: TButton;
    Edit2: TEdit;
    ColorBox1: TColorBox;
    Edit3: TEdit;
    Edit4: TEdit;
    btn4: TButton;
    btn5: TButton;
    Timer1: TTimer;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    fRestore: Boolean;
  public
  end;

var
  Form1: TForm1;
  _PluginProc: function(Code: Cardinal; p1, p2, p3: widestring): widestring; stdcall;

implementation

{$R *.dfm}

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caNone;
  Hide;
end;

function PluginProc(Code: Cardinal; p1: widestring = ''; p2: widestring = ''; p3: widestring = ''): widestring;
begin
  Result := _PluginProc(Code, p1, p2, p3);
end;

procedure TForm1.btn1Click(Sender: TObject);
begin
  Edit1.Text := PluginProc(0);
end;

procedure TForm1.btn2Click(Sender: TObject);
begin
  PluginProc(1, PChar(Edit3.Text), PChar(Edit4.Text))
end;

procedure TForm1.btn3Click(Sender: TObject);
begin
  PluginProc(2, Edit2.Text, IntToStr(ColorBox1.Selected), '')
end;

procedure TForm1.btn4Click(Sender: TObject);
begin
  Edit3.Text := PluginProc(3);
  Edit4.Text := PluginProc(4);
end;

procedure TForm1.btn5Click(Sender: TObject);
begin
  Close;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
  PluginProc(2, Edit2.Text, IntToStr(ColorBox1.Selected), '');
end;

procedure TForm1.FormShow(Sender: TObject);
begin
  Caption := PluginProc(6);
end;


end.
