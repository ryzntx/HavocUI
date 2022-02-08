.class Lcom/android/systemui/statusbar/policy/NetworkTraffic$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "NetworkTraffic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/NetworkTraffic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/NetworkTraffic;Landroid/os/Handler;)V
    .locals 0

    .line 244
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    .line 245
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method observe()V
    .locals 4

    .line 249
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "network_traffic_state"

    .line 251
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 250
    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v1, "network_traffic_location"

    .line 254
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 253
    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v1, "network_traffic_mode"

    .line 257
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 256
    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v1, "network_traffic_autohide_threshold"

    .line 260
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 259
    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v1, "network_traffic_refresh_interval"

    .line 262
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method public onChange(Z)V
    .locals 0

    .line 272
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->setMode()V

    .line 273
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->update()V

    return-void
.end method
