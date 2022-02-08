.class final Lcom/android/systemui/BatteryMeterView$SettingObserver;
.super Landroid/database/ContentObserver;
.source "BatteryMeterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/BatteryMeterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/BatteryMeterView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/BatteryMeterView;Landroid/os/Handler;)V
    .locals 0

    .line 602
    iput-object p1, p0, Lcom/android/systemui/BatteryMeterView$SettingObserver;->this$0:Lcom/android/systemui/BatteryMeterView;

    .line 603
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method observe()V
    .locals 4

    .line 607
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView$SettingObserver;->this$0:Lcom/android/systemui/BatteryMeterView;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "status_bar_battery_style"

    .line 608
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v1, "status_bar_show_battery_percent"

    .line 611
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 618
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 619
    iget-object p1, p0, Lcom/android/systemui/BatteryMeterView$SettingObserver;->this$0:Lcom/android/systemui/BatteryMeterView;

    invoke-static {p1}, Lcom/android/systemui/BatteryMeterView;->access$200(Lcom/android/systemui/BatteryMeterView;)V

    .line 620
    iget-object p0, p0, Lcom/android/systemui/BatteryMeterView$SettingObserver;->this$0:Lcom/android/systemui/BatteryMeterView;

    invoke-static {p0}, Lcom/android/systemui/BatteryMeterView;->access$300(Lcom/android/systemui/BatteryMeterView;)V

    return-void
.end method
