.class final Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "BarBackgroundUpdater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x3a
    name = "SettingsObserver"
.end annotation


# direct methods
.method constructor <init>(Landroid/os/Handler;)V
    .locals 0

    .line 441
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5
    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v4, -0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 446
    sget-object v0, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 447
    const-string v0, "ACCENT_COLOR"

    invoke-static {v3, v0, v1, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eq v0, v2, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->accent:Z

    .line 448
    const-string v0, "LINKED_COLOR"

    invoke-static {v3, v0, v1, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eq v0, v2, :cond_1

    move v0, v1

    :goto_1
    sput-boolean v0, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->linkedColor:Z

    .line 449
    const-string v0, "ABU_ABU"

    invoke-static {v3, v0, v1, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eq v0, v2, :cond_2

    move v0, v1

    :goto_2
    sput-boolean v0, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->abu:Z

    .line 450
    const-string v0, "UI_COLOR"

    invoke-static {v3, v0, v1, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eq v0, v2, :cond_3

    move v0, v1

    :goto_3
    sput-boolean v0, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->reverse:Z

    .line 451
    const-string v0, "DYNAMIC_STATUS_BAR_STATE"

    invoke-static {v3, v0, v1, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eq v0, v2, :cond_4

    move v0, v1

    :goto_4
    sput-boolean v0, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->mStatusEnabled:Z

    .line 452
    const-string v0, "DYNAMIC_NOTIF_STATE"

    invoke-static {v3, v0, v1, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eq v0, v2, :cond_5

    move v0, v1

    :goto_5
    sput-boolean v0, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->mNotifEnabled:Z

    .line 453
    const-string v0, "DYNAMIC_HEADER_STATE"

    invoke-static {v3, v0, v1, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eq v0, v2, :cond_6

    move v0, v1

    :goto_6
    sput-boolean v0, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->mHeaderEnabled:Z

    .line 454
    const-string v0, "DYNAMIC_SYSTEM_BARS_GRADIENT_STATE"

    invoke-static {v3, v0, v1, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eq v0, v2, :cond_7

    move v0, v1

    :goto_7
    sput-boolean v0, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->mStatusGradientEnabled:Z

    .line 455
    const-string v0, "DYNAMIC_NAVIGATION_BARS_GRADIENT_STATE"

    invoke-static {v3, v0, v1, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eq v0, v2, :cond_8

    move v0, v1

    :goto_8
    sput-boolean v0, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->mNavigationGradientEnabled:Z

    .line 456
    const-string v0, "DYNAMIC_NAVIGATION_BAR_STATE"

    invoke-static {v3, v0, v1, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eq v0, v2, :cond_9

    move v0, v1

    :goto_9
    sput-boolean v0, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->mNavigationEnabled:Z

    .line 457
    const-string v0, "DYNAMIC_STATUS_BAR_FILTER_STATE"

    invoke-static {v3, v0, v1, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eq v0, v2, :cond_a

    :goto_a
    sput-boolean v1, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->mStatusFilterEnabled:Z

    .line 458
    const-string v0, "EXPERIMENTAL_DSB_FREQUENCY"

    const/16 v1, 0xff

    invoke-static {v3, v0, v1, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    sput v0, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->mTransparency:I

    return-void

    :cond_0
    move v0, v2

    .line 447
    goto :goto_0

    :cond_1
    move v0, v2

    .line 448
    goto :goto_1

    :cond_2
    move v0, v2

    .line 449
    goto :goto_2

    :cond_3
    move v0, v2

    .line 450
    goto :goto_3

    :cond_4
    move v0, v2

    .line 451
    goto :goto_4

    :cond_5
    move v0, v2

    .line 452
    goto :goto_5

    :cond_6
    move v0, v2

    .line 453
    goto :goto_6

    :cond_7
    move v0, v2

    .line 454
    goto :goto_7

    :cond_8
    move v0, v2

    .line 455
    goto :goto_8

    :cond_9
    move v0, v2

    .line 456
    goto :goto_9

    :cond_a
    move v1, v2

    .line 457
    goto :goto_a
.end method
