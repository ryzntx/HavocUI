.class Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "NotificationShadeWindowController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;Landroid/os/Handler;)V
    .locals 0

    .line 761
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;

    .line 762
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public observe(Landroid/content/Context;)V
    .locals 3

    .line 766
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accelerometer_rotation"

    .line 767
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    .line 766
    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 769
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "lockscreen_rotation"

    .line 770
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 769
    invoke-virtual {p1, v0, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public onChange(Z)V
    .locals 1

    .line 780
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->access$400(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;)Z

    move-result v0

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->access$302(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;Z)Z

    .line 782
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->access$500(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;)Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController$State;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->access$600(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController$State;)V

    return-void
.end method
