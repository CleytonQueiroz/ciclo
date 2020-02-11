unit Email;

interface

function GetAccountEmails(const AccountType: String): TArray<String>;

implementation

uses
  Androidapi.Helpers,
  Androidapi.Jni,
  FMX.DialogService,
{$IF Declared(RTLVersion) and (RTLVersion >= 31)}
  // Delphi 10.1 Berlin adds in full imports for the accounts classes
  Androidapi.JNI.Accounts;
{$ELSE}
  Androidapi.JNIBridge,
  Androidapi.JNI.App,
  Androidapi.JNI.GraphicsContentViewText,
  Androidapi.JNI.JavaTypes,
  Androidapi.JNI.Os,
  Email,
  MiscU;


type
// ===== Forward declarations =====

  JAccount = interface;//android.accounts.Account
  JAccountManager = interface;//android.accounts.AccountManager

// ===== Interface declarations =====

  JAccountClass = interface(JObjectClass)
    ['{94EE6861-F326-489F-8919-E20B39E3D9C1}']
  end;

  [JavaSignature('android/accounts/Account')]
  JAccount = interface(JObject)
    ['{71476381-8B6E-471F-9189-9857ECD7508C}']
    function _Getname: JString; cdecl;
    function _Gettype: JString; cdecl;
    property name: JString read _Getname;
    property &type: JString read _Gettype;
  end;
  TJAccount = class(TJavaGenericImport<JAccountClass, JAccount>) end;

  JAccountManagerClass = interface(JObjectClass)
    ['{96273844-2D84-47F0-BFD5-14B73402F843}']
    {class} function &get(context: JContext): JAccountManager; cdecl;
  end;

  [JavaSignature('android/accounts/AccountManager')]
  JAccountManager = interface(JObject)
    ['{9FA4077B-4628-433C-BAFC-9EB299DA9C98}']
    function getAccountsByType(type_: JString): TJavaObjectArray<JAccount>; cdecl;
  end;
  TJAccountManager = class(TJavaGenericImport<JAccountManagerClass, JAccountManager>) end;
{$ENDIF}

function GetAccountEmails(const AccountType: String): TArray<String>;
var
  AccountManager: JAccountManager;
  Accounts: TJavaObjectArray<JAccount>;
  Account: JAccount;
  AccountLoopCounter: Integer;
begin
{$IF RTLVersion >= 30}
  AccountManager := TJAccountManager.JavaClass.get(TAndroidHelper.Context);
{$ELSE}
  AccountManager := TJAccountManager.JavaClass.get(SharedActivityContext);
{$ENDIF}
  if AccountManager <> nil then
  begin
    Accounts := AccountManager.getAccountsByType(StringToJString(AccountType));
    if Accounts <> nil then
    begin
      SetLength(Result, Accounts.Length);
      for AccountLoopCounter := 0 to Pred(Accounts.Length) do
      begin
        //Account := Accounts.Items[AccountLoopCounter];
        Account := TJAccount.Wrap(Accounts.GetRawItem(AccountLoopCounter));
        Result[AccountLoopCounter] := JStringtoString(Account.name);
      end
    end;
  end;
end;

procedure RegisterTypes;
begin
  TRegTypes.RegisterType('AccountEmailsU.JAccount', TypeInfo(Email.JAccount));
  TRegTypes.RegisterType('AccountEmailsU.JAccountManager', TypeInfo(Email.JAccountManager));
end;

initialization
  RegisterTypes;
end.
