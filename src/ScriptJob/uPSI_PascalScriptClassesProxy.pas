unit uPSI_PascalScriptClassesProxy;
{
This file has been generated by UnitParser v0.7, written by M. Knight
and updated by NP. v/d Spek and George Birbilis. 
Source Code from Carlo Kok has been used to implement various sections of
UnitParser. Components of ROPS are used in the construction of UnitParser,
code implementing the class wrapper is taken from Carlo Kok's conv utility

}
interface
 

 
uses
   SysUtils
  ,Classes
  ,uPSComponent
  ,uPSRuntime
  ,uPSCompiler
  ;
 
type 
(*----------------------------------------------------------------------------*)
  TPSImport_PascalScriptJobParamsProxy = class(TPSPlugin)
  public
    procedure CompileImport1(CompExec: TPSScript); override;
    procedure ExecImport1(CompExec: TPSScript; const ri: TPSRuntimeClassImporter); override;
  end;
 
 
{ compile-time registration functions }
procedure SIRegister_TPascalScriptJobParamsProxy(CL: TPSPascalCompiler);
procedure SIRegister_PascalScriptJobParamsProxy(CL: TPSPascalCompiler);

{ run-time registration functions }
procedure RIRegister_TPascalScriptJobParamsProxy(CL: TPSRuntimeClassImporter);
procedure RIRegister_PascalScriptJobParamsProxy(CL: TPSRuntimeClassImporter);

procedure Register;

implementation


uses
   PascalScriptClassesProxy
  ;
 
 
procedure Register;
begin
  RegisterComponents('Pascal Script', [TPSImport_PascalScriptJobParamsProxy]);
end;

(* === compile-time registration functions === *)
(*----------------------------------------------------------------------------*)
procedure SIRegister_TPascalScriptJobParamsProxy(CL: TPSPascalCompiler);
begin
  with CL.AddClass(CL.FindClass('TOBJECT'),TPascalScriptJobParamsProxy) do
  begin
    RegisterPublishedProperties;
    RegisterMethod('Procedure SetParam( const AName, AValue : string)');
    RegisterMethod('Function GetParam( const AName : string) : string');
  end;
end;

(*----------------------------------------------------------------------------*)
procedure SIRegister_PascalScriptJobParamsProxy(CL: TPSPascalCompiler);
begin
  SIRegister_TPascalScriptJobParamsProxy(CL);
end;

(* === run-time registration functions === *)
(*----------------------------------------------------------------------------*)
procedure RIRegister_TPascalScriptJobParamsProxy(CL: TPSRuntimeClassImporter);
begin
  with CL.Add(TPascalScriptJobParamsProxy) do
  begin
    RegisterVirtualMethod(@TPascalScriptJobParamsProxy.SetParam, 'SetParam');
    RegisterVirtualMethod(@TPascalScriptJobParamsProxy.GetParam, 'GetParam');
  end;
end;

(*----------------------------------------------------------------------------*)
procedure RIRegister_PascalScriptJobParamsProxy(CL: TPSRuntimeClassImporter);
begin
  RIRegister_TPascalScriptJobParamsProxy(CL);
end;

 
 
{ TPSImport_PascalScriptJobParamsProxy }
(*----------------------------------------------------------------------------*)
procedure TPSImport_PascalScriptJobParamsProxy.CompileImport1(CompExec: TPSScript);
begin
  SIRegister_PascalScriptJobParamsProxy(CompExec.Comp);
end;
(*----------------------------------------------------------------------------*)
procedure TPSImport_PascalScriptJobParamsProxy.ExecImport1(CompExec: TPSScript; const ri: TPSRuntimeClassImporter);
begin
  RIRegister_PascalScriptJobParamsProxy(ri);
end;
(*----------------------------------------------------------------------------*)
 
 
end.