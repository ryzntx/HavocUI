.class Lcom/android/keyguard/KeyguardPINView$1;
.super Ljava/lang/Object;
.source "KeyguardPINView.java"

# interfaces
.implements Lcom/android/keyguard/PasswordTextView$QuickUnlockListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardPINView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardPINView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardPINView;)V
    .locals 0

    .line 171
    iput-object p1, p0, Lcom/android/keyguard/KeyguardPINView$1;->this$0:Lcom/android/keyguard/KeyguardPINView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValidateQuickUnlock(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 173
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPINView$1;->this$0:Lcom/android/keyguard/KeyguardPINView;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardPINView;->access$000(Lcom/android/keyguard/KeyguardPINView;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 174
    iget-object p0, p0, Lcom/android/keyguard/KeyguardPINView$1;->this$0:Lcom/android/keyguard/KeyguardPINView;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardPINView;->access$100(Lcom/android/keyguard/KeyguardPINView;)I

    move-result v1

    invoke-static {p0, v0, p1, v1}, Lcom/android/keyguard/KeyguardPINView;->access$200(Lcom/android/keyguard/KeyguardPINView;Lcom/android/internal/widget/LockPatternUtils;Ljava/lang/String;I)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method
