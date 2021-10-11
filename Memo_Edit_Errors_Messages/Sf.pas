unit Sf;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Mask, ComCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Button1: TButton;      
    Label2: TLabel;
    Edit2: TEdit;
    StaticText1: TStaticText;
    Edit3: TEdit;
    Bevel1: TBevel;
    Bevel2: TBevel;
    Bevel3: TBevel;
    Bevel4: TBevel;
    Bevel5: TBevel;
    Button2: TButton;
    MaskEdit1: TMaskEdit;
    Bevel6: TBevel;
    Edit4: TEdit;      
    Bevel7: TBevel;
    Edit5: TEdit;
    Bevel8: TBevel;
    Edit6: TEdit;
    Edit7: TEdit;
    Label3: TLabel;
    Bevel9: TBevel;
    Memo1: TMemo;
    Bevel10: TBevel;
    Button3: TButton;
    Memo2: TMemo;
    Memo3: TMemo;
    Bevel11: TBevel;
    Memo4: TMemo;
    Button4: TButton;
    Button5: TButton;
    Bevel12: TBevel;
    Button6: TButton;
    Memo5: TMemo;
    Button7: TButton;
    Bevel14: TBevel;
    Bevel15: TBevel;
    Bevel16: TBevel;
    Bevel17: TBevel;
    Bevel18: TBevel;
    Edit8: TEdit;
    Label4: TLabel;
    Button8: TButton;
    Edit9: TEdit;
    Label5: TLabel;
    Button9: TButton;
    Bevel13: TBevel;
    Bevel19: TBevel;
    Bevel20: TBevel;
    Bevel21: TBevel;
    Bevel22: TBevel;
    Bevel24: TBevel;
    Edit10: TEdit;
    Bevel25: TBevel;
    Edit11: TEdit;
    Button10: TButton;
    Label6: TLabel;
    Label7: TLabel;
    Edit12: TEdit;
    Bevel26: TBevel;
    ListBox1: TListBox;
    ListBox2: TListBox;
    Bevel23: TBevel;
    Button11: TButton;
    Bevel27: TBevel;
    Memo6: TMemo;
    Button12: TButton;
    Button13: TButton;
    Bevel28: TBevel;
    Button14: TButton;
    Label8: TLabel;
    RichEdit1: TRichEdit;
    Button15: TButton;
    Button16: TButton;
    Button17: TButton;
    Button18: TButton;
    Label9: TLabel;
    Label10: TLabel;
    Button19: TButton;
    Timer1: TTimer;
    Bevel29: TBevel;
    Label11: TLabel;
    StatusBar1: TStatusBar;
    Bevel30: TBevel;
    Bevel31: TBevel;
    Label12: TLabel;
    Button20: TButton;
    Edit13: TEdit;
    procedure Label2Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Edit4KeyPress(Sender: TObject; var Key: Char);
    procedure Edit5KeyPress(Sender: TObject; var Key: Char);
    procedure Edit6KeyPress(Sender: TObject; var Key: Char);
    procedure Edit7KeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Edit9KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Edit10Exit(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Edit11KeyPress(Sender: TObject; var Key: Char);
    procedure Edit12MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure FormDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure ListBox2DragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure ListBox2DragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure Button11Click(Sender: TObject);
    procedure Edit10KeyPress(Sender: TObject; var Key: Char);
    procedure Button12Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure Button14Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button15Click(Sender: TObject);
    procedure Button16Click(Sender: TObject);
    procedure Button17Click(Sender: TObject);
    procedure Button18Click(Sender: TObject);
    procedure FormMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Timer1Timer(Sender: TObject);
    procedure Button19Click(Sender: TObject);
    procedure IdleProc(Sender: TObject; var Done:Boolean);
    procedure Button20Click(Sender: TObject);
    procedure FormMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure RichEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    procedure WMHotkey(Var msg:TWMHotkey);
    message WM_HOTKEY;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  f:integer=0;
  r: TRect;

implementation

{$R *.DFM}

procedure TForm1.Label2Click(Sender: TObject);
begin
 if Edit2.CanFocus
 then Edit2.SetFocus;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
 Edit3.ReadOnly:=true;
 Edit3.Color:=clBtnFace;
 Edit3.Ctl3D:=false;
 Edit3.BorderStyle:=bsNone;
 Edit3.Text:='Component TEdit';
end;

procedure TForm1.Edit4KeyPress(Sender: TObject; var Key: Char);
begin
 if(Key<'0') or (Key>'9') then Key:=#0;
end;

procedure TForm1.Edit5KeyPress(Sender: TObject; var Key: Char);
begin
 if Key=#13 then
  begin
   Key:=#0;
   Form1.ActiveControl:=Edit6; //вариант 1
  end;
end;

procedure TForm1.Edit6KeyPress(Sender: TObject; var Key: Char);
begin
 if Key=#13 then
  begin
   Key:=#0;
 //  Edit7.SetFocus; //вариант 2
   Perform(WM_NEXTDLGCTL,0,0);//вариант 3 - переход к след. эл-ту
  end;
end;

procedure TForm1.Edit7KeyPress(Sender: TObject; var Key: Char);
begin
 if Key=#13 then Key:=#0;
end;

procedure TForm1.FormKeyPress(Sender: TObject; var Key: Char);
begin
 Form1.Caption:='SetFocus, Messages, Edit -- Нажата клавиша '+Key;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
 Memo1.Lines[3]:='Asdfg';
 Memo2.Lines.Clear;
 Memo3.Lines.Add('New String');
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
 Memo4.Lines.LoadFromFile('readme.txt');
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
 Memo4.Lines.SaveToFile('C:\Games\Fifa 2001\fifa2001.txt');
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
 Memo4.Lines.Clear;
end;

procedure TForm1.Button7Click(Sender: TObject);
begin
 Memo5.SelStart:=10; //начало
 Memo5.SelLength:=8;  //длина
 Memo5.SelText:='abcdefgh'; //написать слово
 if pos('qwerty',Edit8.Text)<>0 then
  begin
   Edit8.HideSelection:=false;
   Edit8.SelStart:=pos('qwerty',Edit8.Text)-1;
   Edit8.SelLength:=length('qwerty');
  end;
end;

procedure TForm1.Button8Click(Sender: TObject);
begin
 Beep;
 ShowMessage('Press "OK"');
end;

procedure TForm1.Button9Click(Sender: TObject);
begin
 Close;
end;

procedure TForm1.Edit9KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (Shift=[ssCtrl]) and (chr(Key)='1')
 then MessageDlg('Keys Pressed ("Ctrl-1")',mtConfirmation,[mbOK],0);
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
//если Memo6.Modified тогда из программы не выйдешь
 if Memo6.Modified
 then Action:=caNone
 else
 if MessageDlg('Вы действительно хотите выйти из программы?', mtWarning,
    [mbYes, mbNo],0)=mrYes then
    Action:=caFree
  else
    Action:=caNone;
 {if Memo6.Modified
 then Action:=caNone
 else
 Action:=caFree;}
///////////////////////////////////////////  для "Alt-Shift-F9"
 UnRegisterHotkey(Handle,1);
end;

procedure TForm1.WMHotkey( Var msg: TWMHotkey );
begin
//////////////////////////////////////////   для "Alt-Shift-F9"
 if Msg.Hotkey=1 then
  begin
   if IsIconic(Application.Handle)
   then Application.Restore;
   BringToFront;
  end;
end;

procedure TForm1.Edit10Exit(Sender: TObject);
begin
 if (Edit10.Text='123') or (Edit10.Text='456') then
  begin
   MessageDlg('Access '+Edit10.Text+' Denined!'+#13#10'Please Rewrite.',
     mtError,[mbOK],0);
   Edit10.SetFocus;
   Edit10.SelectAll;
  end;
end;

procedure TForm1.Button10Click(Sender: TObject);
begin
 if Edit11.Text='qaz'
 then Button10.Caption:='Verno'
 else
 Button10.Caption:='Ne Verno';
 Edit11.Setfocus;
 Application.Title:=Edit11.Text;//TimeToStr(Time);
end;

procedure TForm1.Edit11KeyPress(Sender: TObject; var Key: Char);
begin
 if f=0 then
  begin
   Edit11.Text:='';
   Edit11.PasswordChar:='*';
   f:=1
  end
 else
  Edit11.PasswordChar:='*';
end;

procedure TForm1.Edit12MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
 if Button <> mbLeft
 then exit;
 ReleaseCapture;
 //Edit1.Perform(WM_SysCommand,$F012,0);
 (Sender as TWinControl).Perform(WM_SysCommand,$F012,0);
end;

procedure TForm1.FormDragDrop(Sender, Source: TObject; X, Y: Integer);
begin
 Label7.Left:=X;
 Label7.Top:=Y;
end;

procedure TForm1.FormDragOver(Sender, Source: TObject; X, Y: Integer;
  State: TDragState; var Accept: Boolean);
begin
 if Source=Label7
 then Accept:=true
 else
 Accept:=false;
end;

procedure TForm1.ListBox2DragDrop(Sender, Source: TObject; X, Y: Integer);
begin
 {with Source as TListBox do
  ListBox2.Items.Add(Items[ItemIndex]);
  Items.Delete(ItemIndex);}
 ListBox2.Items.Add((Source as TlistBox).Items[(Source as TlistBox).ItemIndex]);
 (Source as TlistBox).Items.Delete((Source as TlistBox).ItemIndex);
end;

procedure TForm1.ListBox2DragOver(Sender, Source: TObject; X, Y: Integer;
  State: TDragState; var Accept: Boolean);
begin
 if Source=ListBox1
 then Accept:=true
 else
 Accept:=false;
end;

procedure TForm1.Button11Click(Sender: TObject);
const
//табуляция в Memo1, Memo2, Memo3
 //PosTab1:integer=100;
 //PosTab2:array[0..2] of integer=(5,30,60); //...,1,... - кол-во раз
 PosTab3:array[0..0] of integer=(5);
 PosTab4:array[0..0] of integer=(20);
 PosTab5:array[0..0] of integer=(40);
begin
 Memo1.Perform(em_SetTabStops,1,Longint(@PosTab3));
 Memo2.Perform(em_SetTabStops,1,Longint(@PosTab4));
 Memo3.Perform(em_SetTabStops,1,Longint(@PosTab5));
end;

procedure TForm1.Edit10KeyPress(Sender: TObject; var Key: Char);
begin
 if Key=#13 then
  begin
   Form1.SelectNext(Sender as TWinControl,true,true);
   Key:=#0;
  end;
end;

procedure TForm1.Button12Click(Sender: TObject);
begin
 Close;
end;

procedure TForm1.Button13Click(Sender: TObject);
var
 res:TModalResult;
begin
 if length(Edit9.Text)<8 then
  begin
   res:=MessageDlg('Неправильная дата!'#10#13'Исправить?',mtError,[mbOK,mbNO],0);
   if res=mrOK then Edit9.Text:=DateToStr(Date);
   if res=mrNO then Edit9.SetFocus;
  end;
end;

procedure TForm1.Button14Click(Sender: TObject);
var
 surname: string;
begin
 surname:=InputBox('User','Enter surname:','TeRmInAtOr');
 Edit2.Text:=surname;
 Memo1.Lines.Add(surname);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
 RichEdit1.Lines.LoadFromFile('readme.txt');
///////////////////////////////////////////////////////////////
///   для "Alt-Shift-F9"
 if not RegisterHotkey (Handle, 1, MOD_ALT or MOD_SHIFT, VK_F9)
 then ShowMessage('Unable to assign Alt-Shift-F9 as hotkey.');
///////////////////////////////////////////////////////////////
 Application.OnIdle:=IdleProc;
{
Если в вашей программе происходит добавление большого количества
строк в компонент Memo, то операцию можно значительно ускорить.
Для этого нужно вызвать метод BeginUpdate перед добавлением строк,
и метод EndUpdate после добавления:

Memo1.Lines.BeginUpdate;
...
// добавляем множество строк ...
...
Memo1.Lines.EndUpdate;

Вышесказанное в равной степени относится к компоненту ListBox и его
свойству Items, а также к другим компонентам свойства типа TStrings.
}
end;

procedure TForm1.IdleProc(Sender: TObject; var Done:Boolean);
begin
 StatusBar1.Panels[0].Text:=TimeToStr(Time);
 if GetKeyState(VK_Numlock)=1
 then StatusBar1.Panels[1].Text:='"Num Lock" OFF'
 else StatusBar1.Panels[1].Text:='"Num Lock" ON';
 if GetKeyState(VK_Insert)=1
 then StatusBar1.Panels[2].Text:='Режим замены'
 else StatusBar1.Panels[2].Text:='Режим вставки';
 Done:=false;
end;

procedure TForm1.Button15Click(Sender: TObject);
begin
 with RichEdit1.SelAttributes do
  begin
   Color:=clRed;
   Height:=Height+5;
  end;
end;

procedure TForm1.Button16Click(Sender: TObject);
begin
with RichEdit1.SelAttributes do
  begin
   Color:=clBlack;
   Height:=Height-5;
  end;
end;

procedure TForm1.Button17Click(Sender: TObject);
begin
 RichEdit1.Perform(EM_UNDO,0,0);
end;

procedure TForm1.Button18Click(Sender: TObject);
begin
 SendMessage(RichEdit1.Handle, EM_LINESCROLL, 0, RichEdit1.Lines.Count-1);
end;

procedure TForm1.FormMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
const
 SC_DragMove=$F012;
var
 r1: TRect;
begin
//Перетаскивание формы за ее поле
 ReleaseCapture;
 Perform(WM_SysCommand, SC_DragMove, 0);
//или SendMessage(Handle,WM_NCLBUTTONDOWN,HTCAPTION,0);
 GetClipCursor(r);
 r1:=Form1.ClientRect;
 r1.TopLeft:=Form1.ClientToScreen(r1.TopLeft);
 r1.BottomRight:=Form1.ClientToScreen(r1.BottomRight);
 ClipCursor(@r1);
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
 FlashWindow(Handle,true);
end;

procedure TForm1.Button19Click(Sender: TObject);
begin
 Timer1.Enabled:=true;
end;

procedure TForm1.Button20Click(Sender: TObject);
begin
 Application.HintColor:=clRed;
 Application.HintPause:=1000;//покажется
 Application.HintHidePause:=1000;//покажется и скроется
end;

procedure TForm1.FormMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
 ClipCursor(@r);
end;

procedure TForm1.RichEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 Edit13.Text:=IntToStr(RichEdit1.CaretPos.X)+' - '+IntToStr(RichEdit1.CaretPos.Y);
end;
 
end.
