.class public Lcom/android/systemui/statusbar/DataUsageView;
.super Landroid/widget/TextView;
.source "DataUsageView.java"


# static fields
.field private static shouldUpdateData:Z

.field private static shouldUpdateDataTextView:Z


# instance fields
.field private formattedInfo:Ljava/lang/String;

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    iput-object p1, p0, Lcom/android/systemui/statusbar/DataUsageView;->mContext:Landroid/content/Context;

    .line 41
    const-class p2, Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/statusbar/policy/NetworkController;

    const-string/jumbo p2, "wifi"

    .line 42
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/net/wifi/WifiManager;

    iput-object p2, p0, Lcom/android/systemui/statusbar/DataUsageView;->mWifiManager:Landroid/net/wifi/WifiManager;

    const-string p2, "connectivity"

    .line 43
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lcom/android/systemui/statusbar/DataUsageView;->mConnectivityManager:Landroid/net/ConnectivityManager;

    return-void
.end method

.method private formatDataUsage(J)Ljava/lang/CharSequence;
    .locals 3

    .line 92
    iget-object v0, p0, Lcom/android/systemui/statusbar/DataUsageView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/16 v1, 0x8

    invoke-static {v0, p1, p2, v1}, Landroid/text/format/Formatter;->formatBytes(Landroid/content/res/Resources;JI)Landroid/text/format/Formatter$BytesResult;

    move-result-object p1

    .line 94
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object p2

    iget-object p0, p0, Lcom/android/systemui/statusbar/DataUsageView;->mContext:Landroid/content/Context;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p1, Landroid/text/format/Formatter$BytesResult;->value:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object p1, p1, Landroid/text/format/Formatter$BytesResult;->units:Ljava/lang/String;

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const p1, 0x104035e

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getSlotCarrierName()Ljava/lang/String;
    .locals 3

    .line 100
    iget-object p0, p0, Lcom/android/systemui/statusbar/DataUsageView;->mContext:Landroid/content/Context;

    const-class v0, Landroid/telephony/SubscriptionManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/SubscriptionManager;

    .line 101
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    const/4 v1, 0x1

    .line 103
    invoke-virtual {p0, v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList(Z)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 105
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    .line 106
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    if-ne v0, v2, :cond_0

    .line 107
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_0

    :cond_1
    const-string p0, ""

    .line 112
    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private isWifiConnected()Z
    .locals 2

    .line 116
    iget-object v0, p0, Lcom/android/systemui/statusbar/DataUsageView;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 118
    iget-object p0, p0, Lcom/android/systemui/statusbar/DataUsageView;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {p0, v0}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object p0

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    .line 119
    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result p0

    if-eqz p0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method public static synthetic lambda$31XEPNiNq1LYCHXvovzGSMTfp8g(Lcom/android/systemui/statusbar/DataUsageView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/DataUsageView;->updateUsageData()V

    return-void
.end method

.method private updateUsageData()V
    .locals 6

    .line 63
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "data_usage_period"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 65
    :goto_0
    new-instance v1, Lcom/android/settingslib/net/DataUsageController;

    iget-object v3, p0, Lcom/android/systemui/statusbar/DataUsageView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Lcom/android/settingslib/net/DataUsageController;-><init>(Landroid/content/Context;)V

    .line 68
    invoke-direct {p0}, Lcom/android/systemui/statusbar/DataUsageView;->isWifiConnected()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 70
    iget-object v3, p0, Lcom/android/systemui/statusbar/DataUsageView;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v3

    .line 71
    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getHiddenSSID()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v4

    const-string v5, "<unknown ssid>"

    if-ne v4, v5, :cond_1

    goto :goto_1

    .line 74
    :cond_1
    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/NetworkTemplate;->buildTemplateWifi(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v3

    goto :goto_2

    .line 72
    :cond_2
    :goto_1
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateWifiWildcard()Landroid/net/NetworkTemplate;

    move-result-object v3

    :goto_2
    if-eqz v0, :cond_3

    .line 76
    invoke-virtual {v1, v3}, Lcom/android/settingslib/net/DataUsageController;->getDailyDataUsageInfo(Landroid/net/NetworkTemplate;)Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;

    move-result-object v0

    goto :goto_3

    .line 77
    :cond_3
    invoke-virtual {v1, v3}, Lcom/android/settingslib/net/DataUsageController;->getDataUsageInfo(Landroid/net/NetworkTemplate;)Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;

    move-result-object v0

    .line 78
    :goto_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/DataUsageView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/android/systemui/R$string;->usage_wifi_prefix:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    .line 80
    :cond_4
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/settingslib/net/DataUsageController;->setSubscriptionId(I)V

    if-eqz v0, :cond_5

    .line 81
    invoke-virtual {v1}, Lcom/android/settingslib/net/DataUsageController;->getDailyDataUsageInfo()Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;

    move-result-object v0

    goto :goto_4

    .line 82
    :cond_5
    invoke-virtual {v1}, Lcom/android/settingslib/net/DataUsageController;->getDataUsageInfo()Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;

    move-result-object v0

    .line 83
    :goto_4
    invoke-direct {p0}, Lcom/android/systemui/statusbar/DataUsageView;->getSlotCarrierName()Ljava/lang/String;

    move-result-object v1

    .line 85
    :goto_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, v0, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->usageLevel:J

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/DataUsageView;->formatDataUsage(J)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/systemui/statusbar/DataUsageView;->mContext:Landroid/content/Context;

    .line 86
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$string;->usage_data:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/DataUsageView;->formattedInfo:Ljava/lang/String;

    .line 87
    sput-boolean v2, Lcom/android/systemui/statusbar/DataUsageView;->shouldUpdateDataTextView:Z

    .line 88
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 51
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 52
    sget-boolean p1, Lcom/android/systemui/statusbar/DataUsageView;->shouldUpdateData:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 53
    sput-boolean v0, Lcom/android/systemui/statusbar/DataUsageView;->shouldUpdateData:Z

    .line 54
    new-instance p1, Lcom/android/systemui/statusbar/-$$Lambda$DataUsageView$31XEPNiNq1LYCHXvovzGSMTfp8g;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/-$$Lambda$DataUsageView$31XEPNiNq1LYCHXvovzGSMTfp8g;-><init>(Lcom/android/systemui/statusbar/DataUsageView;)V

    invoke-static {p1}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 56
    :cond_0
    sget-boolean p1, Lcom/android/systemui/statusbar/DataUsageView;->shouldUpdateDataTextView:Z

    if-eqz p1, :cond_1

    .line 57
    sput-boolean v0, Lcom/android/systemui/statusbar/DataUsageView;->shouldUpdateDataTextView:Z

    .line 58
    iget-object p1, p0, Lcom/android/systemui/statusbar/DataUsageView;->formattedInfo:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public updateUsage()V
    .locals 0

    const/4 p0, 0x1

    .line 47
    sput-boolean p0, Lcom/android/systemui/statusbar/DataUsageView;->shouldUpdateData:Z

    return-void
.end method
