.class Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater$3;
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
    name = "3"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v4, 0x0

    .line 249
    :goto_0
    const/16 v5, -0xa

    const v6, 0x3f333333    # 0.7f

    .line 251
    sget-boolean v2, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->PAUSED:Z

    if-eqz v2, :cond_0

    .line 253
    :try_start_0
    const-string v2, "com.android.systemui.statusbar.phone.BarBackgroundUpdater"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    monitor-enter v3

    .line 255
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

    .line 257
    monitor-exit v3

    goto :goto_0

    .line 253
    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v3

    .line 255
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

    .line 257
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 320
    :goto_1
    return-void

    .line 257
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 264
    :cond_0
    sget-boolean v2, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->mNotifEnabled:Z

    if-eqz v2, :cond_9

    .line 265
    sget-object v2, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->mContext:Landroid/content/Context;

    .line 267
    if-nez v2, :cond_1

    .line 271
    const/16 v2, 0x3e8

    int-to-long v2, v2

    :try_start_5
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_0

    :catch_3
    move-exception v2

    goto :goto_1

    .line 279
    :cond_1
    sget v3, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->mDynamicColor:I

    .line 281
    if-nez v3, :cond_5

    move v2, v4

    .line 282
    :goto_2
    sget-boolean v7, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->mStatusFilterEnabled:Z

    if-eqz v7, :cond_2

    int-to-float v5, v5

    invoke-static {v3, v5}, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->filter(IF)I

    move-result v3

    .line 283
    :cond_2
    sput v3, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->notipOverrideColor:I

    sput v3, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->notifOverrideColor:I

    .line 284
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->cekbriknes(I)F

    move-result v5

    cmpl-float v5, v5, v6

    if-lez v5, :cond_3

    if-nez v2, :cond_6

    :cond_3
    sget v2, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->parseColorLight:I

    :goto_3
    sput v2, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->notipIconOverrideColor:I

    sput v2, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->notifIconOverrideColor:I

    .line 286
    sget-boolean v5, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->mNotifEnabled:Z

    .line 287
    if-eqz v5, :cond_7

    .line 288
    :goto_4
    if-eqz v5, :cond_8

    .line 290
    :goto_5
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->updateNotificationColor(I)V

    .line 291
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->updateNotipColor(I)V

    .line 292
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->updateNotificationIconColor(I)V

    .line 293
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->updateNotipIconColor(I)V

    .line 304
    :goto_6
    :try_start_6
    const-string v2, "com.android.systemui.statusbar.phone.BarBackgroundUpdater"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_6} :catch_5

    move-result-object v5

    monitor-enter v5

    .line 305
    :try_start_7
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 307
    sget-object v2, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->mListeners:Ljava/util/ArrayList;

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 309
    :cond_4
    :goto_7
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_a

    .line 313
    move-object v0, v3

    check-cast v0, Ljava/util/Collection;

    move-object v2, v0

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 314
    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-result v2

    if-nez v2, :cond_b

    monitor-exit v5

    .line 318
    :try_start_8
    sget-wide v2, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->sMinDelay:J

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_4

    goto/16 :goto_0

    :catch_4
    move-exception v2

    goto :goto_1

    .line 281
    :cond_5
    const/4 v2, 0x1

    goto :goto_2

    .line 284
    :cond_6
    sget v2, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->parseColorDark:I

    goto :goto_3

    :cond_7
    move v3, v4

    .line 287
    goto :goto_4

    :cond_8
    move v2, v4

    .line 288
    goto :goto_5

    .line 297
    :cond_9
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->updateNotificationColor(I)V

    .line 298
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->updateNotificationIconColor(I)V

    .line 299
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->updateNotipColor(I)V

    .line 300
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->updateNotipIconColor(I)V

    goto :goto_6

    .line 304
    :catch_5
    move-exception v2

    new-instance v3, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v3

    .line 307
    :cond_a
    :try_start_9
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater$UpdateListener;

    .line 308
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater$UpdateListener;->shouldGc()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 309
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_7

    .line 314
    :catchall_1
    move-exception v2

    monitor-exit v5

    throw v2

    .line 313
    :cond_b
    :try_start_a
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater$UpdateListener;

    .line 314
    sget-object v6, Lcom/android/systemui/statusbar/phone/BarBackgroundUpdater;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_8
.end method
