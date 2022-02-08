.class Lcom/android/systemui/biometrics/FODCircleView$CustomSettingsObserver;
.super Landroid/database/ContentObserver;
.source "FODCircleView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/biometrics/FODCircleView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustomSettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/biometrics/FODCircleView;


# direct methods
.method constructor <init>(Lcom/android/systemui/biometrics/FODCircleView;Landroid/os/Handler;)V
    .locals 0

    .line 286
    iput-object p1, p0, Lcom/android/systemui/biometrics/FODCircleView$CustomSettingsObserver;->this$0:Lcom/android/systemui/biometrics/FODCircleView;

    .line 287
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method observe()V
    .locals 4

    .line 291
    iget-object v0, p0, Lcom/android/systemui/biometrics/FODCircleView$CustomSettingsObserver;->this$0:Lcom/android/systemui/biometrics/FODCircleView;

    invoke-static {v0}, Lcom/android/systemui/biometrics/FODCircleView;->access$1700(Lcom/android/systemui/biometrics/FODCircleView;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_off_fod"

    .line 292
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v1, "screen_off_fod_icon"

    .line 295
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 306
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/FODCircleView$CustomSettingsObserver;->update()V

    return-void
.end method

.method unobserve()V
    .locals 1

    .line 301
    iget-object v0, p0, Lcom/android/systemui/biometrics/FODCircleView$CustomSettingsObserver;->this$0:Lcom/android/systemui/biometrics/FODCircleView;

    invoke-static {v0}, Lcom/android/systemui/biometrics/FODCircleView;->access$1700(Lcom/android/systemui/biometrics/FODCircleView;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method update()V
    .locals 5

    .line 310
    iget-object v0, p0, Lcom/android/systemui/biometrics/FODCircleView$CustomSettingsObserver;->this$0:Lcom/android/systemui/biometrics/FODCircleView;

    invoke-static {v0}, Lcom/android/systemui/biometrics/FODCircleView;->access$1700(Lcom/android/systemui/biometrics/FODCircleView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_off_fod"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-static {v0, v1}, Lcom/android/systemui/biometrics/FODCircleView;->access$1802(Lcom/android/systemui/biometrics/FODCircleView;Z)Z

    .line 312
    iget-object v0, p0, Lcom/android/systemui/biometrics/FODCircleView$CustomSettingsObserver;->this$0:Lcom/android/systemui/biometrics/FODCircleView;

    invoke-static {v0}, Lcom/android/systemui/biometrics/FODCircleView;->access$1700(Lcom/android/systemui/biometrics/FODCircleView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "screen_off_fod_icon"

    invoke-static {v1, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    move v1, v3

    :goto_1
    invoke-static {v0, v1}, Lcom/android/systemui/biometrics/FODCircleView;->access$1902(Lcom/android/systemui/biometrics/FODCircleView;Z)Z

    .line 314
    iget-object v0, p0, Lcom/android/systemui/biometrics/FODCircleView$CustomSettingsObserver;->this$0:Lcom/android/systemui/biometrics/FODCircleView;

    invoke-static {v0}, Lcom/android/systemui/biometrics/FODCircleView;->access$1800(Lcom/android/systemui/biometrics/FODCircleView;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p0, p0, Lcom/android/systemui/biometrics/FODCircleView$CustomSettingsObserver;->this$0:Lcom/android/systemui/biometrics/FODCircleView;

    invoke-static {p0}, Lcom/android/systemui/biometrics/FODCircleView;->access$1900(Lcom/android/systemui/biometrics/FODCircleView;)Z

    move-result p0

    if-nez p0, :cond_2

    move v3, v2

    :cond_2
    invoke-static {v0, v3}, Lcom/android/systemui/biometrics/FODCircleView;->access$702(Lcom/android/systemui/biometrics/FODCircleView;Z)Z

    return-void
.end method
