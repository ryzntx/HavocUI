.class public Lcom/android/systemui/BootReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BootReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/BootReceiver$SettingsObserver;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mSettingsObserver:Lcom/android/systemui/BootReceiver$SettingsObserver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 34
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/BootReceiver;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/BootReceiver;)Landroid/content/Context;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/android/systemui/BootReceiver;->mContext:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 77
    :try_start_0
    iput-object p1, p0, Lcom/android/systemui/BootReceiver;->mContext:Landroid/content/Context;

    .line 78
    iget-object p1, p0, Lcom/android/systemui/BootReceiver;->mSettingsObserver:Lcom/android/systemui/BootReceiver$SettingsObserver;

    if-nez p1, :cond_0

    .line 79
    new-instance p1, Lcom/android/systemui/BootReceiver$SettingsObserver;

    iget-object p2, p0, Lcom/android/systemui/BootReceiver;->mHandler:Landroid/os/Handler;

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/BootReceiver$SettingsObserver;-><init>(Lcom/android/systemui/BootReceiver;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/systemui/BootReceiver;->mSettingsObserver:Lcom/android/systemui/BootReceiver$SettingsObserver;

    .line 80
    invoke-virtual {p1}, Lcom/android/systemui/BootReceiver$SettingsObserver;->observe()V

    .line 84
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/BootReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "show_cpu_overlay"

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_1

    .line 85
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcom/android/systemui/BootReceiver;->mContext:Landroid/content/Context;

    const-class v1, Lcom/android/systemui/CPUInfoService;

    invoke-direct {p1, p2, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 86
    iget-object p2, p0, Lcom/android/systemui/BootReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {p2, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 90
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/BootReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "show_fps_overlay"

    invoke-static {p1, p2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_2

    .line 91
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcom/android/systemui/BootReceiver;->mContext:Landroid/content/Context;

    const-class v0, Lcom/android/systemui/FPSInfoService;

    invoke-direct {p1, p2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 92
    iget-object p0, p0, Lcom/android/systemui/BootReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "SystemUIBootReceiver"

    const-string p2, "Can\'t start load average service"

    .line 96
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_0
    return-void
.end method
