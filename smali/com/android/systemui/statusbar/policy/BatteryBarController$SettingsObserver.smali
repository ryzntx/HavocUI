.class Lcom/android/systemui/statusbar/policy/BatteryBarController$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "BatteryBarController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/BatteryBarController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/BatteryBarController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/BatteryBarController;Landroid/os/Handler;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/BatteryBarController$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/policy/BatteryBarController;

    .line 62
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method observer()V
    .locals 3

    .line 66
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryBarController$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/policy/BatteryBarController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/BatteryBarController;->access$000(Lcom/android/systemui/statusbar/policy/BatteryBarController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "statusbar_battery_bar"

    .line 68
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    .line 67
    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v1, "statusbar_battery_bar_location"

    .line 70
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 69
    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v1, "statusbar_battery_bar_style"

    .line 73
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 72
    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v1, "statusbar_battery_bar_thickness"

    .line 76
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 75
    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public onChange(Z)V
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/BatteryBarController$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/policy/BatteryBarController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BatteryBarController;->updateSettings()V

    return-void
.end method
