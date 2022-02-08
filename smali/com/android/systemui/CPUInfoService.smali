.class public Lcom/android/systemui/CPUInfoService;
.super Landroid/app/Service;
.source "CPUInfoService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/CPUInfoService$CurCPUThread;,
        Lcom/android/systemui/CPUInfoService$CPUView;
    }
.end annotation


# instance fields
.field private CPU_TEMP_DIVIDER:I

.field private CPU_TEMP_SENSOR:Ljava/lang/String;

.field private DISPLAY_CPUS:Ljava/lang/String;

.field private mCpu:[Ljava/lang/String;

.field private mCpuTempAvail:Z

.field private mCurCPUThread:Ljava/lang/Thread;

.field private mCurrFreq:[Ljava/lang/String;

.field private mCurrGov:[Ljava/lang/String;

.field private mNumCpus:I

.field private mScreenStateReceiver:Landroid/content/BroadcastReceiver;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 50
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x2

    .line 54
    iput v0, p0, Lcom/android/systemui/CPUInfoService;->mNumCpus:I

    const/4 v0, 0x0

    .line 55
    iput-object v0, p0, Lcom/android/systemui/CPUInfoService;->mCpu:[Ljava/lang/String;

    .line 56
    iput-object v0, p0, Lcom/android/systemui/CPUInfoService;->mCurrFreq:[Ljava/lang/String;

    .line 57
    iput-object v0, p0, Lcom/android/systemui/CPUInfoService;->mCurrGov:[Ljava/lang/String;

    const/4 v0, 0x1

    .line 59
    iput v0, p0, Lcom/android/systemui/CPUInfoService;->CPU_TEMP_DIVIDER:I

    const-string v0, ""

    .line 60
    iput-object v0, p0, Lcom/android/systemui/CPUInfoService;->CPU_TEMP_SENSOR:Ljava/lang/String;

    .line 61
    iput-object v0, p0, Lcom/android/systemui/CPUInfoService;->DISPLAY_CPUS:Ljava/lang/String;

    .line 405
    new-instance v0, Lcom/android/systemui/CPUInfoService$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/CPUInfoService$1;-><init>(Lcom/android/systemui/CPUInfoService;)V

    iput-object v0, p0, Lcom/android/systemui/CPUInfoService;->mScreenStateReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/CPUInfoService;)[Ljava/lang/String;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/android/systemui/CPUInfoService;->mCurrFreq:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/systemui/CPUInfoService;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/android/systemui/CPUInfoService;->startThread()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/systemui/CPUInfoService;)Landroid/view/View;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/android/systemui/CPUInfoService;->mView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/android/systemui/CPUInfoService;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/android/systemui/CPUInfoService;->stopThread()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/CPUInfoService;)[Ljava/lang/String;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/android/systemui/CPUInfoService;->mCurrGov:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/systemui/CPUInfoService;)[Ljava/lang/String;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/android/systemui/CPUInfoService;->mCpu:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/systemui/CPUInfoService;)I
    .locals 0

    .line 50
    iget p0, p0, Lcom/android/systemui/CPUInfoService;->CPU_TEMP_DIVIDER:I

    return p0
.end method

.method static synthetic access$600(Lcom/android/systemui/CPUInfoService;)I
    .locals 0

    .line 50
    iget p0, p0, Lcom/android/systemui/CPUInfoService;->mNumCpus:I

    return p0
.end method

.method static synthetic access$602(Lcom/android/systemui/CPUInfoService;I)I
    .locals 0

    .line 50
    iput p1, p0, Lcom/android/systemui/CPUInfoService;->mNumCpus:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/systemui/CPUInfoService;)Z
    .locals 0

    .line 50
    iget-boolean p0, p0, Lcom/android/systemui/CPUInfoService;->mCpuTempAvail:Z

    return p0
.end method

.method static synthetic access$800(Lcom/android/systemui/CPUInfoService;)Ljava/lang/String;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/android/systemui/CPUInfoService;->CPU_TEMP_SENSOR:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$900(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 50
    invoke-static {p0}, Lcom/android/systemui/CPUInfoService;->readOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getCpus(Ljava/lang/String;)I
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const-string v1, ","

    .line 360
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 361
    array-length v1, p1

    const/4 v2, 0x0

    if-lez v1, :cond_0

    .line 362
    array-length v1, p1

    .line 363
    new-array v3, v1, [Ljava/lang/String;

    iput-object v3, p0, Lcom/android/systemui/CPUInfoService;->mCpu:[Ljava/lang/String;

    :goto_0
    if-ge v0, v1, :cond_4

    .line 367
    :try_start_0
    aget-object v3, p1, v0

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 368
    iget-object v3, p0, Lcom/android/systemui/CPUInfoService;->mCpu:[Ljava/lang/String;

    aget-object v4, p1, v0

    aput-object v4, v3, v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 371
    :catch_0
    invoke-direct {p0, v2}, Lcom/android/systemui/CPUInfoService;->getCpus(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 376
    :cond_0
    invoke-direct {p0, v2}, Lcom/android/systemui/CPUInfoService;->getCpus(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_1
    const-string p1, "/sys/devices/system/cpu/present"

    .line 380
    invoke-static {p1}, Lcom/android/systemui/CPUInfoService;->readOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "-"

    .line 381
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 382
    array-length v1, p1

    const/4 v2, 0x1

    if-le v1, v2, :cond_3

    .line 384
    :try_start_1
    aget-object v1, p1, v0

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 385
    aget-object p1, p1, v2

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    sub-int/2addr p1, v1

    add-int/2addr p1, v2

    if-gez p1, :cond_2

    goto :goto_1

    :cond_2
    move v2, p1

    :catch_1
    :cond_3
    :goto_1
    move v1, v2

    .line 396
    new-array p1, v1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/android/systemui/CPUInfoService;->mCpu:[Ljava/lang/String;

    :goto_2
    if-ge v0, v1, :cond_4

    .line 399
    iget-object p1, p0, Lcom/android/systemui/CPUInfoService;->mCpu:[Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    return v1
.end method

.method private static readOneLine(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 343
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 p0, 0x200

    invoke-direct {v0, v1, p0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 345
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 347
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 348
    throw p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private startThread()V
    .locals 3

    const-string v0, "CPUInfoService"

    const-string v1, "started CurCPUThread"

    .line 421
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    new-instance v0, Lcom/android/systemui/CPUInfoService$CurCPUThread;

    iget-object v1, p0, Lcom/android/systemui/CPUInfoService;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/CPUInfoService;->mNumCpus:I

    invoke-direct {v0, p0, v1, v2}, Lcom/android/systemui/CPUInfoService$CurCPUThread;-><init>(Lcom/android/systemui/CPUInfoService;Landroid/os/Handler;I)V

    iput-object v0, p0, Lcom/android/systemui/CPUInfoService;->mCurCPUThread:Ljava/lang/Thread;

    .line 423
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private stopThread()V
    .locals 2

    .line 427
    iget-object v0, p0, Lcom/android/systemui/CPUInfoService;->mCurCPUThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "CPUInfoService"

    const-string v1, "stopping CurCPUThread"

    .line 428
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    iget-object v0, p0, Lcom/android/systemui/CPUInfoService;->mCurCPUThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 431
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/CPUInfoService;->mCurCPUThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    const/4 v0, 0x0

    .line 435
    iput-object v0, p0, Lcom/android/systemui/CPUInfoService;->mCurCPUThread:Ljava/lang/Thread;

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

    .line 292
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 294
    invoke-virtual {p0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$integer;->config_cpuTempDivider:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/CPUInfoService;->CPU_TEMP_DIVIDER:I

    .line 295
    invoke-virtual {p0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$string;->config_cpuTempSensor:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/CPUInfoService;->CPU_TEMP_SENSOR:Ljava/lang/String;

    .line 296
    invoke-virtual {p0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$string;->config_displayCpus:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/CPUInfoService;->DISPLAY_CPUS:Ljava/lang/String;

    .line 298
    invoke-direct {p0, v0}, Lcom/android/systemui/CPUInfoService;->getCpus(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/CPUInfoService;->mNumCpus:I

    .line 299
    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lcom/android/systemui/CPUInfoService;->mCurrFreq:[Ljava/lang/String;

    .line 300
    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/CPUInfoService;->mCurrGov:[Ljava/lang/String;

    .line 302
    iget-object v0, p0, Lcom/android/systemui/CPUInfoService;->CPU_TEMP_SENSOR:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/systemui/CPUInfoService;->readOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/CPUInfoService;->mCpuTempAvail:Z

    .line 304
    new-instance v0, Lcom/android/systemui/CPUInfoService$CPUView;

    invoke-direct {v0, p0, p0}, Lcom/android/systemui/CPUInfoService$CPUView;-><init>(Lcom/android/systemui/CPUInfoService;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/CPUInfoService;->mView:Landroid/view/View;

    .line 305
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x2

    const/16 v4, 0x7df

    const/16 v5, 0x18

    const/4 v6, -0x3

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    const/16 v1, 0x35

    .line 312
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const-string v1, "CPU Info"

    .line 313
    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 315
    invoke-direct {p0}, Lcom/android/systemui/CPUInfoService;->startThread()V

    .line 317
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.action.SCREEN_OFF"

    .line 318
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 319
    iget-object v2, p0, Lcom/android/systemui/CPUInfoService;->mScreenStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v1}, Landroid/app/Service;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string/jumbo v1, "window"

    .line 321
    invoke-virtual {p0, v1}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 322
    iget-object p0, p0, Lcom/android/systemui/CPUInfoService;->mView:Landroid/view/View;

    invoke-interface {v1, p0, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 327
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 328
    invoke-direct {p0}, Lcom/android/systemui/CPUInfoService;->stopThread()V

    const-string/jumbo v0, "window"

    .line 329
    invoke-virtual {p0, v0}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/CPUInfoService;->mView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 330
    iput-object v0, p0, Lcom/android/systemui/CPUInfoService;->mView:Landroid/view/View;

    .line 331
    iget-object v0, p0, Lcom/android/systemui/CPUInfoService;->mScreenStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/app/Service;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
