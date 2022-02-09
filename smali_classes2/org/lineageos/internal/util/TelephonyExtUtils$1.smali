.class Lorg/lineageos/internal/util/TelephonyExtUtils$1;
.super Landroid/content/BroadcastReceiver;
.source "TelephonyExtUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lineageos/internal/util/TelephonyExtUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/lineageos/internal/util/TelephonyExtUtils;


# direct methods
.method constructor <init>(Lorg/lineageos/internal/util/TelephonyExtUtils;)V
    .locals 0

    iput-object p1, p0, Lorg/lineageos/internal/util/TelephonyExtUtils$1;->this$0:Lorg/lineageos/internal/util/TelephonyExtUtils;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v5, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lorg/lineageos/internal/util/TelephonyExtUtils$1;->this$0:Lorg/lineageos/internal/util/TelephonyExtUtils;

    iget-object v6, p0, Lorg/lineageos/internal/util/TelephonyExtUtils$1;->this$0:Lorg/lineageos/internal/util/TelephonyExtUtils;

    invoke-static {v6}, Lorg/lineageos/internal/util/TelephonyExtUtils;->-wrap0(Lorg/lineageos/internal/util/TelephonyExtUtils;)Lorg/codeaurora/internal/IExtTelephony;

    move-result-object v6

    if-nez v6, :cond_1

    :goto_0
    invoke-static {v5, v3}, Lorg/lineageos/internal/util/TelephonyExtUtils;->-set0(Lorg/lineageos/internal/util/TelephonyExtUtils;Z)Z

    :cond_0
    :goto_1
    return-void

    :cond_1
    move v3, v4

    goto :goto_0

    :cond_2
    const-string/jumbo v5, "org.codeaurora.intent.action.ACTION_UICC_MANUAL_PROVISION_STATUS_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string/jumbo v5, "phone"

    const/4 v6, -0x1

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string/jumbo v5, "newProvisionState"

    invoke-virtual {p2, v5, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v3, :cond_3

    const/4 v1, 0x1

    :goto_2
    iget-object v3, p0, Lorg/lineageos/internal/util/TelephonyExtUtils$1;->this$0:Lorg/lineageos/internal/util/TelephonyExtUtils;

    invoke-static {v3, v2, v1}, Lorg/lineageos/internal/util/TelephonyExtUtils;->-wrap1(Lorg/lineageos/internal/util/TelephonyExtUtils;IZ)V

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    goto :goto_2
.end method
