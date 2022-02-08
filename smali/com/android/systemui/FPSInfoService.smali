.class public Lcom/android/systemui/FPSInfoService;
.super Landroid/app/Service;
.source "FPSInfoService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/FPSInfoService$CurFPSThread;,
        Lcom/android/systemui/FPSInfoService$FPSView;
    }
.end annotation


# instance fields
.field private MEASURED_FPS:Ljava/lang/String;

.field private mCurFPSThread:Ljava/lang/Thread;

.field private mFps:Ljava/lang/String;

.field private mScreenStateReceiver:Landroid/content/BroadcastReceiver;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 51
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    .line 55
    iput-object v0, p0, Lcom/android/systemui/FPSInfoService;->mFps:Ljava/lang/String;

    const-string v0, ""

    .line 56
    iput-object v0, p0, Lcom/android/systemui/FPSInfoService;->MEASURED_FPS:Ljava/lang/String;

    .line 264
    new-instance v0, Lcom/android/systemui/FPSInfoService$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/FPSInfoService$1;-><init>(Lcom/android/systemui/FPSInfoService;)V

    iput-object v0, p0, Lcom/android/systemui/FPSInfoService;->mScreenStateReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/FPSInfoService;)Ljava/lang/String;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/android/systemui/FPSInfoService;->mFps:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$002(Lcom/android/systemui/FPSInfoService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/android/systemui/FPSInfoService;->mFps:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/systemui/FPSInfoService;)Ljava/lang/String;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/android/systemui/FPSInfoService;->MEASURED_FPS:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 51
    invoke-static {p0}, Lcom/android/systemui/FPSInfoService;->readOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/systemui/FPSInfoService;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/android/systemui/FPSInfoService;->startThread()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/FPSInfoService;)Landroid/view/View;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/android/systemui/FPSInfoService;->mView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/systemui/FPSInfoService;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/android/systemui/FPSInfoService;->stopThread()V

    return-void
.end method

.method private static readOneLine(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 252
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 p0, 0x200

    invoke-direct {v0, v1, p0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 254
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 256
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 257
    throw p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private startThread()V
    .locals 2

    const-string v0, "FPSInfoService"

    const-string v1, "started CurFPSThread"

    .line 280
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    new-instance v0, Lcom/android/systemui/FPSInfoService$CurFPSThread;

    iget-object v1, p0, Lcom/android/systemui/FPSInfoService;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/FPSInfoService$CurFPSThread;-><init>(Lcom/android/systemui/FPSInfoService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/FPSInfoService;->mCurFPSThread:Ljava/lang/Thread;

    .line 282
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private stopThread()V
    .locals 2

    .line 286
    iget-object v0, p0, Lcom/android/systemui/FPSInfoService;->mCurFPSThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "FPSInfoService"

    const-string v1, "stopping CurFPSThread"

    .line 287
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    iget-object v0, p0, Lcom/android/systemui/FPSInfoService;->mCurFPSThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 290
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/FPSInfoService;->mCurFPSThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    const/4 v0, 0x0

    .line 294
    iput-object v0, p0, Lcom/android/systemui/FPSInfoService;->mCurFPSThread:Ljava/lang/Thread;

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public onCreate()V
    .locals 7

    .line 209
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 211
    invoke-virtual {p0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$string;->config_fpsInfoSysNode:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/FPSInfoService;->MEASURED_FPS:Ljava/lang/String;

    .line 213
    new-instance v0, Lcom/android/systemui/FPSInfoService$FPSView;

    invoke-direct {v0, p0, p0}, Lcom/android/systemui/FPSInfoService$FPSView;-><init>(Lcom/android/systemui/FPSInfoService;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/FPSInfoService;->mView:Landroid/view/View;

    .line 214
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x2

    const/16 v4, 0x7df

    const/16 v5, 0x18

    const/4 v6, -0x3

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    const/16 v1, 0x33

    .line 221
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const-string v1, "FPS Info"

    .line 222
    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 224
    invoke-direct {p0}, Lcom/android/systemui/FPSInfoService;->startThread()V

    .line 226
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.action.SCREEN_OFF"

    .line 227
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 228
    iget-object v2, p0, Lcom/android/systemui/FPSInfoService;->mScreenStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v1}, Landroid/app/Service;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string/jumbo v1, "window"

    .line 230
    invoke-virtual {p0, v1}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 231
    iget-object p0, p0, Lcom/android/systemui/FPSInfoService;->mView:Landroid/view/View;

    invoke-interface {v1, p0, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 236
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 237
    invoke-direct {p0}, Lcom/android/systemui/FPSInfoService;->stopThread()V

    const-string/jumbo v0, "window"

    .line 238
    invoke-virtual {p0, v0}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/FPSInfoService;->mView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 239
    iput-object v0, p0, Lcom/android/systemui/FPSInfoService;->mView:Landroid/view/View;

    .line 240
    iget-object v0, p0, Lcom/android/systemui/FPSInfoService;->mScreenStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/app/Service;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
