unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls, Buttons, ExtCtrls, jpeg, ComCtrls;

type
  TFormPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    Panel1: TPanel;
    BitBtnCliente: TBitBtn;
    BitBtnPedidos: TBitBtn;
    BitBtnAPagar: TBitBtn;
    BitBtnAReceber: TBitBtn;
    BitBtnEntrega: TBitBtn;
    BitBtnFuncionarios: TBitBtn;
    BitBtnEstoque: TBitBtn;
    BitBtnFornecedores: TBitBtn;
    Panel2: TPanel;
    Image1: TImage;
    relatrio1: TMenuItem;
    Relatrio2: TMenuItem;
    Sair1: TMenuItem;
    Sair2: TMenuItem;
    BitBtnSair: TBitBtn;
    Cadastro1: TMenuItem;
    Clientes1: TMenuItem;
    Pedidos1: TMenuItem;
    ContasPagar1: TMenuItem;
    ContasReceber1: TMenuItem;
    Entregas1: TMenuItem;
    Funcionrios1: TMenuItem;
    Fornecedores1: TMenuItem;
    Pesquisa1: TMenuItem;
    Pesquisa2: TMenuItem;
    btnCalc: TBitBtn;
    Pedidos2: TMenuItem;
    ContasReceber2: TMenuItem;
    ContasReceber3: TMenuItem;
    Entrega1: TMenuItem;
    Funcionrio1: TMenuItem;
    Fornecedor1: TMenuItem;
    Estoque1: TMenuItem;
    Estoque2: TMenuItem;
    BitBtnCalendario: TBitBtn;
    procedure Pedidos1Click(Sender: TObject);
    procedure BitBtnSairClick(Sender: TObject);
    procedure BitBtnClienteClick(Sender: TObject);
    procedure BitBtnPedidosClick(Sender: TObject);
    procedure BitBtnAPagarClick(Sender: TObject);
    procedure BitBtnAReceberClick(Sender: TObject);
    procedure BitBtnEntregaClick(Sender: TObject);
    procedure BitBtnFuncionariosClick(Sender: TObject);
    procedure BitBtnEstoqueClick(Sender: TObject);
    procedure BitBtnFornecedoresClick(Sender: TObject);
    procedure Sair2Click(Sender: TObject);
    procedure Relatrio2Click(Sender: TObject);
    procedure BitBtnRelatorioClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCanResize(Sender: TObject; var NewWidth,
      NewHeight: Integer; var Resize: Boolean);
    procedure Clientes1Click(Sender: TObject);
    procedure ContasPagar1Click(Sender: TObject);
    procedure ContasReceber1Click(Sender: TObject);
    procedure Entregas1Click(Sender: TObject);
    procedure Funcionrios1Click(Sender: TObject);
    procedure Fornecedores1Click(Sender: TObject);
    procedure Pesquisa2Click(Sender: TObject);
    procedure btnCalcClick(Sender: TObject);
    procedure Fornecedor1Click(Sender: TObject);
    procedure Pedidos2Click(Sender: TObject);
    procedure Entrega1Click(Sender: TObject);
    procedure Funcionrio1Click(Sender: TObject);
    procedure ContasReceber2Click(Sender: TObject);
    procedure ContasReceber3Click(Sender: TObject);
    procedure Estoque1Click(Sender: TObject);
    procedure Estoque2Click(Sender: TObject);
    procedure BitBtnCalendarioClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPrincipal: TFormPrincipal;

implementation

uses Unit2, Unit3, Unit4, Unit5, Unit6, Unit7, Unit9, Unit10,
  Unit11, Unit16, bancos, UnitAPagar, UnitAReceber, UnitPesqEntrega,
  UnitPesqPedidos, UnitPesqFornecedores, UnitPesqEstoque,
  UnitPesqFuncionarios, UnitCalendario, Unit14;

{$R *.dfm}

procedure TFormPrincipal.Pedidos1Click(Sender: TObject);
begin
  try
    if FormCadastroDePedidos = nil then
    begin
      FormCadastroDePedidos := TFormCadastroDePedidos.Create(Application);
      FormCadastroDePedidos.ShowModal;
    end;
  finally
    FormCadastroDePedidos.Release;
    FormCadastroDePedidos := nil;
  end;

end;

procedure TFormPrincipal.BitBtnSairClick(Sender: TObject);
begin
    if Application.MessageBox('Deseja finalizar', 'Atenção', MB_YESNO + MB_iconinformation) = IDYes then
       Application.Terminate;
    
end;

procedure TFormPrincipal.BitBtnClienteClick(Sender: TObject);
begin
  try
    if FormCadastroDeCliente = nil then
    begin
      FormCadastroDeCliente := TFormCadastroDeCliente.Create(Application);
      FormCadastroDeCliente.ShowModal;
    end;
  finally
    FormCadastroDeCliente.Release;
    FormCadastroDeCliente := nil;
  end;

end;

procedure TFormPrincipal.BitBtnPedidosClick(Sender: TObject);
begin
  try
    if FormCadastroDePedidos = nil then
    begin
      FormCadastroDePedidos := TFormCadastroDePedidos.Create(Application);
      FormCadastroDePedidos.ShowModal;
    end;
  finally
    FormCadastroDePedidos.Release;
    FormCadastroDePedidos := nil;
  end;

end;

procedure TFormPrincipal.BitBtnAPagarClick(Sender: TObject);
begin
  try
    if FormContasAPagar = nil then
    begin
      FormContasAPagar := TFormContasAPagar.Create(Application);
      FormContasAPagar.ShowModal;
    end;
  finally
    FormContasAPagar.Release;
    FormContasAPagar := nil;
  end;

end;

procedure TFormPrincipal.BitBtnAReceberClick(Sender: TObject);
begin
  try
    if FormContasAReceber = nil then
    begin
       FormContasAReceber := TFormContasAReceber.Create(Application);
       FormContasAReceber.ShowModal;
    end;
  finally
     FormContasAReceber.Release;
     FormContasAReceber := nil;
  end;

end;

procedure TFormPrincipal.BitBtnEntregaClick(Sender: TObject);
begin
  try
    if FormRoteiroDeEntrega = nil then
    begin
        FormRoteiroDeEntrega := TFormRoteiroDeEntrega.Create(Application);
        FormRoteiroDeEntrega.ShowModal;
    end;
  finally
      FormRoteiroDeEntrega.Release;
      FormRoteiroDeEntrega := nil;
  end;
end;

procedure TFormPrincipal.BitBtnFuncionariosClick(Sender: TObject);
begin
  try
    if FormCadastroDeFuncionarios = nil then
    begin
      FormCadastroDeFuncionarios := TFormCadastroDeFuncionarios.Create(Application);
      FormCadastroDeFuncionarios.ShowModal;
    end;
  finally
    FormCadastroDeFuncionarios.Release;
    FormCadastroDeFuncionarios := nil;
  end;

end;

procedure TFormPrincipal.BitBtnEstoqueClick(Sender: TObject);
begin
  try
    if FormEstoque = nil then
    begin
      FormEstoque := TFormEstoque.Create(Application);
      FormEstoque.ShowModal;
    end;
  finally
    FormEstoque.Release;
    FormEstoque := nil;
  end;

end;

procedure TFormPrincipal.BitBtnFornecedoresClick(Sender: TObject);
begin
  try
    if FormCadastroDeFornecedores = nil then
    begin
      FormCadastroDeFornecedores := TFormCadastroDeFornecedores.Create(Application);
      FormCadastroDeFornecedores.ShowModal;
    end;
  finally
    FormCadastroDeFornecedores.Release;
    FormCadastroDeFornecedores := nil;
  end;

end;

procedure TFormPrincipal.Sair2Click(Sender: TObject);
begin
    if Application.MessageBox('Deseja finalizar', 'Atenção', MB_YESNO + MB_iconinformation) = IDYes then
       Application.Terminate;

end;

procedure TFormPrincipal.Relatrio2Click(Sender: TObject);
begin
  try
    if FormRelatorio = nil then
    begin
      FormRelatorio := TFormRelatorio.Create(Application);
      FormRelatorio.ShowModal;
    end;
  finally
    FormRelatorio.Release;
    FormRelatorio := nil;
  end;

end;

procedure TFormPrincipal.BitBtnRelatorioClick(Sender: TObject);
begin
  try
    if FormRelatorio = nil then
    begin
      FormRelatorio := TFormRelatorio.Create(Application);
      FormRelatorio.ShowModal;
    end;
  finally
    FormRelatorio.Release;
    FormRelatorio := nil;
  end;

end;

procedure TFormPrincipal.FormShow(Sender: TObject);
begin
   DMBancos.ZConn.Connected := true;
   BitBtnCliente.SetFocus;
end;

procedure TFormPrincipal.FormCanResize(Sender: TObject; var NewWidth,
  NewHeight: Integer; var Resize: Boolean);
begin
  resize:= false;
end;

procedure TFormPrincipal.Clientes1Click(Sender: TObject);
begin
  try
    if FormCadastroDeCliente = nil then
    begin
      FormCadastroDeCliente := TFormCadastroDeCliente.Create(Application);
      FormCadastroDeCliente.ShowModal;
    end;
  finally
    FormCadastroDeCliente.Release;
    FormCadastroDeCliente := nil;
  end;
end;

procedure TFormPrincipal.ContasPagar1Click(Sender: TObject);
begin
  try
    if FormContasAPagar = nil then
    begin
      FormContasAPagar := TFormContasAPagar.Create(Application);
      FormContasAPagar.ShowModal;
    end;
  finally
    FormContasAPagar.Release;
    FormContasAPagar := nil;
  end;
end;

procedure TFormPrincipal.ContasReceber1Click(Sender: TObject);
begin
  try
    if FormContasAReceber = nil then
    begin
      FormContasAReceber := TFormContasAReceber.Create(Application);
      FormContasAReceber.ShowModal;
    end;
  finally
    FormContasAReceber.Release;
    FormContasAReceber := nil;
  end;
end;

procedure TFormPrincipal.Entregas1Click(Sender: TObject);
begin
  try
    if FormRoteiroDeEntrega = nil then
    begin
      FormRoteiroDeEntrega := TFormRoteiroDeEntrega.Create(Application);
      FormRoteiroDeEntrega.ShowModal;
    end;
  finally
    FormRoteiroDeEntrega.Release;
    FormRoteiroDeEntrega := nil;
  end;

end;

procedure TFormPrincipal.Funcionrios1Click(Sender: TObject);
begin
  try
    if FormCadastroDeFuncionarios = nil then
    begin
      FormCadastroDeFuncionarios := TFormCadastroDeFuncionarios.Create(Application);
      FormCadastroDeFuncionarios.ShowModal;
    end;
  finally
    FormCadastroDeFuncionarios.Release;
    FormCadastroDeFuncionarios := nil;
  end;

end;

procedure TFormPrincipal.Fornecedores1Click(Sender: TObject);
begin
  try
    if FormCadastroDeFornecedores = nil then
    begin
      FormCadastroDeFornecedores := TFormCadastroDeFornecedores.Create(Application);
      FormCadastroDeFornecedores.ShowModal;
    end;
  finally
    FormCadastroDeFornecedores.Release;
    FormCadastroDeFornecedores := nil;
  end;

end;

procedure TFormPrincipal.Pesquisa2Click(Sender: TObject);
begin
  try
    if FrmPesqClientes = nil then
    begin
      FrmPesqClientes := TFrmPesqClientes.Create(Application);
      FrmPesqClientes.ShowModal;
    end;
  finally
    FrmPesqClientes.Release;
    FrmPesqClientes := nil;
  end;
end;

procedure TFormPrincipal.btnCalcClick(Sender: TObject);
begin
  if FindWindow(nil, 'Calculadora') = 0 then //Chama a calculadora do wWindows
      WinExec('Calc.exe', SW_SHOWNORMAL)
  else
    Application.MessageBox('Calculadora já esta aberta', 'Atenção');
end;

procedure TFormPrincipal.Fornecedor1Click(Sender: TObject);
begin
  try
    if FrmPesqFornecedores = nil then
    begin
      FrmPesqFornecedores := TFrmPesqFornecedores.Create(Application);
      FrmPesqFornecedores.ShowModal;
    end;
  finally
    FrmPesqFornecedores.Release;
    FrmPesqFornecedores := nil;
  end;
end;

procedure TFormPrincipal.Pedidos2Click(Sender: TObject);
begin
  try
    if FrmPesqPedidos = nil then
    begin
      FrmPesqPedidos := TFrmPesqPedidos.Create(Application);
      FrmPesqPedidos.ShowModal;
    end;
  finally
    FrmPesqPedidos.Release;
    FrmPesqPedidos := nil;
  end;
end;

procedure TFormPrincipal.Entrega1Click(Sender: TObject);
begin
  try
    if FrmPesqEntrega = nil then
    begin
      FrmPesqEntrega := TFrmPesqEntrega.Create(Application);
      FrmPesqEntrega.ShowModal;
    end;
  finally
    FrmPesqEntrega.Release;
    FrmPesqEntrega := nil;
  end;
end;

procedure TFormPrincipal.Funcionrio1Click(Sender: TObject);
begin
  try
    if FrmPesqFuncionarios = nil then
    begin
      FrmPesqFuncionarios := TFrmPesqFuncionarios.Create(Application);
      FrmPesqFuncionarios.ShowModal;
    end;
  finally
    FrmPesqFuncionarios.Release;
    FrmPesqFuncionarios := nil;
  end;
end;

procedure TFormPrincipal.ContasReceber2Click(Sender: TObject);
begin
  try
    if FrmPesqContasAPagar= nil then
    begin
      FrmPesqContasAPagar := TFrmPesqContasAPagar.Create(Application);
      FrmPesqContasAPagar.ShowModal;
    end;
  finally
    FrmPesqContasAPagar.Release;
    FrmPesqContasAPagar := nil;
  end;
end;

procedure TFormPrincipal.ContasReceber3Click(Sender: TObject);
begin
  try
    if FrmPesqContasAReceber = nil then
    begin
      FrmPesqContasAReceber := TFrmPesqContasAReceber.Create(Application);
      FrmPesqContasAReceber.ShowModal;
    end;
  finally
    FrmPesqContasAReceber.Release;
    FrmPesqContasAReceber := nil;
  end;
end;

procedure TFormPrincipal.Estoque1Click(Sender: TObject);
begin
  try
    if FormEstoque = nil then
    begin
      FormEstoque := TFormEstoque.Create(Application);
      FormEstoque.ShowModal;
    end;
  finally
    FormEstoque.Release;
    FormEstoque := nil;
  end;
end;

procedure TFormPrincipal.Estoque2Click(Sender: TObject);
begin
  try
    if FrmPesqEstoque = nil then
    begin
      FrmPesqEstoque := TFrmPesqEstoque.Create(Application);
      FrmPesqEstoque.ShowModal;
    end;
  finally
    FrmPesqEstoque.Release;
    FrmPesqEstoque := nil;
  end;
end;

procedure TFormPrincipal.BitBtnCalendarioClick(Sender: TObject);
begin
  try
    if frmCalendario = nil then
    begin
      frmCalendario := TfrmCalendario.Create(Application);
      frmCalendario.ShowModal;
    end;
  finally
    frmCalendario.Release;
    frmCalendario := nil;
  end;
end;

procedure TFormPrincipal.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
    if Application.MessageBox('Deseja finalizar', 'Atenção', MB_YESNO + MB_iconinformation) = IDYes then
       Application.Terminate;
end;

end.
