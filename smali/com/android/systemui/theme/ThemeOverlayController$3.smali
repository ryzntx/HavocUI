.class Lcom/android/systemui/theme/ThemeOverlayController$3;
.super Landroid/database/ContentObserver;
.source "ThemeOverlayController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/theme/ThemeOverlayController;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/theme/ThemeOverlayController;

.field final synthetic val$mMonetWatcher:Lcom/android/systemui/custom/MonetWatcher;

.field final synthetic val$monetEnabled:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/theme/ThemeOverlayController;Landroid/os/Handler;ZLcom/android/systemui/custom/MonetWatcher;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/android/systemui/theme/ThemeOverlayController$3;->this$0:Lcom/android/systemui/theme/ThemeOverlayController;

    iput-boolean p3, p0, Lcom/android/systemui/theme/ThemeOverlayController$3;->val$monetEnabled:Z

    iput-object p4, p0, Lcom/android/systemui/theme/ThemeOverlayController$3;->val$mMonetWatcher:Lcom/android/systemui/custom/MonetWatcher;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method

.method private reloadAssets(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    const-string p0, "overlay"

    .line 151
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Landroid/content/om/IOverlayManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/om/IOverlayManager;

    move-result-object p0

    const/4 v0, -0x2

    .line 152
    invoke-interface {p0, p1, v0}, Landroid/content/om/IOverlayManager;->reloadAssets(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 154
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unable to reload resources for "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ThemeOverlayController"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 2

    const-string p1, "display_cutout_mode"

    .line 128
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "com.android.launcher3"

    .line 129
    invoke-direct {p0, p1}, Lcom/android/systemui/theme/ThemeOverlayController$3;->reloadAssets(Ljava/lang/String;)V

    .line 130
    iget-object p2, p0, Lcom/android/systemui/theme/ThemeOverlayController$3;->this$0:Lcom/android/systemui/theme/ThemeOverlayController;

    invoke-static {p2}, Lcom/android/systemui/theme/ThemeOverlayController;->access$100(Lcom/android/systemui/theme/ThemeOverlayController;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/android/systemui/theme/ThemeOverlayController;->access$200(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    .line 131
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 132
    invoke-direct {p0, p2}, Lcom/android/systemui/theme/ThemeOverlayController$3;->reloadAssets(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_0
    const-string p1, "accent_dark"

    .line 134
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v0, "com.android.systemui"

    const-string v1, "android"

    if-nez p1, :cond_3

    const-string p1, "accent_light"

    .line 135
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "monet_engine"

    .line 136
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "monet_base_accent"

    .line 137
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/android/systemui/theme/ThemeOverlayController$3;->val$monetEnabled:Z

    if-eqz p1, :cond_1

    goto :goto_0

    .line 140
    :cond_1
    iget-boolean p1, p0, Lcom/android/systemui/theme/ThemeOverlayController$3;->val$monetEnabled:Z

    if-eqz p1, :cond_4

    const-string p1, "monet_chroma"

    .line 141
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "monet_lightness"

    .line 142
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "monet_wallpaper_color_picker"

    .line 143
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 144
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/theme/ThemeOverlayController$3;->val$mMonetWatcher:Lcom/android/systemui/custom/MonetWatcher;

    invoke-virtual {p1}, Lcom/android/systemui/custom/MonetWatcher;->forceUpdate()V

    .line 145
    invoke-direct {p0, v1}, Lcom/android/systemui/theme/ThemeOverlayController$3;->reloadAssets(Ljava/lang/String;)V

    .line 146
    invoke-direct {p0, v0}, Lcom/android/systemui/theme/ThemeOverlayController$3;->reloadAssets(Ljava/lang/String;)V

    goto :goto_1

    .line 138
    :cond_3
    :goto_0
    invoke-direct {p0, v1}, Lcom/android/systemui/theme/ThemeOverlayController$3;->reloadAssets(Ljava/lang/String;)V

    .line 139
    invoke-direct {p0, v0}, Lcom/android/systemui/theme/ThemeOverlayController$3;->reloadAssets(Ljava/lang/String;)V

    :cond_4
    :goto_1
    return-void
.end method
