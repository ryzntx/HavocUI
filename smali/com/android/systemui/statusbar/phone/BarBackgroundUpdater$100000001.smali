.class Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater$2;
.super Ljava/lang/Object;
.source "BarBackgroundUpdater.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "2"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15
    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 96
    :goto_0
    const v8, 0x3e99999a    # 0.3f

    const/16 v6, -0xa

    const v9, 0x3f333333    # 0.7f

    .line 98
    sget-boolean v2, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->PAUSED:Z

    if-eqz v2, :cond_0

    .line 100
    :try_start_0
    const-string v2, "com.android.systemui.statusbar.phone.BarBackgroundUpdater"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    monitor-enter v3

    .line 102
    :try_start_1
    const-string v2, "com.android.systemui.statusbar.phone.BarBackgroundUpdater"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 104
    monitor-exit v3

    goto :goto_0

    .line 100
    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v3

    .line 102
    :catch_1
    move-exception v2

    :try_start_3
    new-instance v4, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catch_2
    move-exception v2

    .line 104
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 238
    :goto_1
    return-void

    .line 104
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 111
    :cond_0
    sget-boolean v2, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->mStatusEnabled:Z

    if-nez v2, :cond_1

    sget-boolean v2, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->mNavigationEnabled:Z

    if-nez v2, :cond_1

    sget-boolean v2, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->mHeaderEnabled:Z

    if-nez v2, :cond_1

    move v2, v4

    .line 113
    :goto_2
    if-eqz v2, :cond_1c

    .line 114
    sget-object v10, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->mContext:Landroid/content/Context;

    .line 115
    const/16 v11, 0x3e8

    .line 117
    if-nez v10, :cond_2

    .line 121
    int-to-long v2, v11

    :try_start_5
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_0

    :catch_3
    move-exception v2

    goto :goto_1

    :cond_1
    move v2, v5

    .line 111
    goto :goto_2

    .line 129
    :cond_2
    const-string v2, "window"

    invoke-virtual {v10, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 132
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v2

    .line 133
    if-eq v2, v5, :cond_3

    const/4 v3, 0x3

    if-eq v2, v3, :cond_3

    move v2, v4

    .line 136
    :goto_3
    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 137
    const-string v7, "status_bar_height"

    const-string v12, "dimen"

    const-string v13, "android"

    invoke-virtual {v3, v7, v12, v13}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 139
    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    const-string v13, "navigation_bar_height"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    if-eqz v2, :cond_4

    const-string v2, "_landscape"

    :goto_4
    invoke-virtual {v12, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v12, "dimen"

    const-string v13, "android"

    invoke-virtual {v3, v2, v12, v13}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    .line 143
    const-string v2, "#FFFFFFFF"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->parseColorLight:I

    .line 144
    sget-boolean v2, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->accent:Z

    if-eqz v2, :cond_5

    const-string v2, "accent_device_default_light"

    const-string v13, "color"

    const-string v14, "android"

    invoke-virtual {v3, v2, v13, v14}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    :goto_5
    sput v2, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->parseColorDark:I

    .line 146
    invoke-static {}, Lcom/znxt/systemui/DynamicUtils;->TakeScreenshotSurface()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v2, v7}, Lcom/znxt/systemui/DynamicUtils;->getTargetColorStatusBar(Landroid/graphics/Bitmap;I)I

    move-result v3

    .line 147
    sget-boolean v2, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->linkedColor:Z

    if-eqz v2, :cond_7

    move v7, v3

    .line 149
    :goto_6
    if-gtz v12, :cond_8

    sget-boolean v2, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->mNavigationEnabled:Z

    if-eqz v2, :cond_8

    .line 151
    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "DYNAMIC_NAVIGATION_BAR_STATE"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 156
    int-to-long v2, v11

    :try_start_6
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_4

    goto/16 :goto_0

    :catch_4
    move-exception v2

    goto/16 :goto_1

    :cond_3
    move v2, v5

    .line 133
    goto :goto_3

    .line 139
    :cond_4
    const-string v2, ""

    goto :goto_4

    .line 144
    :cond_5
    sget-boolean v2, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->abu:Z

    if-eqz v2, :cond_6

    const-string v2, "#ff646464"

    :goto_7
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    goto :goto_5

    :cond_6
    const-string v2, "#FF000000"

    goto :goto_7

    .line 147
    :cond_7
    invoke-static {}, Lcom/znxt/systemui/DynamicUtils;->TakeScreenshotSurface()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v2, v12}, Lcom/znxt/systemui/DynamicUtils;->getTargetColorNavi(Landroid/graphics/Bitmap;I)I

    move-result v2

    move v7, v2

    goto :goto_6

    .line 164
    :cond_8
    if-nez v3, :cond_e

    move v2, v4

    .line 165
    :goto_8
    sget-boolean v10, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->mStatusFilterEnabled:Z

    if-eqz v10, :cond_9

    int-to-float v6, v6

    invoke-static {v3, v6}, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->filter(IF)I

    move-result v3

    :cond_9
    sput v3, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->headerOverrideColor:I

    sput v3, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->tileOverrideColor:I

    sput v3, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->statusBarOverrideColor:I

    sput v3, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->mDynamicColor:I

    .line 166
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->cekbriknes(I)F

    move-result v6

    cmpl-float v6, v6, v9

    if-lez v6, :cond_a

    if-nez v2, :cond_f

    :cond_a
    sget v2, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->parseColorLight:I

    :goto_9
    sput v2, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->headerIconOverrideColor:I

    sput v2, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->tileIconOverrideColor:I

    sput v2, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->statusBarIconOverrideColor:I

    .line 168
    sget-boolean v10, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->mStatusEnabled:Z

    .line 170
    if-eqz v10, :cond_10

    move v6, v3

    :goto_a
    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->updateStatusBarColor(I)V

    .line 171
    if-eqz v10, :cond_11

    move v6, v2

    :goto_b
    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->updateStatusBarIconColor(I)V

    .line 173
    sget-boolean v6, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->mHeaderEnabled:Z

    .line 175
    if-eqz v6, :cond_12

    .line 176
    :goto_c
    if-eqz v6, :cond_13

    .line 177
    :goto_d
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->updateTileColor(I)V

    .line 178
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->updateTileIconColor(I)V

    .line 179
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->updateHeaderColor(I)V

    .line 180
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->updateHeaderIconColor(I)V

    .line 182
    sget-boolean v2, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->mNavigationEnabled:Z

    if-eqz v2, :cond_1b

    .line 183
    sput v7, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->navigationBarOverrideColor:I

    .line 184
    sget v2, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->statusBarOverrideColor:I

    .line 185
    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->updateNavigationBarColor(I)V

    .line 186
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->cekbriknes(I)F

    move-result v3

    .line 187
    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->cekbriknes(I)F

    move-result v6

    .line 188
    if-nez v7, :cond_14

    move v2, v4

    .line 189
    :goto_e
    cmpl-float v7, v6, v9

    if-lez v7, :cond_b

    if-nez v2, :cond_15

    :cond_b
    sget v2, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->parseColorLight:I

    .line 190
    :goto_f
    sget-boolean v7, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->reverse:Z

    if-eqz v7, :cond_c

    sget-boolean v7, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->mStatusEnabled:Z

    if-nez v7, :cond_16

    .line 191
    :cond_c
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->updateNavigationBarIconColor(I)V

    .line 222
    :goto_10
    :try_start_7
    const-string v2, "com.android.systemui.statusbar.phone.BarBackgroundUpdater"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_7
    .catch Ljava/lang/ClassNotFoundException; {:try_start_7 .. :try_end_7} :catch_6

    move-result-object v6

    monitor-enter v6

    .line 223
    :try_start_8
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 225
    sget-object v2, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->mListeners:Ljava/util/ArrayList;

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 227
    :cond_d
    :goto_11
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1d

    .line 231
    move-object v0, v3

    check-cast v0, Ljava/util/Collection;

    move-object v2, v0

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 232
    :goto_12
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-result v2

    if-nez v2, :cond_1e

    monitor-exit v6

    .line 236
    :try_start_9
    sget-wide v2, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->sMinDelay:J

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_5

    goto/16 :goto_0

    :catch_5
    move-exception v2

    goto/16 :goto_1

    :cond_e
    move v2, v5

    .line 164
    goto/16 :goto_8

    .line 166
    :cond_f
    sget v2, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->parseColorDark:I

    goto/16 :goto_9

    :cond_10
    move v6, v4

    .line 170
    goto :goto_a

    :cond_11
    move v6, v4

    .line 171
    goto :goto_b

    :cond_12
    move v3, v4

    .line 175
    goto :goto_c

    :cond_13
    move v2, v4

    .line 176
    goto :goto_d

    :cond_14
    move v2, v5

    .line 188
    goto :goto_e

    .line 189
    :cond_15
    sget v2, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->parseColorDark:I

    goto :goto_f

    .line 193
    :cond_16
    cmpl-float v7, v3, v9

    if-lez v7, :cond_17

    cmpl-float v7, v6, v9

    if-lez v7, :cond_17

    .line 194
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->updateNavigationBarIconColor(I)V

    goto :goto_10

    .line 195
    :cond_17
    cmpg-float v7, v3, v8

    if-gez v7, :cond_18

    cmpl-float v7, v6, v8

    if-ltz v7, :cond_1a

    .line 196
    :cond_18
    cmpl-float v3, v3, v6

    if-eqz v3, :cond_19

    .line 197
    sget v2, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->statusBarOverrideColor:I

    .line 199
    :cond_19
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->updateNavigationBarIconColor(I)V

    goto :goto_10

    .line 201
    :cond_1a
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->updateNavigationBarIconColor(I)V

    goto :goto_10

    .line 206
    :cond_1b
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->updateNavigationBarColor(I)V

    .line 207
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->updateNavigationBarIconColor(I)V

    goto :goto_10

    .line 211
    :cond_1c
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->updateStatusBarColor(I)V

    .line 212
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->updateStatusBarIconColor(I)V

    .line 213
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->updateNavigationBarColor(I)V

    .line 214
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->updateNavigationBarIconColor(I)V

    .line 215
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->updateHeaderColor(I)V

    .line 216
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->updateHeaderIconColor(I)V

    .line 217
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->updateTileColor(I)V

    .line 218
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->updateTileIconColor(I)V

    goto/16 :goto_10

    .line 222
    :catch_6
    move-exception v2

    new-instance v3, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v3

    .line 225
    :cond_1d
    :try_start_a
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater$UpdateListener;

    .line 226
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater$UpdateListener;->shouldGc()Z

    move-result v8

    if-eqz v8, :cond_d

    .line 227
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto/16 :goto_11

    .line 232
    :catchall_1
    move-exception v2

    monitor-exit v6

    throw v2

    .line 231
    :cond_1e
    :try_start_b
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater$UpdateListener;

    .line 232
    sget-object v7, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto/16 :goto_12
.end method
