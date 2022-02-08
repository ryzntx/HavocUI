.class Lcom/android/keyguard/KeyguardPINView$4;
.super Landroid/os/AsyncTask;
.source "KeyguardPINView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardPINView;->validateQuickUnlock(Lcom/android/internal/widget/LockPatternUtils;Ljava/lang/String;I)Landroid/os/AsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardPINView;

.field final synthetic val$password:Ljava/lang/String;

.field final synthetic val$userId:I

.field final synthetic val$utils:Lcom/android/internal/widget/LockPatternUtils;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardPINView;Lcom/android/internal/widget/LockPatternUtils;Ljava/lang/String;I)V
    .locals 0

    .line 256
    iput-object p1, p0, Lcom/android/keyguard/KeyguardPINView$4;->this$0:Lcom/android/keyguard/KeyguardPINView;

    iput-object p2, p0, Lcom/android/keyguard/KeyguardPINView$4;->val$utils:Lcom/android/internal/widget/LockPatternUtils;

    iput-object p3, p0, Lcom/android/keyguard/KeyguardPINView$4;->val$password:Ljava/lang/String;

    iput p4, p0, Lcom/android/keyguard/KeyguardPINView$4;->val$userId:I

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 2

    .line 261
    :try_start_0
    iget-object p1, p0, Lcom/android/keyguard/KeyguardPINView$4;->val$utils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPINView$4;->val$password:Ljava/lang/String;

    .line 262
    invoke-static {v0}, Lcom/android/internal/widget/LockscreenCredential;->createPinOrNone(Ljava/lang/CharSequence;)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v0

    iget p0, p0, Lcom/android/keyguard/KeyguardPINView$4;->val$userId:I

    const/4 v1, 0x0

    .line 261
    invoke-virtual {p1, v0, p0, v1}, Lcom/android/internal/widget/LockPatternUtils;->checkCredential(Lcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/LockPatternUtils$CheckCredentialProgressCallback;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0
    :try_end_0
    .catch Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 265
    :catch_0
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 256
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardPINView$4;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 0

    .line 271
    iget-object p0, p0, Lcom/android/keyguard/KeyguardPINView$4;->this$0:Lcom/android/keyguard/KeyguardPINView;

    invoke-static {p0, p1}, Lcom/android/keyguard/KeyguardPINView;->access$400(Lcom/android/keyguard/KeyguardPINView;Ljava/lang/Boolean;)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 256
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardPINView$4;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
