unit camera;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, MPlayerCtrl,
  ExtCtrls;

type

  { TfrmCamera }

  TfrmCamera = class(TForm)
    MPlayerControl1: TMPlayerControl;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure MPlayerControl1Click(Sender: TObject);
  private
     Fimage : TImage;
  public
     property Image : TImage read FImage;
  end;

var
  frmCamera: TfrmCamera;

implementation

{$R *.lfm}

{ TfrmCamera }

procedure TfrmCamera.FormShow(Sender: TObject);
begin

  MPlayerControl1.Filename := 'tv://';
  MPlayerControl1.Play;
end;

procedure TfrmCamera.FormCreate(Sender: TObject);
begin
    Fimage:= TImage.create(self);
end;

procedure TfrmCamera.MPlayerControl1Click(Sender: TObject);
begin
     MPlayerControl1.GrabImage ;
     FImage.Picture.LoadFromFile(MPlayerControl1.LastImageFilename);
     MPlayerControl1.Stop;
     //MPlayerControl1.Visible:=false;
     close;
end;

end.

