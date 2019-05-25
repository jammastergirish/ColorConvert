unit main;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, ComCtrls;

type
  TMainForm = class(TForm)
    SColor: TButton;
    ColorDialog: TColorDialog;
    HTML: TEdit;
    Panel: TPanel;
    StatusBar: TStatusBar;
    RGBr: TEdit;
    LabelHTML: TLabel;
    LabelRGB: TLabel;
    RGBg: TEdit;
    RGBb: TEdit;
    VCL: TEdit;
    LabelVCL: TLabel;
    procedure SColorClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;

implementation

{$R *.DFM}

procedure TMainForm.SColorClick(Sender: TObject);
var
  TheRgbValue : TColorRef;
begin
  if ColorDialog.Execute then begin
    TheRgbValue := ColorToRGB(ColorDialog.Color);
    Panel.Color := ColorDialog.Color;

    HTML.Text := (Format('%.2x%.2x%.2x',
                       [GetRValue(TheRGBValue),
                        GetGValue(TheRGBValue),
                        GetBValue(TheRGBValue)]));

    RGBr.Text := FloatToStr(GetRValue(TheRGBValue));
    RGBg.Text := FloatToStr(GetGValue(TheRGBValue));
    RGBb.Text := FloatToStr(GetBValue(TheRGBValue));

    VCL.Text := IntToStr(ColorDialog.Color);
  end;
end;

end.
