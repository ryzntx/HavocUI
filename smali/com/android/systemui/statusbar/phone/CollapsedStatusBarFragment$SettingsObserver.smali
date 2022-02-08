.class Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "CollapsedStatusBarFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;Landroid/os/Handler;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;

    .line 106
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method observe()V
    .locals 4

    .line 110
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->access$000(Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "carrier_label_enabled"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 113
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->access$000(Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "carrier_label_location"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 116
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->access$000(Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "statusbar_clock"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 119
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->access$000(Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "statusbar_clock_style"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method public onChange(Z)V
    .locals 0

    .line 126
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;->updateSettings(Z)V

    return-void
.end method
