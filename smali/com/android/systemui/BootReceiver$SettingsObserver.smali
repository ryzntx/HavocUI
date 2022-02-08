.class Lcom/android/systemui/BootReceiver$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "BootReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/BootReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/BootReceiver;


# direct methods
.method constructor <init>(Lcom/android/systemui/BootReceiver;Landroid/os/Handler;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/android/systemui/BootReceiver$SettingsObserver;->this$0:Lcom/android/systemui/BootReceiver;

    .line 40
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method observe()V
    .locals 3

    .line 44
    iget-object v0, p0, Lcom/android/systemui/BootReceiver$SettingsObserver;->this$0:Lcom/android/systemui/BootReceiver;

    invoke-static {v0}, Lcom/android/systemui/BootReceiver;->access$000(Lcom/android/systemui/BootReceiver;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "show_cpu_overlay"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 47
    iget-object v0, p0, Lcom/android/systemui/BootReceiver$SettingsObserver;->this$0:Lcom/android/systemui/BootReceiver;

    invoke-static {v0}, Lcom/android/systemui/BootReceiver;->access$000(Lcom/android/systemui/BootReceiver;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "show_fps_overlay"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 50
    invoke-virtual {p0}, Lcom/android/systemui/BootReceiver$SettingsObserver;->update()V

    return-void
.end method

.method public onChange(Z)V
    .locals 0

    .line 55
    invoke-virtual {p0}, Lcom/android/systemui/BootReceiver$SettingsObserver;->update()V

    return-void
.end method

.method public update()V
    .locals 5

    .line 59
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/systemui/BootReceiver$SettingsObserver;->this$0:Lcom/android/systemui/BootReceiver;

    invoke-static {v1}, Lcom/android/systemui/BootReceiver;->access$000(Lcom/android/systemui/BootReceiver;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/android/systemui/CPUInfoService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 60
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/systemui/BootReceiver$SettingsObserver;->this$0:Lcom/android/systemui/BootReceiver;

    invoke-static {v2}, Lcom/android/systemui/BootReceiver;->access$000(Lcom/android/systemui/BootReceiver;)Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/android/systemui/FPSInfoService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 61
    iget-object v2, p0, Lcom/android/systemui/BootReceiver$SettingsObserver;->this$0:Lcom/android/systemui/BootReceiver;

    invoke-static {v2}, Lcom/android/systemui/BootReceiver;->access$000(Lcom/android/systemui/BootReceiver;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "show_cpu_overlay"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    .line 62
    iget-object v2, p0, Lcom/android/systemui/BootReceiver$SettingsObserver;->this$0:Lcom/android/systemui/BootReceiver;

    invoke-static {v2}, Lcom/android/systemui/BootReceiver;->access$000(Lcom/android/systemui/BootReceiver;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 64
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/BootReceiver$SettingsObserver;->this$0:Lcom/android/systemui/BootReceiver;

    invoke-static {v2}, Lcom/android/systemui/BootReceiver;->access$000(Lcom/android/systemui/BootReceiver;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 66
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/BootReceiver$SettingsObserver;->this$0:Lcom/android/systemui/BootReceiver;

    invoke-static {v0}, Lcom/android/systemui/BootReceiver;->access$000(Lcom/android/systemui/BootReceiver;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "show_fps_overlay"

    invoke-static {v0, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    .line 67
    iget-object p0, p0, Lcom/android/systemui/BootReceiver$SettingsObserver;->this$0:Lcom/android/systemui/BootReceiver;

    invoke-static {p0}, Lcom/android/systemui/BootReceiver;->access$000(Lcom/android/systemui/BootReceiver;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_1

    .line 69
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/BootReceiver$SettingsObserver;->this$0:Lcom/android/systemui/BootReceiver;

    invoke-static {p0}, Lcom/android/systemui/BootReceiver;->access$000(Lcom/android/systemui/BootReceiver;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    :goto_1
    return-void
.end method
