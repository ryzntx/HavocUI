.class Lcom/android/systemui/statusbar/phone/LightBarController$CustomSettingsObserver;
.super Landroid/database/ContentObserver;
.source "LightBarController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/LightBarController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustomSettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/LightBarController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/LightBarController;Landroid/os/Handler;)V
    .locals 0

    .line 315
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/LightBarController$CustomSettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/LightBarController;

    .line 316
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method observe()V
    .locals 3

    .line 320
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController$CustomSettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/LightBarController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/LightBarController;->access$000(Lcom/android/systemui/statusbar/phone/LightBarController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "display_cutout_mode"

    .line 321
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public onChange(Z)V
    .locals 0

    .line 334
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LightBarController$CustomSettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/LightBarController;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/phone/LightBarController;->access$100(Lcom/android/systemui/statusbar/phone/LightBarController;Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    const-string p1, "display_cutout_mode"

    .line 327
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 328
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LightBarController$CustomSettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/LightBarController;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/phone/LightBarController;->access$100(Lcom/android/systemui/statusbar/phone/LightBarController;Landroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method
