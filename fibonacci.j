; Jassmin assembly code
; MiniC v. 1.0
.class public fibonacci
.super java/lang/Object

.method static <clinit>()V
   .limit stack 1
   .limit locals 0
   return
.end method

.method public <init>()V
   .limit stack 1
   .limit locals 1
   .var 0 is this Lfibonacci; from Label0 to Label1

  Label0:
   aload_0
   invokespecial java/lang/Object/<init>()V
  Label1:
   return
.end method

.method public fibonacci(I)I
  Label0:
   ; IfStmt, line 14
   iload_1
   iconst_0
  Label2:
   ; AssignStmt, line 10
   iconst_0
   istore_2
  Label3:
   ; IfStmt, line 14
   iload_1
   iconst_1
  Label4:
   ; AssignStmt, line 12
   iconst_1
   istore_2
  Label5:
   ; AssignStmt, line 14
   ; CallExpr
   ; "this"-pointer is the first ActualParam with instance methods:
   aload_0
   ; ActualParam
   iload_1
   iconst_1
   isub
   invokevirtual fibonacci/fibonacci(I)I
   ; CallExpr
   ; "this"-pointer is the first ActualParam with instance methods:
   aload_0
   ; ActualParam
   iload_1
   iconst_2
   isub
   invokevirtual fibonacci/fibonacci(I)I
   iadd
   istore_2
   ; ReturnStmt, line 15
   iload_2
   ireturn
  Label1:
   .limit locals 3
   .limit stack 150
.end method

.method public static main([Ljava/lang/String;)V
  Label0:
   new fibonacci
   dup
   invokespecial fibonacci/<init>()V
   astore_1
   ; ForStmt, line 20
  Label1:
   return
   .limit locals 3
   .limit stack 150
.end method
