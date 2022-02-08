.class final Lcom/android/systemui/globalactions/GlobalActionsDialog$ShutDownAction;
.super Lcom/android/systemui/globalactions/GlobalActionsDialog$SinglePressAction;
.source "GlobalActionsDialog.java"

# interfaces
.implements Lcom/android/systemui/globalactions/GlobalActionsDialog$LongPressAction;


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/globalactions/GlobalActionsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ShutDownAction"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;


# direct methods
.method private constructor <init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;)V
    .locals 2

    .line 944
    iput-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ShutDownAction;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    const v0, 0x1080030

    const v1, 0x1040393

    .line 945
    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/globalactions/GlobalActionsDialog$SinglePressAction;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;II)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;Lcom/android/systemui/globalactions/GlobalActionsDialog$1;)V
    .locals 0

    .line 943
    invoke-direct {p0, p1}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ShutDownAction;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;)V

    return-void
.end method

.method private synthetic lambda$onPress$0()V
    .locals 0

    .line 973
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ShutDownAction;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->access$1700(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Lcom/android/systemui/plugins/GlobalActions$GlobalActionsManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/systemui/plugins/GlobalActions$GlobalActionsManager;->shutdown()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onPress$0$GlobalActionsDialog$ShutDownAction()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ShutDownAction;->lambda$onPress$0()V

    return-void
.end method

.method public onLongPress()Z
    .locals 2

    .line 951
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ShutDownAction;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->access$1400(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Landroid/os/UserManager;

    move-result-object v0

    const-string v1, "no_safe_boot"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 952
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ShutDownAction;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->access$1500(Lcom/android/systemui/globalactions/GlobalActionsDialog;Z)Z

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onPress()V
    .locals 2

    .line 971
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ShutDownAction;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->access$000(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isMethodSecure()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ShutDownAction;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->access$000(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 972
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ShutDownAction;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->access$1600(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Lcom/android/systemui/plugins/ActivityStarter;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/globalactions/-$$Lambda$GlobalActionsDialog$ShutDownAction$woASp6qfBQzCWTFSJuHpvXEt5Y0;

    invoke-direct {v1, p0}, Lcom/android/systemui/globalactions/-$$Lambda$GlobalActionsDialog$ShutDownAction$woASp6qfBQzCWTFSJuHpvXEt5Y0;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog$ShutDownAction;)V

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/ActivityStarter;->postQSRunnableDismissingKeyguard(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 976
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ShutDownAction;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->access$1700(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Lcom/android/systemui/plugins/GlobalActions$GlobalActionsManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/systemui/plugins/GlobalActions$GlobalActionsManager;->shutdown()V

    :goto_0
    return-void
.end method

.method public showBeforeProvisioning()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public showDuringKeyguard()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
