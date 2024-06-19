library Plugin;

uses
  Forms, Windows, SysUtils, Controls, Messages,
  Unit1 in 'Unit1.pas' {Form1};

{$R *.res}

var
  AppLoaded: Boolean;

function StartPlugin(AppHandle: Cardinal; PProc: Pointer): Cardinal; stdcall;
begin
  @_PluginProc := Pointer(pproc);
  Application.Handle := AppHandle;
  Form1 := TForm1.Create(Application);
  //Form2 := TForm2.Create(Application);
  //Form3 := TForm3.Create(Application);
  //...
  AppLoaded := True;
  Result := 1;
end;

procedure ShowPlugin; stdcall;
begin
  if AppLoaded then
    Form1.Visible := not Form1.Visible;
end;

function StopPlugin: Boolean; stdcall;
begin
  if not AppLoaded then Exit(False);
  begin
    FreeAndNil(Form1);
//  FreeAndNil(Form2);
//  FreeAndNil(Form3);
//...
  end;
  Result := True;
end;

exports
  StartPlugin,
  StopPlugin,
  ShowPlugin;
end.





