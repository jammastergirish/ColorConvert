program colour;

uses
  Forms,
  main in 'main.pas' {MainForm};

{$R *.RES}

begin
  Application.Initialize;
  Application.Title := 'Colour Converter';
  Application.CreateForm(TMainForm, MainForm);
  Application.Run;
end.
