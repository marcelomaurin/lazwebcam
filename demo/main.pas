unit main;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls,
  camera;

type

  { Tfrmmain }

  Tfrmmain = class(TForm)
    btcam: TToggleBox;
    Image1: TImage;
    Label1: TLabel;
    procedure btcamChange(Sender: TObject);
  private

  public

  end;

var
  frmmain: Tfrmmain;

implementation

{$R *.lfm}

{ Tfrmmain }

procedure Tfrmmain.btcamChange(Sender: TObject);
begin
  if(frmCamera <> nil) then
  begin
       frmCamera := TfrmCamera.create(self);

  end;
  frmCamera.ShowModal;
  Image1.Picture := frmCamera.Image.Picture;
  //frmCamera.free;
end;

end.

