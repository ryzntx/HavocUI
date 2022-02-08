.class public Lcom/android/systemui/statusbar/phone/NotificationLightsView;
.super Landroid/widget/RelativeLayout;
.source "NotificationLightsView.java"


# instance fields
.field private mLightAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 58
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/NotificationLightsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 62
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/phone/NotificationLightsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 66
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/statusbar/phone/NotificationLightsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 70
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method public animateNotificationWithColor(I)V
    .locals 16

    move-object/from16 v6, p0

    move/from16 v0, p1

    .line 122
    iget-object v1, v6, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "ambient_notification_light_duration"

    const/4 v3, 0x2

    const/4 v4, -0x2

    .line 123
    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    const-string v5, "ambient_notification_light_repeats"

    const/4 v7, 0x3

    .line 126
    invoke-static {v1, v5, v7, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    .line 129
    iget-object v7, v6, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "ambient_light_repeat_direction"

    const/4 v9, 0x0

    invoke-static {v7, v8, v9, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    const/4 v8, 0x1

    if-eq v7, v8, :cond_0

    move v7, v8

    goto :goto_0

    :cond_0
    move v7, v9

    .line 132
    :goto_0
    iget-object v10, v6, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "ambient_light_layout"

    invoke-static {v10, v11, v9, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    .line 136
    sget v10, Lcom/android/systemui/R$id;->notification_animation_left_faded:I

    invoke-virtual {v6, v10}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    .line 137
    sget v11, Lcom/android/systemui/R$id;->notification_animation_right_faded:I

    invoke-virtual {v6, v11}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    .line 138
    sget v12, Lcom/android/systemui/R$id;->notification_animation_left_solid:I

    invoke-virtual {v6, v12}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    .line 139
    sget v13, Lcom/android/systemui/R$id;->notification_animation_right_solid:I

    invoke-virtual {v6, v13}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    .line 140
    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 141
    invoke-virtual {v11, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    const/16 v14, 0x8

    if-nez v4, :cond_1

    move v15, v9

    goto :goto_1

    :cond_1
    move v15, v14

    .line 142
    :goto_1
    invoke-virtual {v10, v15}, Landroid/widget/ImageView;->setVisibility(I)V

    if-nez v4, :cond_2

    move v15, v9

    goto :goto_2

    :cond_2
    move v15, v14

    .line 143
    :goto_2
    invoke-virtual {v11, v15}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 144
    invoke-virtual {v12, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 145
    invoke-virtual {v13, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    if-ne v4, v8, :cond_3

    move v0, v9

    goto :goto_3

    :cond_3
    move v0, v14

    .line 146
    :goto_3
    invoke-virtual {v12, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    if-ne v4, v8, :cond_4

    goto :goto_4

    :cond_4
    move v9, v14

    .line 147
    :goto_4
    invoke-virtual {v13, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    new-array v0, v3, [F

    .line 148
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, v6, Lcom/android/systemui/statusbar/phone/NotificationLightsView;->mLightAnimator:Landroid/animation/ValueAnimator;

    int-to-long v14, v2

    .line 149
    invoke-virtual {v0, v14, v15}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 150
    iget-object v0, v6, Lcom/android/systemui/statusbar/phone/NotificationLightsView;->mLightAnimator:Landroid/animation/ValueAnimator;

    if-nez v5, :cond_5

    const/4 v2, -0x1

    goto :goto_5

    :cond_5
    add-int/lit8 v2, v5, -0x1

    :goto_5
    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 152
    iget-object v0, v6, Lcom/android/systemui/statusbar/phone/NotificationLightsView;->mLightAnimator:Landroid/animation/ValueAnimator;

    if-eqz v7, :cond_6

    move v3, v8

    :cond_6
    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    if-eqz v5, :cond_7

    .line 154
    iget-object v0, v6, Lcom/android/systemui/statusbar/phone/NotificationLightsView;->mLightAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/android/systemui/statusbar/phone/NotificationLightsView$1;

    invoke-direct {v2, v6, v1}, Lcom/android/systemui/statusbar/phone/NotificationLightsView$1;-><init>(Lcom/android/systemui/statusbar/phone/NotificationLightsView;Landroid/content/ContentResolver;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 172
    :cond_7
    iget-object v7, v6, Lcom/android/systemui/statusbar/phone/NotificationLightsView;->mLightAnimator:Landroid/animation/ValueAnimator;

    new-instance v8, Lcom/android/systemui/statusbar/phone/NotificationLightsView$2;

    move-object v0, v8

    move-object/from16 v1, p0

    move-object v2, v10

    move-object v3, v11

    move-object v4, v12

    move-object v5, v13

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/NotificationLightsView$2;-><init>(Lcom/android/systemui/statusbar/phone/NotificationLightsView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    invoke-virtual {v7, v8}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 193
    iget-object v0, v6, Lcom/android/systemui/statusbar/phone/NotificationLightsView;->mLightAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x40000000    # 2.0f
    .end array-data
.end method

.method public getNotificationLightsColor()I
    .locals 5

    .line 86
    iget-object v0, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "ambient_notification_color_mode"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 89
    iget-object v1, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "ambient_notification_light_color"

    const/4 v4, -0x1

    invoke-static {v1, v2, v4, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 p0, 0x3

    if-eq v0, p0, :cond_0

    goto :goto_0

    :cond_0
    move v4, v1

    goto :goto_0

    .line 110
    :cond_1
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settingslib/Utils;->getColorAccentDefaultColor(Landroid/content/Context;)I

    move-result v4

    goto :goto_0

    .line 95
    :cond_2
    :try_start_0
    iget-object p0, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object p0

    .line 96
    invoke-virtual {p0}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v0

    if-nez v0, :cond_3

    .line 98
    invoke-virtual {p0}, Landroid/app/WallpaperManager;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 99
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 101
    invoke-static {p0}, Landroidx/palette/graphics/Palette;->from(Landroid/graphics/Bitmap;)Landroidx/palette/graphics/Palette$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/palette/graphics/Palette$Builder;->generate()Landroidx/palette/graphics/Palette;

    move-result-object p0

    .line 102
    invoke-virtual {p0, v4}, Landroidx/palette/graphics/Palette;->getDominantColor(I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eq v4, p0, :cond_3

    move v4, p0

    :catch_0
    :cond_3
    :goto_0
    return v4
.end method

.method public stopAnimateNotification()V
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationLightsView;->mLightAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    const/4 v0, 0x0

    .line 76
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationLightsView;->mLightAnimator:Landroid/animation/ValueAnimator;

    :cond_0
    return-void
.end method
