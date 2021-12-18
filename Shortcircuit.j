; Jassmin assembly code
; MiniC v. 1.0
.class public Shortcircuit
.super java/lang/Object

.method static <clinit>()V
   .limit stack 1
   .limit locals 0
   return
.end method

.method public <init>()V
   .limit stack 1
   .limit locals 1
   .var 0 is this LShortcircuit; from Label0 to Label1

  Label0:
   aload_0
   invokespecial java/lang/Object/<init>()V
  Label1:
   return
.end method

.method public f()Z
  Label0:
   ; CallStmt, line 2
   ; CallExpr
   ; ActualParam
   ldc "Error: && shortcircuit evaluation not done!\n"
   invokestatic lang/System/putString(Ljava/lang/String;)V
   ; ReturnStmt, line 3
   iconst_0
   ireturn
  Label1:
   .limit locals 1
   .limit stack 150
.end method

.method public ff()Z
  Label0:
   ; CallStmt, line 7
   ; CallExpr
   ; ActualParam
   ldc "Error: || shortcircuit evaluation not done!\n"
   invokestatic lang/System/putString(Ljava/lang/String;)V
   ; ReturnStmt, line 8
   iconst_0
   ireturn
  Label1:
   .limit locals 1
   .limit stack 150
.end method

.method public static main([Ljava/lang/String;)V
  Label0:
   new Shortcircuit
   dup
   invokespecial Shortcircuit/<init>()V
   astore_1
   ; IfStmt, line 13
   iconst_0
   iconst_0
   goto Label5
  Label4:
   iconst_1
  Label5:
   ifeq Label6
   ; ReturnStmt, line 13
   iconst_1
   return
   goto Label7
  Label7:
   ; IfStmt, line 15
   iconst_1
   iconst_0
   goto Label11
  Label10:
   iconst_1
  Label11:
   ifeq Label12
   ; ReturnStmt, line 15
   iconst_1
   return
   goto Label13
  Label13:
  Label1:
   return
   .limit locals 2
   .limit stack 150
.end method
