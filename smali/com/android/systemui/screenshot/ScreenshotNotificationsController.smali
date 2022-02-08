.class public Lcom/android/systemui/screenshot/ScreenshotNotificationsController;
.super Ljava/lang/Object;
.source "ScreenshotNotificationsController.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mIconSize:I

.field private mNotificationBuilder:Landroid/app/Notification$Builder;

.field private final mNotificationManager:Landroid/app/NotificationManager;

.field private final mNotificationStyle:Landroid/app/Notification$BigPictureStyle;

.field private mPreviewHeight:I

.field private mPreviewWidth:I

.field private mPublicNotificationBuilder:Landroid/app/Notification$Builder;

.field private final mResources:Landroid/content/res/Resources;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/WindowManager;)V
    .locals 1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotNotificationsController;->mContext:Landroid/content/Context;

    .line 64
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotNotificationsController;->mResources:Landroid/content/res/Resources;

    const-string v0, "notification"

    .line 67
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    iput-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotNotificationsController;->mNotificationManager:Landroid/app/NotificationManager;

    .line 69
    iget-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotNotificationsController;->mResources:Landroid/content/res/Resources;

    const v0, 0x1050006

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/screenshot/ScreenshotNotificationsController;->mIconSize:I

    .line 72
    new-instance p1, Landroid/util/DisplayMetrics;

    invoke-direct {p1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 73
    invoke-interface {p2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 79
    :try_start_0
    iget-object p2, p0, Lcom/android/systemui/screenshot/ScreenshotNotificationsController;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/android/systemui/R$dimen;->notification_panel_width:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p2, 0x0

    :goto_0
    if-gtz p2, :cond_0

    .line 84
    iget p2, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 86
    :cond_0
    iput p2, p0, Lcom/android/systemui/screenshot/ScreenshotNotificationsController;->mPreviewWidth:I

    .line 87
    iget-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotNotificationsController;->mResources:Landroid/content/res/Resources;

    sget p2, Lcom/android/systemui/R$dimen;->notification_max_height:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/screenshot/ScreenshotNotificationsController;->mPreviewHeight:I

    .line 90
    new-instance p1, Landroid/app/Notification$BigPictureStyle;

    invoke-direct {p1}, Landroid/app/Notification$BigPictureStyle;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotNotificationsController;->mNotificationStyle:Landroid/app/Notification$BigPictureStyle;

    return-void
.end method

.method static cancelScreenshotNotification(Landroid/content/Context;)V
    .locals 1

    const-string v0, "notification"

    .line 350
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    const/4 v0, 0x1

    .line 351
    invoke-virtual {p0, v0}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method private generateAdjustedHwBitmap(Landroid/graphics/Bitmap;IILandroid/graphics/Matrix;Landroid/graphics/Paint;I)Landroid/graphics/Bitmap;
    .locals 0

    .line 340
    new-instance p0, Landroid/graphics/Picture;

    invoke-direct {p0}, Landroid/graphics/Picture;-><init>()V

    .line 341
    invoke-virtual {p0, p2, p3}, Landroid/graphics/Picture;->beginRecording(II)Landroid/graphics/Canvas;

    move-result-object p2

    .line 342
    invoke-virtual {p2, p6}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 343
    invoke-virtual {p2, p1, p4, p5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 344
    invoke-virtual {p0}, Landroid/graphics/Picture;->endRecording()V

    .line 345
    invoke-static {p0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Picture;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public notifyScreenshotError(I)V
    .locals 10

    .line 294
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotNotificationsController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 295
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 298
    new-instance v1, Landroid/app/Notification$Builder;

    iget-object v2, p0, Lcom/android/systemui/screenshot/ScreenshotNotificationsController;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/systemui/util/NotificationChannels;->ALERTS:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sget v2, Lcom/android/systemui/R$string;->screenshot_failed_title:I

    .line 299
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$string;->screenshot_failed_title:I

    .line 300
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 301
    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$drawable;->stat_notify_image_error:I

    .line 302
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 303
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 304
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v0

    const-string v2, "err"

    .line 305
    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 306
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/screenshot/ScreenshotNotificationsController;->mContext:Landroid/content/Context;

    const v3, 0x106001c

    .line 307
    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 309
    iget-object v2, p0, Lcom/android/systemui/screenshot/ScreenshotNotificationsController;->mContext:Landroid/content/Context;

    const-string v3, "device_policy"

    .line 310
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    const-string v3, "policy_disable_screen_capture"

    .line 312
    invoke-virtual {v2, v3}, Landroid/app/admin/DevicePolicyManager;->createAdminSupportIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 314
    iget-object v4, p0, Lcom/android/systemui/screenshot/ScreenshotNotificationsController;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    const/high16 v7, 0x4000000

    const/4 v8, 0x0

    sget-object v9, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-static/range {v4 .. v9}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v2

    .line 316
    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 319
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/screenshot/ScreenshotNotificationsController;->mContext:Landroid/content/Context;

    invoke-static {v2, v0, v1}, Lcom/android/systemui/SystemUI;->overrideNotificationAppName(Landroid/content/Context;Landroid/app/Notification$Builder;Z)V

    .line 321
    new-instance v2, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v2, v0}, Landroid/app/Notification$BigTextStyle;-><init>(Landroid/app/Notification$Builder;)V

    .line 322
    invoke-virtual {v2, p1}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object p1

    .line 323
    invoke-virtual {p1}, Landroid/app/Notification$BigTextStyle;->build()Landroid/app/Notification;

    move-result-object p1

    .line 324
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotNotificationsController;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p0, v1, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method public reset()V
    .locals 3

    .line 98
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcom/android/systemui/screenshot/ScreenshotNotificationsController;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/systemui/util/NotificationChannels;->SCREENSHOTS_HEADSUP:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotNotificationsController;->mPublicNotificationBuilder:Landroid/app/Notification$Builder;

    .line 100
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcom/android/systemui/screenshot/ScreenshotNotificationsController;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/systemui/util/NotificationChannels;->SCREENSHOTS_HEADSUP:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotNotificationsController;->mNotificationBuilder:Landroid/app/Notification$Builder;

    return-void
.end method

.method public setImage(Landroid/graphics/Bitmap;)V
    .locals 12

    .line 111
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 112
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 114
    new-instance v9, Landroid/graphics/Paint;

    invoke-direct {v9}, Landroid/graphics/Paint;-><init>()V

    .line 115
    new-instance v2, Landroid/graphics/ColorMatrix;

    invoke-direct {v2}, Landroid/graphics/ColorMatrix;-><init>()V

    const/high16 v3, 0x3e800000    # 0.25f

    .line 116
    invoke-virtual {v2, v3}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 117
    new-instance v3, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v3, v2}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v9, v3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 118
    new-instance v10, Landroid/graphics/Matrix;

    invoke-direct {v10}, Landroid/graphics/Matrix;-><init>()V

    .line 121
    iget v2, p0, Lcom/android/systemui/screenshot/ScreenshotNotificationsController;->mPreviewWidth:I

    sub-int/2addr v2, v0

    int-to-float v2, v2

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v2, v11

    iget v3, p0, Lcom/android/systemui/screenshot/ScreenshotNotificationsController;->mPreviewHeight:I

    sub-int/2addr v3, v1

    int-to-float v3, v3

    div-float/2addr v3, v11

    invoke-virtual {v10, v2, v3}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 123
    iget v4, p0, Lcom/android/systemui/screenshot/ScreenshotNotificationsController;->mPreviewWidth:I

    iget v5, p0, Lcom/android/systemui/screenshot/ScreenshotNotificationsController;->mPreviewHeight:I

    const v8, 0x40ffffff    # 7.9999995f

    move-object v2, p0

    move-object v3, p1

    move-object v6, v10

    move-object v7, v9

    invoke-direct/range {v2 .. v8}, Lcom/android/systemui/screenshot/ScreenshotNotificationsController;->generateAdjustedHwBitmap(Landroid/graphics/Bitmap;IILandroid/graphics/Matrix;Landroid/graphics/Paint;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 126
    iget-object v3, p0, Lcom/android/systemui/screenshot/ScreenshotNotificationsController;->mNotificationStyle:Landroid/app/Notification$BigPictureStyle;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->createAshmemBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/app/Notification$BigPictureStyle;->bigPicture(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;

    .line 129
    iget v2, p0, Lcom/android/systemui/screenshot/ScreenshotNotificationsController;->mIconSize:I

    int-to-float v2, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 130
    invoke-virtual {v10, v2, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 131
    iget v3, p0, Lcom/android/systemui/screenshot/ScreenshotNotificationsController;->mIconSize:I

    int-to-float v4, v3

    int-to-float v0, v0

    mul-float/2addr v0, v2

    sub-float/2addr v4, v0

    div-float/2addr v4, v11

    int-to-float v0, v3

    int-to-float v1, v1

    mul-float/2addr v2, v1

    sub-float/2addr v0, v2

    div-float/2addr v0, v11

    invoke-virtual {v10, v4, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 134
    iget v5, p0, Lcom/android/systemui/screenshot/ScreenshotNotificationsController;->mIconSize:I

    move-object v2, p0

    move-object v3, p1

    move v4, v5

    .line 135
    invoke-direct/range {v2 .. v8}, Lcom/android/systemui/screenshot/ScreenshotNotificationsController;->generateAdjustedHwBitmap(Landroid/graphics/Bitmap;IILandroid/graphics/Matrix;Landroid/graphics/Paint;I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 145
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotNotificationsController;->mNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->createAshmemBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    .line 147
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotNotificationsController;->mNotificationStyle:Landroid/app/Notification$BigPictureStyle;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/app/Notification$BigPictureStyle;->bigLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;

    return-void
.end method

.method public showSilentScreenshotNotification(Lcom/android/systemui/screenshot/GlobalScreenshot$SavedImageData;)V
    .locals 10

    .line 237
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotNotificationsController;->mNotificationBuilder:Landroid/app/Notification$Builder;

    iget-object v1, p1, Lcom/android/systemui/screenshot/GlobalScreenshot$SavedImageData;->shareAction:Landroid/app/Notification$Action;

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    .line 238
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotNotificationsController;->mNotificationBuilder:Landroid/app/Notification$Builder;

    iget-object v1, p1, Lcom/android/systemui/screenshot/GlobalScreenshot$SavedImageData;->editAction:Landroid/app/Notification$Action;

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    .line 239
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotNotificationsController;->mNotificationBuilder:Landroid/app/Notification$Builder;

    iget-object v1, p1, Lcom/android/systemui/screenshot/GlobalScreenshot$SavedImageData;->deleteAction:Landroid/app/Notification$Action;

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    .line 240
    iget-object v0, p1, Lcom/android/systemui/screenshot/GlobalScreenshot$SavedImageData;->smartActions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Notification$Action;

    .line 241
    iget-object v2, p0, Lcom/android/systemui/screenshot/ScreenshotNotificationsController;->mNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v2, v1}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    goto :goto_0

    .line 245
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 246
    iget-object p1, p1, Lcom/android/systemui/screenshot/GlobalScreenshot$SavedImageData;->uri:Landroid/net/Uri;

    const-string v1, "image/png"

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const p1, 0x10000001

    .line 247
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 250
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 253
    iget-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotNotificationsController;->mPublicNotificationBuilder:Landroid/app/Notification$Builder;

    iget-object v3, p0, Lcom/android/systemui/screenshot/ScreenshotNotificationsController;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/android/systemui/R$string;->screenshot_saved_title:I

    .line 254
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p1

    iget-object v3, p0, Lcom/android/systemui/screenshot/ScreenshotNotificationsController;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/android/systemui/R$string;->screenshot_saved_text:I

    .line 255
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p1

    iget-object v3, p0, Lcom/android/systemui/screenshot/ScreenshotNotificationsController;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    .line 256
    invoke-static {v3, v4, v0, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object p1

    sget v3, Lcom/android/systemui/R$drawable;->stat_notify_image:I

    .line 257
    invoke-virtual {p1, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object p1

    const-string v3, "progress"

    .line 258
    invoke-virtual {p1, v3}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 259
    invoke-virtual {p1, v1, v2}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object p1

    const/4 v5, 0x1

    .line 260
    invoke-virtual {p1, v5}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 261
    invoke-virtual {p1, v5}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object p1

    iget-object v6, p0, Lcom/android/systemui/screenshot/ScreenshotNotificationsController;->mContext:Landroid/content/Context;

    const v7, 0x106001c

    .line 262
    invoke-virtual {v6, v7}, Landroid/content/Context;->getColor(I)I

    move-result v6

    invoke-virtual {p1, v6}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object p1

    const-string v6, "silent"

    .line 264
    invoke-virtual {p1, v6}, Landroid/app/Notification$Builder;->setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 265
    invoke-virtual {p1, v5}, Landroid/app/Notification$Builder;->setGroupAlertBehavior(I)Landroid/app/Notification$Builder;

    .line 266
    iget-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotNotificationsController;->mNotificationBuilder:Landroid/app/Notification$Builder;

    iget-object v8, p0, Lcom/android/systemui/screenshot/ScreenshotNotificationsController;->mResources:Landroid/content/res/Resources;

    sget v9, Lcom/android/systemui/R$string;->screenshot_saved_title:I

    .line 267
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p1

    iget-object v8, p0, Lcom/android/systemui/screenshot/ScreenshotNotificationsController;->mResources:Landroid/content/res/Resources;

    sget v9, Lcom/android/systemui/R$string;->screenshot_saved_text:I

    .line 268
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p1

    iget-object v8, p0, Lcom/android/systemui/screenshot/ScreenshotNotificationsController;->mContext:Landroid/content/Context;

    .line 269
    invoke-static {v8, v4, v0, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object p1

    sget v0, Lcom/android/systemui/R$drawable;->stat_notify_image:I

    .line 270
    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 271
    invoke-virtual {p1, v3}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 272
    invoke-virtual {p1, v1, v2}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 273
    invoke-virtual {p1, v5}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 274
    invoke-virtual {p1, v5}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotNotificationsController;->mContext:Landroid/content/Context;

    .line 275
    invoke-virtual {v0, v7}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotNotificationsController;->mPublicNotificationBuilder:Landroid/app/Notification$Builder;

    .line 277
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setPublicVersion(Landroid/app/Notification;)Landroid/app/Notification$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotNotificationsController;->mNotificationStyle:Landroid/app/Notification$BigPictureStyle;

    .line 278
    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object p1

    const/16 v0, 0x20

    .line 279
    invoke-virtual {p1, v0, v4}, Landroid/app/Notification$Builder;->setFlag(IZ)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 280
    invoke-virtual {p1, v6}, Landroid/app/Notification$Builder;->setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 281
    invoke-virtual {p1, v5}, Landroid/app/Notification$Builder;->setGroupAlertBehavior(I)Landroid/app/Notification$Builder;

    .line 283
    iget-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotNotificationsController;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotNotificationsController;->mPublicNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-static {p1, v0, v5}, Lcom/android/systemui/SystemUI;->overrideNotificationAppName(Landroid/content/Context;Landroid/app/Notification$Builder;Z)V

    .line 284
    iget-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotNotificationsController;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotNotificationsController;->mNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-static {p1, v0, v5}, Lcom/android/systemui/SystemUI;->overrideNotificationAppName(Landroid/content/Context;Landroid/app/Notification$Builder;Z)V

    .line 286
    iget-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotNotificationsController;->mNotificationManager:Landroid/app/NotificationManager;

    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotNotificationsController;->mNotificationBuilder:Landroid/app/Notification$Builder;

    .line 287
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p0

    .line 286
    invoke-virtual {p1, v5, p0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method
