.class Lcom/android/keyguard/KeyguardSimPukView$3$1;
.super Ljava/lang/Object;
.source "KeyguardSimPukView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardSimPukView$3;->onSimLockChangedResponse(Landroid/telephony/PinResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/keyguard/KeyguardSimPukView$3;

.field final synthetic val$result:Landroid/telephony/PinResult;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardSimPukView$3;Landroid/telephony/PinResult;)V
    .locals 0

    .line 411
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSimPukView$3$1;->this$1:Lcom/android/keyguard/KeyguardSimPukView$3;

    iput-object p2, p0, Lcom/android/keyguard/KeyguardSimPukView$3$1;->val$result:Landroid/telephony/PinResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 414
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView$3$1;->this$1:Lcom/android/keyguard/KeyguardSimPukView$3;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPukView$3;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSimPukView;->access$1400(Lcom/android/keyguard/KeyguardSimPukView;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 415
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView$3$1;->this$1:Lcom/android/keyguard/KeyguardSimPukView$3;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPukView$3;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSimPukView;->access$1400(Lcom/android/keyguard/KeyguardSimPukView;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->hide()V

    .line 417
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView$3$1;->this$1:Lcom/android/keyguard/KeyguardSimPukView$3;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPukView$3;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPukView$3$1;->val$result:Landroid/telephony/PinResult;

    .line 419
    invoke-virtual {v1}, Landroid/telephony/PinResult;->getType()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    .line 417
    :goto_0
    invoke-virtual {v0, v3, v1}, Lcom/android/keyguard/KeyguardPinBasedInputView;->resetPasswordText(ZZ)V

    .line 420
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView$3$1;->val$result:Landroid/telephony/PinResult;

    invoke-virtual {v0}, Landroid/telephony/PinResult;->getType()I

    move-result v0

    if-nez v0, :cond_2

    .line 421
    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPukView$3$1;->this$1:Lcom/android/keyguard/KeyguardSimPukView$3;

    iget-object v1, v1, Lcom/android/keyguard/KeyguardSimPukView$3;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    .line 422
    invoke-static {v1}, Lcom/android/keyguard/KeyguardSimPukView;->access$1100(Lcom/android/keyguard/KeyguardSimPukView;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->reportSimUnlocked(I)V

    .line 423
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView$3$1;->this$1:Lcom/android/keyguard/KeyguardSimPukView$3;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPukView$3;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardSimPukView;->access$102(Lcom/android/keyguard/KeyguardSimPukView;I)I

    .line 424
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView$3$1;->this$1:Lcom/android/keyguard/KeyguardSimPukView$3;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPukView$3;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    invoke-static {v0, v3}, Lcom/android/keyguard/KeyguardSimPukView;->access$202(Lcom/android/keyguard/KeyguardSimPukView;Z)Z

    .line 425
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView$3$1;->this$1:Lcom/android/keyguard/KeyguardSimPukView$3;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPukView$3;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    if-eqz v0, :cond_5

    .line 427
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    .line 426
    invoke-interface {v0, v3, v1}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(ZI)V

    goto :goto_1

    .line 430
    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView$3$1;->this$1:Lcom/android/keyguard/KeyguardSimPukView$3;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPukView$3;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    invoke-static {v0, v2}, Lcom/android/keyguard/KeyguardSimPukView;->access$202(Lcom/android/keyguard/KeyguardSimPukView;Z)Z

    .line 431
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView$3$1;->val$result:Landroid/telephony/PinResult;

    invoke-virtual {v0}, Landroid/telephony/PinResult;->getType()I

    move-result v0

    if-ne v0, v3, :cond_4

    .line 433
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView$3$1;->this$1:Lcom/android/keyguard/KeyguardSimPukView$3;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPukView$3;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    iget-object v1, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardSimPukView$3$1;->val$result:Landroid/telephony/PinResult;

    .line 434
    invoke-virtual {v3}, Landroid/telephony/PinResult;->getAttemptsRemaining()I

    move-result v3

    .line 433
    invoke-static {v0, v3, v2}, Lcom/android/keyguard/KeyguardSimPukView;->access$1200(Lcom/android/keyguard/KeyguardSimPukView;IZ)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;)V

    .line 435
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView$3$1;->val$result:Landroid/telephony/PinResult;

    invoke-virtual {v0}, Landroid/telephony/PinResult;->getAttemptsRemaining()I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_3

    .line 437
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView$3$1;->this$1:Lcom/android/keyguard/KeyguardSimPukView$3;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPukView$3;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPukView$3$1;->val$result:Landroid/telephony/PinResult;

    .line 438
    invoke-virtual {v1}, Landroid/telephony/PinResult;->getAttemptsRemaining()I

    move-result v1

    .line 437
    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardSimPukView;->access$1500(Lcom/android/keyguard/KeyguardSimPukView;I)Landroid/app/Dialog;

    move-result-object v0

    .line 438
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_1

    .line 441
    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView$3$1;->this$1:Lcom/android/keyguard/KeyguardSimPukView$3;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPukView$3;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    iget-object v1, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardSimPukView$3$1;->val$result:Landroid/telephony/PinResult;

    .line 443
    invoke-virtual {v3}, Landroid/telephony/PinResult;->getAttemptsRemaining()I

    move-result v3

    .line 442
    invoke-static {v0, v3, v2}, Lcom/android/keyguard/KeyguardSimPukView;->access$1200(Lcom/android/keyguard/KeyguardSimPukView;IZ)Ljava/lang/String;

    move-result-object v0

    .line 441
    invoke-interface {v1, v0}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 446
    :cond_4
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView$3$1;->this$1:Lcom/android/keyguard/KeyguardSimPukView$3;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPukView$3;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    iget-object v1, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lcom/android/systemui/R$string;->kg_password_puk_failed:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;)V

    .line 453
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView$3$1;->this$1:Lcom/android/keyguard/KeyguardSimPukView$3;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPukView$3;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSimPukView;->access$1600(Lcom/android/keyguard/KeyguardSimPukView;)Lcom/android/keyguard/KeyguardSimPukView$StateMachine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->reset()V

    .line 454
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSimPukView$3$1;->this$1:Lcom/android/keyguard/KeyguardSimPukView$3;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSimPukView$3;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/keyguard/KeyguardSimPukView;->access$1702(Lcom/android/keyguard/KeyguardSimPukView;Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk;)Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk;

    return-void
.end method
