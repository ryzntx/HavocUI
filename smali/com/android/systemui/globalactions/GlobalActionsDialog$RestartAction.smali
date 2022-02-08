.class final Lcom/android/systemui/globalactions/GlobalActionsDialog$RestartAction;
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
    name = "RestartAction"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;


# direct methods
.method private constructor <init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;)V
    .locals 2

    .line 1061
    iput-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$RestartAction;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    const v0, 0x1080525

    const v1, 0x1040395

    .line 1062
    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/globalactions/GlobalActionsDialog$SinglePressAction;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;II)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;Lcom/android/systemui/globalactions/GlobalActionsDialog$1;)V
    .locals 0

    .line 1060
    invoke-direct {p0, p1}, Lcom/android/systemui/globalactions/GlobalActionsDialog$RestartAction;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;)V

    return-void
.end method


# virtual methods
.method public onLongPress()Z
    .locals 2

    .line 1067
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$RestartAction;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->access$1400(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Landroid/os/UserManager;

    move-result-object v0

    const-string v1, "no_safe_boot"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1068
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$RestartAction;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->access$1500(Lcom/android/systemui/globalactions/GlobalActionsDialog;Z)Z

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onPress()V
    .locals 1

    .line 1086
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$RestartAction;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->access$1500(Lcom/android/systemui/globalactions/GlobalActionsDialog;Z)Z

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
