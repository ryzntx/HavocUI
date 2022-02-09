.class final Lcom/android/systemui/statusbar/policy/smartbatre/BatteryController$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "BatteryController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/smartbatre/BatteryController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x32
    name = "SettingsObserver"
.end annotation


# instance fields
.field private final PERCENT_URI:Landroid/net/Uri;

.field private final STYLE_URI:Landroid/net/Uri;

.field private mRegistered:Z

.field private mResolver:Landroid/content/ContentResolver;

.field private final this$0:Lcom/android/systemui/statusbar/policy/smartbatre/BatteryController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/smartbatre/BatteryController;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1

    invoke-direct {p0, p3}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/smartbatre/BatteryController$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/policy/smartbatre/BatteryController;

    const-string v0, "nav_bar_battery_style"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/smartbatre/BatteryController$SettingsObserver;->STYLE_URI:Landroid/net/Uri;

    const-string v0, "nav_bar_show_battery_percent"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/smartbatre/BatteryController$SettingsObserver;->PERCENT_URI:Landroid/net/Uri;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/smartbatre/BatteryController$SettingsObserver;->mResolver:Landroid/content/ContentResolver;

    return-void
.end method

.method static access$0(Lcom/android/systemui/statusbar/policy/smartbatre/BatteryController$SettingsObserver;)Lcom/android/systemui/statusbar/policy/smartbatre/BatteryController;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/smartbatre/BatteryController$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/policy/smartbatre/BatteryController;

    return-object v0
.end method

.method private update()V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/smartbatre/BatteryController$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/policy/smartbatre/BatteryController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/smartbatre/BatteryController$SettingsObserver;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "nav_bar_battery_style"

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/smartbatre/BatteryController$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/policy/smartbatre/BatteryController;

    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/smartbatre/BatteryController;->access$L1000012(Lcom/android/systemui/statusbar/policy/smartbatre/BatteryController;)I

    move-result v3

    invoke-static {v1, v2, v4, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/smartbatre/BatteryController;->access$S1000010(Lcom/android/systemui/statusbar/policy/smartbatre/BatteryController;I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/smartbatre/BatteryController$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/policy/smartbatre/BatteryController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/smartbatre/BatteryController$SettingsObserver;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "nav_bar_show_battery_percent"

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/smartbatre/BatteryController$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/policy/smartbatre/BatteryController;

    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/smartbatre/BatteryController;->access$L1000012(Lcom/android/systemui/statusbar/policy/smartbatre/BatteryController;)I

    move-result v3

    invoke-static {v1, v2, v4, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/smartbatre/BatteryController;->access$S1000011(Lcom/android/systemui/statusbar/policy/smartbatre/BatteryController;I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/smartbatre/BatteryController$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/policy/smartbatre/BatteryController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/smartbatre/BatteryController;->access$1000018(Lcom/android/systemui/statusbar/policy/smartbatre/BatteryController;)V

    return-void
.end method


# virtual methods
.method public observe()V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/smartbatre/BatteryController$SettingsObserver;->mRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/smartbatre/BatteryController$SettingsObserver;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/smartbatre/BatteryController$SettingsObserver;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/smartbatre/BatteryController$SettingsObserver;->STYLE_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/smartbatre/BatteryController$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/policy/smartbatre/BatteryController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/smartbatre/BatteryController;->access$L1000012(Lcom/android/systemui/statusbar/policy/smartbatre/BatteryController;)I

    move-result v2

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/smartbatre/BatteryController$SettingsObserver;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/smartbatre/BatteryController$SettingsObserver;->PERCENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/smartbatre/BatteryController$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/policy/smartbatre/BatteryController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/smartbatre/BatteryController;->access$L1000012(Lcom/android/systemui/statusbar/policy/smartbatre/BatteryController;)I

    move-result v2

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/smartbatre/BatteryController$SettingsObserver;->mRegistered:Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/smartbatre/BatteryController$SettingsObserver;->update()V

    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Landroid/net/Uri;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/smartbatre/BatteryController$SettingsObserver;->update()V

    return-void
.end method
