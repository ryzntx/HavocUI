.class Lcom/android/keyguard/KeyguardPasswordView$5;
.super Landroid/os/AsyncTask;
.source "KeyguardPasswordView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardPasswordView;->validateQuickUnlock(Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/widget/LockscreenCredential;I)Landroid/os/AsyncTask;
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
.field final synthetic this$0:Lcom/android/keyguard/KeyguardPasswordView;

.field final synthetic val$password:Lcom/android/internal/widget/LockscreenCredential;

.field final synthetic val$userId:I

.field final synthetic val$utils:Lcom/android/internal/widget/LockPatternUtils;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardPasswordView;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/widget/LockscreenCredential;I)V
    .locals 0

    .line 408
    iput-object p1, p0, Lcom/android/keyguard/KeyguardPasswordView$5;->this$0:Lcom/android/keyguard/KeyguardPasswordView;

    iput-object p2, p0, Lcom/android/keyguard/KeyguardPasswordView$5;->val$utils:Lcom/android/internal/widget/LockPatternUtils;

    iput-object p3, p0, Lcom/android/keyguard/KeyguardPasswordView$5;->val$password:Lcom/android/internal/widget/LockscreenCredential;

    iput p4, p0, Lcom/android/keyguard/KeyguardPasswordView$5;->val$userId:I

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 2

    .line 413
    :try_start_0
    iget-object p1, p0, Lcom/android/keyguard/KeyguardPasswordView$5;->val$utils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView$5;->val$password:Lcom/android/internal/widget/LockscreenCredential;

    iget p0, p0, Lcom/android/keyguard/KeyguardPasswordView$5;->val$userId:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p0, v1}, Lcom/android/internal/widget/LockPatternUtils;->checkCredential(Lcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/LockPatternUtils$CheckCredentialProgressCallback;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0
    :try_end_0
    .catch Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 415
    :catch_0
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 408
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardPasswordView$5;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 0

    .line 421
    iget-object p0, p0, Lcom/android/keyguard/KeyguardPasswordView$5;->this$0:Lcom/android/keyguard/KeyguardPasswordView;

    invoke-static {p0, p1}, Lcom/android/keyguard/KeyguardPasswordView;->access$300(Lcom/android/keyguard/KeyguardPasswordView;Ljava/lang/Boolean;)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 408
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardPasswordView$5;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
