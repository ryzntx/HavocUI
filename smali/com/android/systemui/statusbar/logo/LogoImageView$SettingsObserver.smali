.class Lcom/android/systemui/statusbar/logo/LogoImageView$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "LogoImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/logo/LogoImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/logo/LogoImageView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/logo/LogoImageView;Landroid/os/Handler;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/android/systemui/statusbar/logo/LogoImageView$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/logo/LogoImageView;

    .line 46
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method observe()V
    .locals 3

    .line 50
    iget-object v0, p0, Lcom/android/systemui/statusbar/logo/LogoImageView$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/logo/LogoImageView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/logo/LogoImageView;->access$000(Lcom/android/systemui/statusbar/logo/LogoImageView;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "status_bar_logo"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 52
    iget-object v0, p0, Lcom/android/systemui/statusbar/logo/LogoImageView$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/logo/LogoImageView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/logo/LogoImageView;->access$000(Lcom/android/systemui/statusbar/logo/LogoImageView;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "status_bar_logo_position"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 54
    iget-object v0, p0, Lcom/android/systemui/statusbar/logo/LogoImageView$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/logo/LogoImageView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/logo/LogoImageView;->access$000(Lcom/android/systemui/statusbar/logo/LogoImageView;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "status_bar_logo_style"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public onChange(Z)V
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/android/systemui/statusbar/logo/LogoImageView$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/logo/LogoImageView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/logo/LogoImageView;->updateSettings()V

    return-void
.end method
