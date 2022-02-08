.class public Lcom/android/systemui/custom/onthego/OnTheGoService;
.super Landroid/app/Service;
.source "OnTheGoService.java"


# instance fields
.field private mCamera:Landroid/hardware/Camera;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mOverlay:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/custom/onthego/OnTheGoService;)Landroid/hardware/Camera;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/android/systemui/custom/onthego/OnTheGoService;->mCamera:Landroid/hardware/Camera;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/custom/onthego/OnTheGoService;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/android/systemui/custom/onthego/OnTheGoService;->releaseCamera()V

    return-void
.end method

.method private createNotification(I)V
    .locals 8

    .line 241
    invoke-virtual {p0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 242
    new-instance v1, Landroid/app/Notification$Builder;

    const-string v2, "onthego_notif"

    invoke-direct {v1, p0, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v3, 0x1

    if-ne p1, v3, :cond_0

    .line 243
    sget v4, Lcom/android/systemui/R$string;->onthego_notif_error:I

    goto :goto_0

    :cond_0
    sget v4, Lcom/android/systemui/R$string;->onthego_notif_ticker:I

    :goto_0
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    if-ne p1, v3, :cond_1

    .line 244
    sget v4, Lcom/android/systemui/R$string;->onthego_notif_error:I

    goto :goto_1

    :cond_1
    sget v4, Lcom/android/systemui/R$string;->onthego_notif_title:I

    :goto_1
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    sget v4, Lcom/android/systemui/R$drawable;->ic_onthego:I

    .line 245
    invoke-virtual {v1, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 246
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v1

    const/4 v4, 0x0

    if-eq p1, v3, :cond_2

    move v5, v3

    goto :goto_2

    :cond_2
    move v5, v4

    .line 247
    :goto_2
    invoke-virtual {v1, v5}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v1

    const/high16 v5, 0x8000000

    if-ne p1, v3, :cond_3

    .line 250
    new-instance p1, Landroid/content/ComponentName;

    const-string v6, "com.android.systemui"

    const-string v7, "com.android.systemui.custom.onthego.OnTheGoService"

    invoke-direct {p1, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 253
    invoke-virtual {v6, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string p1, "start"

    .line 254
    invoke-virtual {v6, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 255
    invoke-static {p0, v4, v6, v5}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    .line 258
    invoke-virtual {p0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/systemui/R$string;->onthego_restart_text:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 259
    invoke-virtual {v4, p1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    goto :goto_3

    .line 261
    :cond_3
    new-instance p1, Landroid/content/Intent;

    const-class v6, Lcom/android/systemui/custom/onthego/OnTheGoService;

    invoke-direct {p1, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v6, "stop"

    .line 262
    invoke-virtual {p1, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 263
    invoke-static {p0, v4, p1, v5}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    .line 266
    invoke-virtual {p0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/systemui/R$string;->screenrecord_stop_text:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 267
    invoke-virtual {v4, p1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 270
    :goto_3
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    const-string v1, "notification"

    .line 272
    invoke-virtual {p0, v1}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    iput-object v1, p0, Lcom/android/systemui/custom/onthego/OnTheGoService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 273
    new-instance v1, Landroid/app/NotificationChannel;

    sget v4, Lcom/android/systemui/R$string;->onthego_label:I

    .line 274
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x2

    invoke-direct {v1, v2, v0, v4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 275
    invoke-virtual {v1, v3}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    .line 276
    iget-object v0, p0, Lcom/android/systemui/custom/onthego/OnTheGoService;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 277
    iget-object p0, p0, Lcom/android/systemui/custom/onthego/OnTheGoService;->mNotificationManager:Landroid/app/NotificationManager;

    const v0, 0x4d90c82

    invoke-virtual {p0, v0, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method private getCameraInstance(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 136
    invoke-direct {p0}, Lcom/android/systemui/custom/onthego/OnTheGoService;->releaseCamera()V

    .line 138
    invoke-static {p0}, Lcom/android/internal/util/custom/OnTheGoUtils;->hasFrontCamera(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 139
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/custom/onthego/OnTheGoService;->mCamera:Landroid/hardware/Camera;

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    .line 147
    invoke-static {v0}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/custom/onthego/OnTheGoService;->mCamera:Landroid/hardware/Camera;

    goto :goto_1

    .line 151
    :cond_1
    new-instance p1, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {p1}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 152
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v2

    :goto_0
    if-ge v0, v2, :cond_3

    .line 155
    invoke-static {v0, p1}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 156
    iget v3, p1, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v3, v1, :cond_2

    .line 157
    invoke-static {v0}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/custom/onthego/OnTheGoService;->mCamera:Landroid/hardware/Camera;

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method private releaseCamera()V
    .locals 1

    .line 233
    iget-object v0, p0, Lcom/android/systemui/custom/onthego/OnTheGoService;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 234
    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 235
    iget-object v0, p0, Lcom/android/systemui/custom/onthego/OnTheGoService;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    const/4 v0, 0x0

    .line 236
    iput-object v0, p0, Lcom/android/systemui/custom/onthego/OnTheGoService;->mCamera:Landroid/hardware/Camera;

    :cond_0
    return-void
.end method

.method private resetViews()V
    .locals 2

    .line 223
    invoke-direct {p0}, Lcom/android/systemui/custom/onthego/OnTheGoService;->releaseCamera()V

    const-string/jumbo v0, "window"

    .line 224
    invoke-virtual {p0, v0}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 225
    iget-object v1, p0, Lcom/android/systemui/custom/onthego/OnTheGoService;->mOverlay:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_0

    .line 226
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 227
    iget-object v1, p0, Lcom/android/systemui/custom/onthego/OnTheGoService;->mOverlay:Landroid/widget/FrameLayout;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 228
    iput-object v0, p0, Lcom/android/systemui/custom/onthego/OnTheGoService;->mOverlay:Landroid/widget/FrameLayout;

    :cond_0
    return-void
.end method

.method private setupViews()V
    .locals 5

    .line 165
    invoke-virtual {p0}, Landroid/app/Service;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "on_the_go_camera"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 169
    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/systemui/custom/onthego/OnTheGoService;->getCameraInstance(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x1

    .line 171
    invoke-direct {p0, v0}, Lcom/android/systemui/custom/onthego/OnTheGoService;->createNotification(I)V

    .line 172
    invoke-direct {p0}, Lcom/android/systemui/custom/onthego/OnTheGoService;->stopOnTheGo()V

    .line 175
    :goto_0
    new-instance v0, Landroid/view/TextureView;

    invoke-direct {v0, p0}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    .line 176
    new-instance v1, Lcom/android/systemui/custom/onthego/OnTheGoService$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/custom/onthego/OnTheGoService$1;-><init>(Lcom/android/systemui/custom/onthego/OnTheGoService;)V

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 201
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/custom/onthego/OnTheGoService;->mOverlay:Landroid/widget/FrameLayout;

    .line 202
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 204
    iget-object v1, p0, Lcom/android/systemui/custom/onthego/OnTheGoService;->mOverlay:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    const-string/jumbo v0, "window"

    .line 206
    invoke-virtual {p0, v0}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 207
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x7d6

    const v3, 0xd000428

    const/4 v4, -0x3

    invoke-direct {v1, v2, v3, v4}, Landroid/view/WindowManager$LayoutParams;-><init>(III)V

    .line 217
    iget-object v2, p0, Lcom/android/systemui/custom/onthego/OnTheGoService;->mOverlay:Landroid/widget/FrameLayout;

    invoke-interface {v0, v2, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 219
    invoke-direct {p0}, Lcom/android/systemui/custom/onthego/OnTheGoService;->toggleOnTheGoAlpha()V

    return-void
.end method

.method private startOnTheGo()V
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/android/systemui/custom/onthego/OnTheGoService;->mNotificationManager:Landroid/app/NotificationManager;

    if-eqz v0, :cond_0

    .line 97
    invoke-direct {p0}, Lcom/android/systemui/custom/onthego/OnTheGoService;->stopOnTheGo()V

    return-void

    .line 101
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/custom/onthego/OnTheGoService;->resetViews()V

    .line 102
    invoke-direct {p0}, Lcom/android/systemui/custom/onthego/OnTheGoService;->setupViews()V

    const/4 v0, 0x0

    .line 104
    invoke-direct {p0, v0}, Lcom/android/systemui/custom/onthego/OnTheGoService;->createNotification(I)V

    return-void
.end method

.method private stopOnTheGo()V
    .locals 2

    .line 108
    invoke-direct {p0}, Lcom/android/systemui/custom/onthego/OnTheGoService;->resetViews()V

    .line 111
    iget-object v0, p0, Lcom/android/systemui/custom/onthego/OnTheGoService;->mNotificationManager:Landroid/app/NotificationManager;

    if-eqz v0, :cond_0

    const v1, 0x4d90c82

    .line 112
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 113
    iget-object v0, p0, Lcom/android/systemui/custom/onthego/OnTheGoService;->mNotificationManager:Landroid/app/NotificationManager;

    const-string v1, "onthego_notif"

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->deleteNotificationChannel(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 114
    iput-object v0, p0, Lcom/android/systemui/custom/onthego/OnTheGoService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 117
    :cond_0
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    return-void
.end method

.method private toggleOnTheGoAlpha()V
    .locals 3

    .line 121
    invoke-virtual {p0}, Landroid/app/Service;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "on_the_go_alpha"

    const/16 v2, 0x32

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 123
    invoke-direct {p0, v0}, Lcom/android/systemui/custom/onthego/OnTheGoService;->toggleOnTheGoAlpha(I)V

    return-void
.end method

.method private toggleOnTheGoAlpha(I)V
    .locals 2

    .line 127
    invoke-virtual {p0}, Landroid/app/Service;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "on_the_go_alpha"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 130
    iget-object p0, p0, Lcom/android/systemui/custom/onthego/OnTheGoService;->mOverlay:Landroid/widget/FrameLayout;

    if-eqz p0, :cond_0

    int-to-float p1, p1

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p1, v0

    .line 131
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public onDestroy()V
    .locals 0

    .line 69
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 70
    invoke-direct {p0}, Lcom/android/systemui/custom/onthego/OnTheGoService;->resetViews()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    const/4 p2, 0x2

    if-eqz p1, :cond_4

    .line 75
    invoke-static {p0}, Lcom/android/internal/util/custom/OnTheGoUtils;->hasCamera(Landroid/content/Context;)Z

    move-result p3

    if-nez p3, :cond_0

    goto :goto_1

    .line 80
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 82
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_2

    const-string p3, "start"

    .line 83
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 84
    invoke-direct {p0}, Lcom/android/systemui/custom/onthego/OnTheGoService;->startOnTheGo()V

    goto :goto_0

    :cond_1
    const-string p3, "stop"

    .line 85
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 86
    invoke-direct {p0}, Lcom/android/systemui/custom/onthego/OnTheGoService;->stopOnTheGo()V

    goto :goto_0

    .line 89
    :cond_2
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    :cond_3
    :goto_0
    return p2

    .line 76
    :cond_4
    :goto_1
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    return p2
.end method
