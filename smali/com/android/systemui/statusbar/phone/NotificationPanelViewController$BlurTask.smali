.class public Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$BlurTask;
.super Landroid/os/AsyncTask;
.source "NotificationPanelView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BlurTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# static fields
.field private static mBlurEngine:Lcom/znxt/systemui/BlurUtils$BlurEngine;

.field private static mCallback:Lcom/znxt/systemui/BlurUtils$BlurTaskCallback;

.field private static mScreenDimens:[I


# instance fields
.field private mScreenBitmap:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 225
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method public static getRealScreenDimensions()[I
    .locals 1

    .line 240
    sget-object v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$BlurTask;->mScreenDimens:[I

    return-object v0
.end method

.method public static setBlurEngine(Lcom/znxt/systemui/BlurUtils$BlurEngine;)V
    .locals 0

    .line 232
    sput-object p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$BlurTask;->mBlurEngine:Lcom/znxt/systemui/BlurUtils$BlurEngine;

    return-void
.end method

.method public static setBlurTaskCallback(Lcom/znxt/systemui/BlurUtils$BlurTaskCallback;)V
    .locals 0

    .line 236
    sput-object p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$BlurTask;->mCallback:Lcom/znxt/systemui/BlurUtils$BlurTaskCallback;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;
    .locals 7

    const/4 p1, 0x0

    .line 251
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$BlurTask;->mScreenBitmap:Landroid/graphics/Bitmap;

    if-nez p0, :cond_0

    return-object p1

    .line 254
    :cond_0
    sget-object v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$BlurTask;->mCallback:Lcom/znxt/systemui/BlurUtils$BlurTaskCallback;

    const/16 v1, 0x14

    invoke-static {p0, v1, v1}, Lcom/znxt/systemui/DisplayUtils;->getDominantColorByPixelsSampling(Landroid/graphics/Bitmap;II)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/znxt/systemui/BlurUtils$BlurTaskCallback;->dominantColor(I)V

    .line 255
    sget-object v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$BlurTask;->mScreenDimens:[I

    .line 256
    sget v1, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBlurScale:I

    const/4 v2, 0x1

    if-nez v1, :cond_1

    move v1, v2

    .line 260
    :cond_1
    sget v3, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBlurRadius:I

    if-nez v3, :cond_2

    move v3, v2

    .line 262
    :cond_2
    sget-object v4, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBlurUtils:Lcom/znxt/systemui/BlurUtils;

    const/4 v5, 0x0

    aget v6, v0, v5

    div-int/2addr v6, v1

    aget v0, v0, v2

    div-int/2addr v0, v1

    invoke-static {p0, v6, v0, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-virtual {v4, p0, v3}, Lcom/znxt/systemui/BlurUtils;->renderScriptBlur(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 225
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$BlurTask;->doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 271
    sget-object p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$BlurTask;->mCallback:Lcom/znxt/systemui/BlurUtils$BlurTaskCallback;

    invoke-interface {p0, p1}, Lcom/znxt/systemui/BlurUtils$BlurTaskCallback;->blurTaskDone(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 225
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$BlurTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .line 244
    sget-object v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mContext:Landroid/content/Context;

    .line 245
    invoke-static {v0}, Lcom/znxt/systemui/DisplayUtils;->getRealDimensionDisplay(Landroid/content/Context;)[I

    move-result-object v1

    sput-object v1, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$BlurTask;->mScreenDimens:[I

    .line 246
    invoke-static {v0}, Lcom/znxt/systemui/DisplayUtils;->TakeScreenshotSurface(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$BlurTask;->mScreenBitmap:Landroid/graphics/Bitmap;

    return-void
.end method
