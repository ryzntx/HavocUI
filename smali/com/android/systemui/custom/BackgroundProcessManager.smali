.class public Lcom/android/systemui/custom/BackgroundProcessManager;
.super Ljava/lang/Object;
.source "BackgroundProcessManager.java"


# static fields
.field private static mActivityManager:Landroid/app/ActivityManager;

.field private static mContext:Landroid/content/Context;

.field private static final mHandler:Landroid/os/Handler;

.field private static final mStartRunnable:Ljava/lang/Runnable;

.field private static final mStopRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/android/systemui/custom/BackgroundProcessManager;->mHandler:Landroid/os/Handler;

    .line 41
    sget-object v0, Lcom/android/systemui/custom/-$$Lambda$BackgroundProcessManager$dd5I6EmOfHjomBtjE7PzRxSItUg;->INSTANCE:Lcom/android/systemui/custom/-$$Lambda$BackgroundProcessManager$dd5I6EmOfHjomBtjE7PzRxSItUg;

    sput-object v0, Lcom/android/systemui/custom/BackgroundProcessManager;->mStartRunnable:Ljava/lang/Runnable;

    .line 43
    sget-object v0, Lcom/android/systemui/custom/-$$Lambda$U4disPeMgTpC7wxH8HVHlQDRJDs;->INSTANCE:Lcom/android/systemui/custom/-$$Lambda$U4disPeMgTpC7wxH8HVHlQDRJDs;

    sput-object v0, Lcom/android/systemui/custom/BackgroundProcessManager;->mStopRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1

    .line 37
    sput-object p0, Lcom/android/systemui/custom/BackgroundProcessManager;->mContext:Landroid/content/Context;

    const-string v0, "activity"

    .line 38
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    sput-object p0, Lcom/android/systemui/custom/BackgroundProcessManager;->mActivityManager:Landroid/app/ActivityManager;

    return-void
.end method

.method private static killProcesses()V
    .locals 5

    .line 73
    sget-object v0, Lcom/android/systemui/custom/BackgroundProcessManager;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 75
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 76
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    aget-object v3, v3, v1

    const-string v4, "android"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 77
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    aget-object v3, v3, v1

    const-string v4, "com.android."

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 78
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    aget-object v3, v3, v1

    const-string v4, "launcher"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 79
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    aget-object v3, v3, v1

    const-string v4, "ims"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 80
    sget-object v3, Lcom/android/systemui/custom/BackgroundProcessManager;->mActivityManager:Landroid/app/ActivityManager;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v4, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Landroid/app/ActivityManager;->killBackgroundProcesses(Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static synthetic lambda$dd5I6EmOfHjomBtjE7PzRxSItUg()V
    .locals 0

    invoke-static {}, Lcom/android/systemui/custom/BackgroundProcessManager;->killProcesses()V

    return-void
.end method

.method public static start()V
    .locals 8

    .line 46
    sget-object v0, Lcom/android/systemui/custom/BackgroundProcessManager;->mContext:Landroid/content/Context;

    const-string v1, "alarm"

    .line 47
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    invoke-virtual {v0}, Landroid/app/AlarmManager;->getNextAlarmClock()Landroid/app/AlarmManager$AlarmClockInfo;

    move-result-object v0

    .line 48
    sget-object v1, Lcom/android/systemui/custom/BackgroundProcessManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "sleep_mode_enabled"

    const/4 v3, 0x0

    const/4 v4, -0x2

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move v3, v2

    :cond_0
    const-wide/16 v1, 0x0

    if-eqz v0, :cond_1

    .line 53
    invoke-virtual {v0}, Landroid/app/AlarmManager$AlarmClockInfo;->getTriggerTime()J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v4, v6

    goto :goto_0

    :cond_1
    move-wide v4, v1

    :goto_0
    if-nez v3, :cond_3

    cmp-long v0, v4, v1

    const-wide/32 v6, 0x36ee80

    if-eqz v0, :cond_2

    cmp-long v0, v4, v6

    if-gez v0, :cond_2

    goto :goto_1

    .line 59
    :cond_2
    sget-object v0, Lcom/android/systemui/custom/BackgroundProcessManager;->mHandler:Landroid/os/Handler;

    sget-object v3, Lcom/android/systemui/custom/BackgroundProcessManager;->mStartRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v3, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    .line 57
    :cond_3
    :goto_1
    sget-object v0, Lcom/android/systemui/custom/BackgroundProcessManager;->mHandler:Landroid/os/Handler;

    sget-object v3, Lcom/android/systemui/custom/BackgroundProcessManager;->mStartRunnable:Ljava/lang/Runnable;

    const-wide/16 v6, 0x64

    invoke-virtual {v0, v3, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_2
    cmp-long v0, v4, v1

    if-eqz v0, :cond_4

    .line 63
    sget-object v0, Lcom/android/systemui/custom/BackgroundProcessManager;->mHandler:Landroid/os/Handler;

    sget-object v1, Lcom/android/systemui/custom/BackgroundProcessManager;->mStopRunnable:Ljava/lang/Runnable;

    const-wide/32 v2, 0xdbba0

    sub-long/2addr v4, v2

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    return-void
.end method

.method public static stop()V
    .locals 2

    .line 68
    sget-object v0, Lcom/android/systemui/custom/BackgroundProcessManager;->mHandler:Landroid/os/Handler;

    sget-object v1, Lcom/android/systemui/custom/BackgroundProcessManager;->mStartRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 69
    sget-object v0, Lcom/android/systemui/custom/BackgroundProcessManager;->mHandler:Landroid/os/Handler;

    sget-object v1, Lcom/android/systemui/custom/BackgroundProcessManager;->mStopRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method
