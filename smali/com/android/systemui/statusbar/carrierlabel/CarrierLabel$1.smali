.class Lcom/android/systemui/statusbar/carrierlabel/CarrierLabel$1;
.super Landroid/content/BroadcastReceiver;
.source "CarrierLabel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/carrierlabel/CarrierLabel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/carrierlabel/CarrierLabel;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/carrierlabel/CarrierLabel;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/android/systemui/statusbar/carrierlabel/CarrierLabel$1;->this$0:Lcom/android/systemui/statusbar/carrierlabel/CarrierLabel;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 107
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.telephony.action.SERVICE_PROVIDERS_UPDATED"

    .line 108
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.intent.action.CUSTOM_CARRIER_LABEL"

    .line 109
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 110
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/carrierlabel/CarrierLabel$1;->this$0:Lcom/android/systemui/statusbar/carrierlabel/CarrierLabel;

    const/4 p1, 0x1

    const-string v0, "android.telephony.extra.SHOW_SPN"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    const-string v0, "android.telephony.extra.SPN"

    .line 111
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "android.telephony.extra.SHOW_PLMN"

    .line 112
    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    const-string v2, "android.telephony.extra.PLMN"

    .line 113
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 110
    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/android/systemui/statusbar/carrierlabel/CarrierLabel;->updateNetworkName(ZLjava/lang/String;ZLjava/lang/String;)V

    .line 114
    invoke-static {}, Lcom/android/internal/util/custom/Utils;->isChineseLanguage()Z

    move-result p0

    invoke-static {p0}, Lcom/android/systemui/statusbar/carrierlabel/CarrierLabel;->access$002(Z)Z

    :cond_1
    return-void
.end method
