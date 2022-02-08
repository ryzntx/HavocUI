.class public Lcom/android/systemui/screenrecord/RecordingService;
.super Landroid/app/Service;
.source "RecordingService.java"

# interfaces
.implements Landroid/media/MediaRecorder$OnInfoListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/screenrecord/RecordingService$RecordingServiceBinder;
    }
.end annotation


# instance fields
.field private mAudioSource:Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;

.field private final mBinder:Lcom/android/systemui/screenrecord/RecordingService$RecordingServiceBinder;

.field private final mController:Lcom/android/systemui/screenrecord/RecordingController;

.field private mDotShowing:Z

.field private mFrameLayout:Landroid/widget/FrameLayout;

.field private mIsDotAtRight:Z

.field private final mKeyguardDismissUtil:Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;

.field private final mLongExecutor:Ljava/util/concurrent/Executor;

.field private mLongerDuration:Z

.field private mLowQuality:Z

.field private final mNotificationManager:Landroid/app/NotificationManager;

.field private mOriginalShowTaps:Z

.field private mRecorder:Lcom/android/systemui/screenrecord/ScreenMediaRecorder;

.field private mShowStopDot:Z

.field private mShowTaps:Z

.field private final mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

.field private final mUserContextTracker:Lcom/android/systemui/settings/CurrentUserContextTracker;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/screenrecord/RecordingController;Ljava/util/concurrent/Executor;Lcom/android/internal/logging/UiEventLogger;Landroid/app/NotificationManager;Lcom/android/systemui/settings/CurrentUserContextTracker;Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;)V
    .locals 0

    .line 111
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 112
    iput-object p1, p0, Lcom/android/systemui/screenrecord/RecordingService;->mController:Lcom/android/systemui/screenrecord/RecordingController;

    .line 113
    iput-object p2, p0, Lcom/android/systemui/screenrecord/RecordingService;->mLongExecutor:Ljava/util/concurrent/Executor;

    .line 114
    iput-object p3, p0, Lcom/android/systemui/screenrecord/RecordingService;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 115
    iput-object p4, p0, Lcom/android/systemui/screenrecord/RecordingService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 116
    iput-object p5, p0, Lcom/android/systemui/screenrecord/RecordingService;->mUserContextTracker:Lcom/android/systemui/settings/CurrentUserContextTracker;

    .line 117
    iput-object p6, p0, Lcom/android/systemui/screenrecord/RecordingService;->mKeyguardDismissUtil:Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;

    .line 118
    invoke-virtual {p5}, Lcom/android/systemui/settings/CurrentUserContextTracker;->getCurrentUserContext()Landroid/content/Context;

    move-result-object p1

    const-string/jumbo p2, "window"

    .line 119
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lcom/android/systemui/screenrecord/RecordingService;->mWindowManager:Landroid/view/WindowManager;

    .line 120
    new-instance p1, Lcom/android/systemui/screenrecord/RecordingService$RecordingServiceBinder;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/screenrecord/RecordingService$RecordingServiceBinder;-><init>(Lcom/android/systemui/screenrecord/RecordingService;Lcom/android/systemui/screenrecord/RecordingService$1;)V

    iput-object p1, p0, Lcom/android/systemui/screenrecord/RecordingService;->mBinder:Lcom/android/systemui/screenrecord/RecordingService$RecordingServiceBinder;

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/screenrecord/RecordingService;)Landroid/app/PendingIntent;
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/android/systemui/screenrecord/RecordingService;->getStopPendingIntent()Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/screenrecord/RecordingService;)Landroid/widget/FrameLayout;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/android/systemui/screenrecord/RecordingService;->mFrameLayout:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/screenrecord/RecordingService;)Z
    .locals 0

    .line 65
    iget-boolean p0, p0, Lcom/android/systemui/screenrecord/RecordingService;->mIsDotAtRight:Z

    return p0
.end method

.method static synthetic access$302(Lcom/android/systemui/screenrecord/RecordingService;Z)Z
    .locals 0

    .line 65
    iput-boolean p1, p0, Lcom/android/systemui/screenrecord/RecordingService;->mIsDotAtRight:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/systemui/screenrecord/RecordingService;)Landroid/view/WindowManager;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/android/systemui/screenrecord/RecordingService;->mWindowManager:Landroid/view/WindowManager;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/systemui/screenrecord/RecordingService;)Landroid/view/animation/Animation;
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/android/systemui/screenrecord/RecordingService;->getDotAnimation()Landroid/view/animation/Animation;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/systemui/screenrecord/RecordingService;)Lcom/android/systemui/screenrecord/RecordingController;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/android/systemui/screenrecord/RecordingService;->mController:Lcom/android/systemui/screenrecord/RecordingController;

    return-object p0
.end method

.method private static getDeleteIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .line 559
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/systemui/screenrecord/RecordingService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "com.android.systemui.screenrecord.DELETE"

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    const-string v0, "extra_path"

    .line 560
    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method private getDotAnimation()Landroid/view/animation/Animation;
    .locals 2

    .line 525
    new-instance p0, Landroid/view/animation/AlphaAnimation;

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p0, v0, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v0, 0x1f4

    .line 526
    invoke-virtual {p0, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    const-wide/16 v0, 0x64

    .line 527
    invoke-virtual {p0, v0, v1}, Landroid/view/animation/Animation;->setStartOffset(J)V

    const/4 v0, 0x2

    .line 528
    invoke-virtual {p0, v0}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    const/4 v0, -0x1

    .line 529
    invoke-virtual {p0, v0}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    return-object p0
.end method

.method protected static getNotificationIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .line 550
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/systemui/screenrecord/RecordingService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "com.android.systemui.screenrecord.STOP_FROM_NOTIF"

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method private static getShareIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .line 554
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/systemui/screenrecord/RecordingService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "com.android.systemui.screenrecord.SHARE"

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    const-string v0, "extra_path"

    .line 555
    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static getStartIntent(Landroid/content/Context;IIZZZZ)Landroid/content/Intent;
    .locals 2

    .line 136
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/systemui/screenrecord/RecordingService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "com.android.systemui.screenrecord.START"

    .line 137
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    const-string v0, "extra_resultCode"

    .line 138
    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p0

    const-string p1, "extra_useAudio"

    .line 139
    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p0

    const-string p1, "extra_showTaps"

    .line 140
    invoke-virtual {p0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p0

    const-string p1, "extra_showStopDot"

    .line 141
    invoke-virtual {p0, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p0

    const-string p1, "extra_lowQuality"

    .line 142
    invoke-virtual {p0, p1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p0

    const-string p1, "extra_longerDuration"

    .line 143
    invoke-virtual {p0, p1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static getStopIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .line 539
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/systemui/screenrecord/RecordingService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.android.systemui.screenrecord.STOP"

    .line 540
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 541
    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result p0

    const-string v1, "android.intent.extra.user_handle"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method private getStopPendingIntent()Landroid/app/PendingIntent;
    .locals 3

    .line 511
    invoke-static {p0}, Lcom/android/systemui/screenrecord/RecordingService;->getStopIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x2

    const/high16 v2, 0xc000000

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$onStartCommand$0(Landroid/content/Intent;Landroid/os/UserHandle;)Z
    .locals 2

    .line 191
    invoke-virtual {p0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$string;->screenrecord_share_label:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 192
    invoke-static {p1, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    const/high16 v0, 0x10000000

    .line 193
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object p1

    .line 192
    invoke-virtual {p0, p1}, Landroid/app/Service;->startActivity(Landroid/content/Intent;)V

    .line 195
    iget-object p0, p0, Lcom/android/systemui/screenrecord/RecordingService;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 p1, 0x0

    const/16 v0, 0x10b1

    invoke-virtual {p0, p1, v0, p2}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$saveRecording$1(Landroid/os/UserHandle;)V
    .locals 6

    const-string v0, "RecordingService"

    const/16 v1, 0x10b3

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "saving recording"

    .line 420
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    invoke-virtual {p0}, Lcom/android/systemui/screenrecord/RecordingService;->getRecorder()Lcom/android/systemui/screenrecord/ScreenMediaRecorder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->save()Lcom/android/systemui/screenrecord/ScreenMediaRecorder$SavedRecording;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/systemui/screenrecord/RecordingService;->createSaveNotification(Lcom/android/systemui/screenrecord/ScreenMediaRecorder$SavedRecording;)Landroid/app/Notification;

    move-result-object v3

    .line 422
    iget-object v4, p0, Lcom/android/systemui/screenrecord/RecordingService;->mController:Lcom/android/systemui/screenrecord/RecordingController;

    invoke-virtual {v4}, Lcom/android/systemui/screenrecord/RecordingController;->isRecording()Z

    move-result v4

    if-nez v4, :cond_0

    .line 423
    iget-object v4, p0, Lcom/android/systemui/screenrecord/RecordingService;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v5, 0x10b1

    invoke-virtual {v4, v2, v5, v3, p1}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 431
    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/screenrecord/RecordingService;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p0, v2, v1, p1}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v3

    .line 427
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error saving screen recording: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    sget v0, Lcom/android/systemui/R$string;->screenrecord_delete_error:I

    const/4 v3, 0x1

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 429
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    .line 431
    :goto_2
    iget-object p0, p0, Lcom/android/systemui/screenrecord/RecordingService;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p0, v2, v1, p1}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 432
    throw v0
.end method

.method private saveRecording(I)V
    .locals 4

    .line 414
    new-instance v0, Landroid/os/UserHandle;

    invoke-direct {v0, p1}, Landroid/os/UserHandle;-><init>(I)V

    .line 415
    iget-object p1, p0, Lcom/android/systemui/screenrecord/RecordingService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 416
    invoke-virtual {p0}, Lcom/android/systemui/screenrecord/RecordingService;->createProcessingNotification()Landroid/app/Notification;

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0x10b3

    .line 415
    invoke-virtual {p1, v2, v3, v1, v0}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 418
    iget-object p1, p0, Lcom/android/systemui/screenrecord/RecordingService;->mLongExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/systemui/screenrecord/-$$Lambda$RecordingService$3QFlUt0_WdA7oDh1dugN1o1OmuI;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/screenrecord/-$$Lambda$RecordingService$3QFlUt0_WdA7oDh1dugN1o1OmuI;-><init>(Lcom/android/systemui/screenrecord/RecordingService;Landroid/os/UserHandle;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private setLongerDuration(Z)V
    .locals 1

    .line 443
    invoke-virtual {p0}, Lcom/android/systemui/screenrecord/RecordingService;->getRecorder()Lcom/android/systemui/screenrecord/ScreenMediaRecorder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 444
    invoke-virtual {p0}, Lcom/android/systemui/screenrecord/RecordingService;->getRecorder()Lcom/android/systemui/screenrecord/ScreenMediaRecorder;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->setLongerDuration(Z)V

    :cond_0
    return-void
.end method

.method private setLowQuality(Z)V
    .locals 1

    .line 437
    invoke-virtual {p0}, Lcom/android/systemui/screenrecord/RecordingService;->getRecorder()Lcom/android/systemui/screenrecord/ScreenMediaRecorder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 438
    invoke-virtual {p0}, Lcom/android/systemui/screenrecord/RecordingService;->getRecorder()Lcom/android/systemui/screenrecord/ScreenMediaRecorder;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->setLowQuality(Z)V

    :cond_0
    return-void
.end method

.method private setStopDotVisible(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 455
    invoke-direct {p0}, Lcom/android/systemui/screenrecord/RecordingService;->showDot()V

    goto :goto_0

    .line 456
    :cond_0
    iget-boolean p1, p0, Lcom/android/systemui/screenrecord/RecordingService;->mDotShowing:Z

    if-eqz p1, :cond_1

    .line 457
    invoke-direct {p0}, Lcom/android/systemui/screenrecord/RecordingService;->stopDot()V

    :cond_1
    :goto_0
    return-void
.end method

.method private setTapsVisible(Z)V
    .locals 1

    .line 450
    invoke-virtual {p0}, Landroid/app/Service;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "show_touches"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method private showDot()V
    .locals 8

    const/4 v0, 0x1

    .line 462
    iput-boolean v0, p0, Lcom/android/systemui/screenrecord/RecordingService;->mDotShowing:Z

    .line 463
    iput-boolean v0, p0, Lcom/android/systemui/screenrecord/RecordingService;->mIsDotAtRight:Z

    .line 464
    invoke-virtual {p0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->screenrecord_dot_size:I

    .line 465
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 466
    new-instance v7, Landroid/view/WindowManager$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x2

    const/16 v4, 0x7d2

    const/16 v5, 0x28

    const/4 v6, -0x3

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    const/16 v1, 0x35

    .line 473
    iput v1, v7, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 474
    iput v0, v7, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 475
    iput v0, v7, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 477
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/screenrecord/RecordingService;->mFrameLayout:Landroid/widget/FrameLayout;

    .line 479
    iget-object v1, p0, Lcom/android/systemui/screenrecord/RecordingService;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1, v0, v7}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 480
    iget-object v0, p0, Lcom/android/systemui/screenrecord/RecordingService;->mUserContextTracker:Lcom/android/systemui/settings/CurrentUserContextTracker;

    .line 481
    invoke-virtual {v0}, Lcom/android/systemui/settings/CurrentUserContextTracker;->getCurrentUserContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    .line 482
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 483
    sget v1, Lcom/android/systemui/R$layout;->screenrecord_dot:I

    iget-object v2, p0, Lcom/android/systemui/screenrecord/RecordingService;->mFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 485
    iget-object v0, p0, Lcom/android/systemui/screenrecord/RecordingService;->mFrameLayout:Landroid/widget/FrameLayout;

    sget v1, Lcom/android/systemui/R$id;->dot:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 486
    new-instance v1, Lcom/android/systemui/screenrecord/RecordingService$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/screenrecord/RecordingService$1;-><init>(Lcom/android/systemui/screenrecord/RecordingService;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 494
    new-instance v1, Lcom/android/systemui/screenrecord/RecordingService$2;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/screenrecord/RecordingService$2;-><init>(Lcom/android/systemui/screenrecord/RecordingService;Landroid/widget/ImageView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 507
    invoke-direct {p0}, Lcom/android/systemui/screenrecord/RecordingService;->getDotAnimation()Landroid/view/animation/Animation;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private startRecording()V
    .locals 3

    const/4 v0, 0x1

    .line 278
    :try_start_0
    invoke-virtual {p0}, Lcom/android/systemui/screenrecord/RecordingService;->getRecorder()Lcom/android/systemui/screenrecord/ScreenMediaRecorder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->start()V

    .line 279
    iget-object v1, p0, Lcom/android/systemui/screenrecord/RecordingService;->mController:Lcom/android/systemui/screenrecord/RecordingController;

    invoke-virtual {v1, v0}, Lcom/android/systemui/screenrecord/RecordingController;->updateState(Z)V

    .line 280
    invoke-virtual {p0}, Lcom/android/systemui/screenrecord/RecordingService;->createRecordingNotification()V

    .line 281
    iget-object v1, p0, Lcom/android/systemui/screenrecord/RecordingService;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v2, Lcom/android/systemui/screenrecord/Events$ScreenRecordEvent;->SCREEN_RECORD_START:Lcom/android/systemui/screenrecord/Events$ScreenRecordEvent;

    invoke-interface {v1, v2}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 283
    sget v2, Lcom/android/systemui/R$string;->screenrecord_start_error:I

    invoke-static {p0, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 285
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 286
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 287
    iget-object p0, p0, Lcom/android/systemui/screenrecord/RecordingService;->mController:Lcom/android/systemui/screenrecord/RecordingController;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/screenrecord/RecordingController;->updateState(Z)V

    :goto_0
    return-void
.end method

.method private stopDot()V
    .locals 2

    const/4 v0, 0x0

    .line 516
    iput-boolean v0, p0, Lcom/android/systemui/screenrecord/RecordingService;->mDotShowing:Z

    .line 517
    iget-object v0, p0, Lcom/android/systemui/screenrecord/RecordingService;->mFrameLayout:Landroid/widget/FrameLayout;

    sget v1, Lcom/android/systemui/R$id;->dot:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 519
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 520
    iget-object v0, p0, Lcom/android/systemui/screenrecord/RecordingService;->mWindowManager:Landroid/view/WindowManager;

    iget-object p0, p0, Lcom/android/systemui/screenrecord/RecordingService;->mFrameLayout:Landroid/widget/FrameLayout;

    invoke-interface {v0, p0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private stopRecording(I)V
    .locals 2

    .line 402
    iget-boolean v0, p0, Lcom/android/systemui/screenrecord/RecordingService;->mOriginalShowTaps:Z

    invoke-direct {p0, v0}, Lcom/android/systemui/screenrecord/RecordingService;->setTapsVisible(Z)V

    const/4 v0, 0x0

    .line 403
    invoke-direct {p0, v0}, Lcom/android/systemui/screenrecord/RecordingService;->setStopDotVisible(Z)V

    .line 404
    invoke-virtual {p0}, Lcom/android/systemui/screenrecord/RecordingService;->getRecorder()Lcom/android/systemui/screenrecord/ScreenMediaRecorder;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 405
    invoke-virtual {p0}, Lcom/android/systemui/screenrecord/RecordingService;->getRecorder()Lcom/android/systemui/screenrecord/ScreenMediaRecorder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;->end()V

    .line 406
    invoke-direct {p0, p1}, Lcom/android/systemui/screenrecord/RecordingService;->saveRecording(I)V

    goto :goto_0

    :cond_0
    const-string p1, "RecordingService"

    const-string v1, "stopRecording called, but recorder was null"

    .line 408
    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/screenrecord/RecordingService;->mController:Lcom/android/systemui/screenrecord/RecordingController;

    invoke-virtual {p0, v0}, Lcom/android/systemui/screenrecord/RecordingController;->updateState(Z)V

    return-void
.end method


# virtual methods
.method protected createProcessingNotification()Landroid/app/Notification;
    .locals 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 328
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 329
    iget-object v1, p0, Lcom/android/systemui/screenrecord/RecordingService;->mAudioSource:Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;

    sget-object v2, Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;->NONE:Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;

    if-ne v1, v2, :cond_0

    .line 330
    sget v1, Lcom/android/systemui/R$string;->screenrecord_ongoing_screen_only:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 331
    :cond_0
    sget v1, Lcom/android/systemui/R$string;->screenrecord_ongoing_screen_and_audio:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 333
    :goto_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 334
    sget v3, Lcom/android/systemui/R$string;->screenrecord_name:I

    .line 335
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "android.substName"

    .line 334
    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    new-instance v0, Landroid/app/Notification$Builder;

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "screen_record"

    invoke-direct {v0, v3, v4}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 338
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 340
    invoke-virtual {p0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/systemui/R$string;->screenrecord_background_processing_label:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 339
    invoke-virtual {v0, p0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p0

    sget v0, Lcom/android/systemui/R$drawable;->ic_screenrecord:I

    .line 341
    invoke-virtual {p0, v0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object p0

    .line 342
    invoke-virtual {p0, v2}, Landroid/app/Notification$Builder;->addExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    move-result-object p0

    .line 343
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p0

    return-object p0
.end method

.method protected createRecordingNotification()V
    .locals 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 293
    invoke-virtual {p0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 294
    new-instance v1, Landroid/app/NotificationChannel;

    sget v2, Lcom/android/systemui/R$string;->screenrecord_name:I

    .line 296
    invoke-virtual {p0, v2}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "screen_record"

    const/4 v4, 0x3

    invoke-direct {v1, v3, v2, v4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 298
    sget v2, Lcom/android/systemui/R$string;->screenrecord_channel_description:I

    invoke-virtual {p0, v2}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 299
    invoke-virtual {v1, v2}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    .line 300
    iget-object v4, p0, Lcom/android/systemui/screenrecord/RecordingService;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v4, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 302
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 303
    sget v4, Lcom/android/systemui/R$string;->screenrecord_name:I

    .line 304
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.substName"

    .line 303
    invoke-virtual {v1, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    iget-object v4, p0, Lcom/android/systemui/screenrecord/RecordingService;->mAudioSource:Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;

    sget-object v5, Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;->NONE:Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;

    if-ne v4, v5, :cond_0

    .line 307
    sget v4, Lcom/android/systemui/R$string;->screenrecord_ongoing_screen_only:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 308
    :cond_0
    sget v4, Lcom/android/systemui/R$string;->screenrecord_ongoing_screen_and_audio:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 310
    :goto_0
    invoke-static {p0}, Lcom/android/systemui/screenrecord/RecordingService;->getNotificationIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v4

    .line 311
    new-instance v5, Landroid/app/Notification$Builder;

    invoke-direct {v5, p0, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sget v3, Lcom/android/systemui/R$drawable;->ic_screenrecord:I

    .line 312
    invoke-virtual {v5, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 313
    invoke-virtual {v3, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 314
    invoke-virtual {p0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v5, Lcom/android/systemui/R$string;->screenrecord_stop_text:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 315
    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setUsesChronometer(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 316
    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setColorized(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 317
    invoke-virtual {p0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v5, Lcom/android/systemui/R$color;->GM2_red_700:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 318
    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    const/4 v2, 0x2

    const/high16 v3, 0xc000000

    .line 320
    invoke-static {p0, v2, v4, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 319
    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 322
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->addExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    move-result-object v0

    const/16 v1, 0x10b2

    .line 323
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    return-void
.end method

.method protected createSaveNotification(Lcom/android/systemui/screenrecord/ScreenMediaRecorder$SavedRecording;)Landroid/app/Notification;
    .locals 9
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 348
    invoke-virtual {p1}, Lcom/android/systemui/screenrecord/ScreenMediaRecorder$SavedRecording;->getUri()Landroid/net/Uri;

    move-result-object v0

    .line 349
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v2, 0x10000001

    .line 350
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "video/mp4"

    .line 351
    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 353
    new-instance v2, Landroid/app/Notification$Action$Builder;

    sget v3, Lcom/android/systemui/R$drawable;->ic_screenrecord:I

    .line 354
    invoke-static {p0, v3}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v3

    .line 355
    invoke-virtual {p0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/systemui/R$string;->screenrecord_share_label:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 359
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/systemui/screenrecord/RecordingService;->getShareIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    const/4 v6, 0x2

    const/high16 v7, 0xc000000

    .line 356
    invoke-static {p0, v6, v5, v7}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 361
    invoke-virtual {v2}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v2

    .line 363
    new-instance v3, Landroid/app/Notification$Action$Builder;

    sget v4, Lcom/android/systemui/R$drawable;->ic_screenrecord:I

    .line 364
    invoke-static {p0, v4}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v4

    .line 365
    invoke-virtual {p0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v8, Lcom/android/systemui/R$string;->screenrecord_delete_label:I

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 369
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/systemui/screenrecord/RecordingService;->getDeleteIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 366
    invoke-static {p0, v6, v0, v7}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-direct {v3, v4, v5, v0}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 371
    invoke-virtual {v3}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v0

    .line 373
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 375
    invoke-virtual {p0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/systemui/R$string;->screenrecord_name:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.substName"

    .line 374
    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    new-instance v4, Landroid/app/Notification$Builder;

    const-string v5, "screen_record"

    invoke-direct {v4, p0, v5}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sget v5, Lcom/android/systemui/R$drawable;->ic_screenrecord:I

    .line 378
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 379
    invoke-virtual {p0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v7, Lcom/android/systemui/R$string;->screenrecord_save_message:I

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    const/high16 v5, 0x4000000

    .line 380
    invoke-static {p0, v6, v1, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    invoke-virtual {v4, p0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object p0

    .line 385
    invoke-virtual {p0, v2}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    move-result-object p0

    .line 386
    invoke-virtual {p0, v0}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    move-result-object p0

    const/4 v0, 0x1

    .line 387
    invoke-virtual {p0, v0}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object p0

    .line 388
    invoke-virtual {p0, v3}, Landroid/app/Notification$Builder;->addExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    move-result-object p0

    .line 391
    invoke-virtual {p1}, Lcom/android/systemui/screenrecord/ScreenMediaRecorder$SavedRecording;->getThumbnail()Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 393
    new-instance v0, Landroid/app/Notification$BigPictureStyle;

    invoke-direct {v0}, Landroid/app/Notification$BigPictureStyle;-><init>()V

    .line 394
    invoke-virtual {v0, p1}, Landroid/app/Notification$BigPictureStyle;->bigPicture(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;

    move-result-object v0

    const/4 v1, 0x0

    .line 395
    invoke-virtual {v0, v1}, Landroid/app/Notification$BigPictureStyle;->bigLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;

    move-result-object v0

    .line 396
    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 398
    :cond_0
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p0

    return-object p0
.end method

.method protected doStartRecording(IZZZZ)V
    .locals 2

    .line 224
    iget-object v0, p0, Lcom/android/systemui/screenrecord/RecordingService;->mUserContextTracker:Lcom/android/systemui/settings/CurrentUserContextTracker;

    invoke-virtual {v0}, Lcom/android/systemui/settings/CurrentUserContextTracker;->getCurrentUserContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    .line 226
    invoke-static {}, Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;->values()[Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;

    move-result-object v1

    aget-object p1, v1, p1

    iput-object p1, p0, Lcom/android/systemui/screenrecord/RecordingService;->mAudioSource:Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;

    .line 227
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "recording with audio source"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/screenrecord/RecordingService;->mAudioSource:Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "RecordingService"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    iput-boolean p2, p0, Lcom/android/systemui/screenrecord/RecordingService;->mShowTaps:Z

    .line 229
    iput-boolean p3, p0, Lcom/android/systemui/screenrecord/RecordingService;->mShowStopDot:Z

    .line 230
    iput-boolean p4, p0, Lcom/android/systemui/screenrecord/RecordingService;->mLowQuality:Z

    .line 231
    iput-boolean p5, p0, Lcom/android/systemui/screenrecord/RecordingService;->mLongerDuration:Z

    .line 234
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "show_touches"

    const/4 p3, 0x0

    .line 233
    invoke-static {p1, p2, p3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p3, 0x1

    :cond_0
    iput-boolean p3, p0, Lcom/android/systemui/screenrecord/RecordingService;->mOriginalShowTaps:Z

    .line 237
    iget-boolean p1, p0, Lcom/android/systemui/screenrecord/RecordingService;->mShowTaps:Z

    invoke-direct {p0, p1}, Lcom/android/systemui/screenrecord/RecordingService;->setTapsVisible(Z)V

    .line 238
    iget-boolean p1, p0, Lcom/android/systemui/screenrecord/RecordingService;->mShowStopDot:Z

    invoke-direct {p0, p1}, Lcom/android/systemui/screenrecord/RecordingService;->setStopDotVisible(Z)V

    .line 240
    new-instance p1, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;

    iget-object p2, p0, Lcom/android/systemui/screenrecord/RecordingService;->mUserContextTracker:Lcom/android/systemui/settings/CurrentUserContextTracker;

    .line 241
    invoke-virtual {p2}, Lcom/android/systemui/settings/CurrentUserContextTracker;->getCurrentUserContext()Landroid/content/Context;

    move-result-object p2

    iget-object p3, p0, Lcom/android/systemui/screenrecord/RecordingService;->mAudioSource:Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;

    invoke-direct {p1, p2, v0, p3, p0}, Lcom/android/systemui/screenrecord/ScreenMediaRecorder;-><init>(Landroid/content/Context;ILcom/android/systemui/screenrecord/ScreenRecordingAudioSource;Landroid/media/MediaRecorder$OnInfoListener;)V

    iput-object p1, p0, Lcom/android/systemui/screenrecord/RecordingService;->mRecorder:Lcom/android/systemui/screenrecord/ScreenMediaRecorder;

    .line 246
    iget-boolean p1, p0, Lcom/android/systemui/screenrecord/RecordingService;->mLowQuality:Z

    invoke-direct {p0, p1}, Lcom/android/systemui/screenrecord/RecordingService;->setLowQuality(Z)V

    .line 247
    iget-boolean p1, p0, Lcom/android/systemui/screenrecord/RecordingService;->mLongerDuration:Z

    invoke-direct {p0, p1}, Lcom/android/systemui/screenrecord/RecordingService;->setLongerDuration(Z)V

    .line 248
    invoke-direct {p0}, Lcom/android/systemui/screenrecord/RecordingService;->startRecording()V

    return-void
.end method

.method protected getRecorder()Lcom/android/systemui/screenrecord/ScreenMediaRecorder;
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 270
    iget-object p0, p0, Lcom/android/systemui/screenrecord/RecordingService;->mRecorder:Lcom/android/systemui/screenrecord/ScreenMediaRecorder;

    return-object p0
.end method

.method public synthetic lambda$onStartCommand$0$RecordingService(Landroid/content/Intent;Landroid/os/UserHandle;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/screenrecord/RecordingService;->lambda$onStartCommand$0(Landroid/content/Intent;Landroid/os/UserHandle;)Z

    move-result p0

    return p0
.end method

.method public synthetic lambda$saveRecording$1$RecordingService(Landroid/os/UserHandle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/screenrecord/RecordingService;->lambda$saveRecording$1(Landroid/os/UserHandle;)V

    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 253
    iget-object p0, p0, Lcom/android/systemui/screenrecord/RecordingService;->mBinder:Lcom/android/systemui/screenrecord/RecordingService$RecordingServiceBinder;

    return-object p0
.end method

.method public onCreate()V
    .locals 1

    .line 258
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 259
    iget-object v0, p0, Lcom/android/systemui/screenrecord/RecordingService;->mController:Lcom/android/systemui/screenrecord/RecordingController;

    iget-object p0, p0, Lcom/android/systemui/screenrecord/RecordingService;->mBinder:Lcom/android/systemui/screenrecord/RecordingService$RecordingServiceBinder;

    invoke-virtual {v0, p0}, Lcom/android/systemui/screenrecord/RecordingController;->addCallback(Lcom/android/systemui/screenrecord/RecordingController$RecordingStateChangeCallback;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 264
    iget-object v0, p0, Lcom/android/systemui/screenrecord/RecordingService;->mController:Lcom/android/systemui/screenrecord/RecordingController;

    iget-object v1, p0, Lcom/android/systemui/screenrecord/RecordingService;->mBinder:Lcom/android/systemui/screenrecord/RecordingService$RecordingServiceBinder;

    invoke-virtual {v0, v1}, Lcom/android/systemui/screenrecord/RecordingController;->removeCallback(Lcom/android/systemui/screenrecord/RecordingController$RecordingStateChangeCallback;)V

    .line 265
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onInfo(Landroid/media/MediaRecorder;II)V
    .locals 0

    .line 565
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Media recorder info: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "RecordingService"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    invoke-static {p0}, Lcom/android/systemui/screenrecord/RecordingService;->getStopIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2, p2}, Lcom/android/systemui/screenrecord/RecordingService;->onStartCommand(Landroid/content/Intent;II)I

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 9

    const/4 p2, 0x2

    if-nez p1, :cond_0

    return p2

    .line 151
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p3

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStartCommand "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RecordingService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iget-object v0, p0, Lcom/android/systemui/screenrecord/RecordingService;->mUserContextTracker:Lcom/android/systemui/settings/CurrentUserContextTracker;

    invoke-virtual {v0}, Lcom/android/systemui/settings/CurrentUserContextTracker;->getCurrentUserContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    .line 155
    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, v0}, Landroid/os/UserHandle;-><init>(I)V

    .line 156
    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v0

    const-string v3, "com.android.systemui.screenrecord.STOP_FROM_NOTIF"

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, -0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v7

    goto :goto_1

    :sswitch_1
    const-string v0, "com.android.systemui.screenrecord.STOP"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, p2

    goto :goto_1

    :sswitch_2
    const-string v0, "com.android.systemui.screenrecord.DELETE"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v4

    goto :goto_1

    :sswitch_3
    const-string v0, "com.android.systemui.screenrecord.START"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v8

    goto :goto_1

    :sswitch_4
    const-string v0, "com.android.systemui.screenrecord.SHARE"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v5

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v6

    :goto_1
    if-eqz v0, :cond_7

    if-eq v0, v7, :cond_4

    if-eq v0, p2, :cond_4

    const-string p2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    const-string p3, "extra_path"

    if-eq v0, v5, :cond_3

    if-eq v0, v4, :cond_2

    goto/16 :goto_3

    .line 204
    :cond_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/app/Service;->sendBroadcast(Landroid/content/Intent;)V

    .line 206
    invoke-virtual {p0}, Landroid/app/Service;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    .line 207
    invoke-virtual {p1, p3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const/4 p3, 0x0

    .line 208
    invoke-virtual {p2, p1, p3, p3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 210
    sget p2, Lcom/android/systemui/R$string;->screenrecord_delete_description:I

    invoke-static {p0, p2, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p2

    .line 213
    invoke-virtual {p2}, Landroid/widget/Toast;->show()V

    .line 216
    iget-object p0, p0, Lcom/android/systemui/screenrecord/RecordingService;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 p2, 0x10b1

    invoke-virtual {p0, p3, p2, v2}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 217
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Deleted recording "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 185
    :cond_3
    invoke-virtual {p1, p3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 187
    new-instance p3, Landroid/content/Intent;

    const-string v0, "android.intent.action.SEND"

    invoke-direct {p3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "video/mp4"

    .line 188
    invoke-virtual {p3, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p3

    const-string v0, "android.intent.extra.STREAM"

    .line 189
    invoke-virtual {p3, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object p1

    .line 190
    iget-object p3, p0, Lcom/android/systemui/screenrecord/RecordingService;->mKeyguardDismissUtil:Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;

    new-instance v0, Lcom/android/systemui/screenrecord/-$$Lambda$RecordingService$O0tTWvG8crPdUZOnxQ3Wsz3Tou8;

    invoke-direct {v0, p0, p1, v2}, Lcom/android/systemui/screenrecord/-$$Lambda$RecordingService$O0tTWvG8crPdUZOnxQ3Wsz3Tou8;-><init>(Lcom/android/systemui/screenrecord/RecordingService;Landroid/content/Intent;Landroid/os/UserHandle;)V

    invoke-virtual {p3, v0, v8}, Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;->executeWhenUnlocked(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;Z)V

    .line 200
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroid/app/Service;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_3

    .line 168
    :cond_4
    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 169
    iget-object p2, p0, Lcom/android/systemui/screenrecord/RecordingService;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object p3, Lcom/android/systemui/screenrecord/Events$ScreenRecordEvent;->SCREEN_RECORD_END_NOTIFICATION:Lcom/android/systemui/screenrecord/Events$ScreenRecordEvent;

    invoke-interface {p2, p3}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    goto :goto_2

    .line 171
    :cond_5
    iget-object p2, p0, Lcom/android/systemui/screenrecord/RecordingService;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object p3, Lcom/android/systemui/screenrecord/Events$ScreenRecordEvent;->SCREEN_RECORD_END_QS_TILE:Lcom/android/systemui/screenrecord/Events$ScreenRecordEvent;

    invoke-interface {p2, p3}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    :goto_2
    const-string p2, "android.intent.extra.user_handle"

    .line 175
    invoke-virtual {p1, p2, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v6, :cond_6

    .line 177
    iget-object p1, p0, Lcom/android/systemui/screenrecord/RecordingService;->mUserContextTracker:Lcom/android/systemui/settings/CurrentUserContextTracker;

    invoke-virtual {p1}, Lcom/android/systemui/settings/CurrentUserContextTracker;->getCurrentUserContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result p1

    .line 179
    :cond_6
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "notifying for user "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    invoke-direct {p0, p1}, Lcom/android/systemui/screenrecord/RecordingService;->stopRecording(I)V

    .line 181
    invoke-virtual {p0, v7}, Landroid/app/Service;->stopForeground(Z)V

    goto :goto_3

    :cond_7
    const-string p2, "extra_useAudio"

    .line 158
    invoke-virtual {p1, p2, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string p2, "extra_showTaps"

    .line 159
    invoke-virtual {p1, p2, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    const-string p2, "extra_showStopDot"

    .line 160
    invoke-virtual {p1, p2, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    const-string p2, "extra_lowQuality"

    .line 161
    invoke-virtual {p1, p2, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    const-string p2, "extra_longerDuration"

    .line 162
    invoke-virtual {p1, p2, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    move-object v0, p0

    .line 158
    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/screenrecord/RecordingService;->doStartRecording(IZZZZ)V

    :goto_3
    return v7

    nop

    :sswitch_data_0
    .sparse-switch
        -0x649efbd3 -> :sswitch_4
        -0x64998750 -> :sswitch_3
        -0x48fea503 -> :sswitch_2
        -0x1c04f22c -> :sswitch_1
        -0x1130027a -> :sswitch_0
    .end sparse-switch
.end method
