.class Lcom/android/settingslib/wifi/WifiStatusTracker$4;
.super Landroid/database/ContentObserver;
.source "WifiStatusTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settingslib/wifi/WifiStatusTracker;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiManager;Landroid/net/NetworkScoreManager;Landroid/net/ConnectivityManager;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/settingslib/wifi/WifiStatusTracker;Landroid/os/Handler;Landroid/content/Context;)V
    .locals 0

    .line 123
    iput-object p3, p0, Lcom/android/settingslib/wifi/WifiStatusTracker$4;->val$context:Landroid/content/Context;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3

    .line 126
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 127
    iget-object p0, p0, Lcom/android/settingslib/wifi/WifiStatusTracker$4;->val$context:Landroid/content/Context;

    .line 128
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v0, "wifi_off_timeout"

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    .line 127
    invoke-static {p0, v0, v1}, Lcom/android/settingslib/wifi/WifiTimeoutReceiver;->setTimeoutAlarm(Landroid/content/Context;J)V

    return-void
.end method
