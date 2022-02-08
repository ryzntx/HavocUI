.class public Lcom/android/systemui/biometrics/FODCircleViewImpl;
.super Lcom/android/systemui/SystemUI;
.source "FODCircleViewImpl.java"

# interfaces
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;


# instance fields
.field private final mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/systemui/biometrics/FODCircleViewImplCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

.field private mFodCircleView:Lcom/android/systemui/biometrics/FODCircleView;

.field private mIsFODVisible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/CommandQueue;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcom/android/systemui/SystemUI;-><init>(Landroid/content/Context;)V

    .line 42
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/biometrics/FODCircleViewImpl;->mCallbacks:Ljava/util/ArrayList;

    .line 51
    iput-object p2, p0, Lcom/android/systemui/biometrics/FODCircleViewImpl;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    return-void
.end method

.method static synthetic lambda$removeCallback$0(Lcom/android/systemui/biometrics/FODCircleViewImplCallback;Ljava/lang/ref/WeakReference;)Z
    .locals 0

    .line 121
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private sendUpdates(Lcom/android/systemui/biometrics/FODCircleViewImplCallback;)V
    .locals 0

    .line 125
    invoke-virtual {p1}, Lcom/android/systemui/biometrics/FODCircleViewImplCallback;->onFODStart()V

    .line 126
    iget-boolean p0, p0, Lcom/android/systemui/biometrics/FODCircleViewImpl;->mIsFODVisible:Z

    invoke-virtual {p1, p0}, Lcom/android/systemui/biometrics/FODCircleViewImplCallback;->onFODStatusChange(Z)V

    return-void
.end method


# virtual methods
.method public hideInDisplayFingerprintView()V
    .locals 3

    .line 91
    iget-object v0, p0, Lcom/android/systemui/biometrics/FODCircleViewImpl;->mFodCircleView:Lcom/android/systemui/biometrics/FODCircleView;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    move v1, v0

    .line 92
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/biometrics/FODCircleViewImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 93
    iget-object v2, p0, Lcom/android/systemui/biometrics/FODCircleViewImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/biometrics/FODCircleViewImplCallback;

    if-eqz v2, :cond_0

    .line 95
    invoke-virtual {v2, v0}, Lcom/android/systemui/biometrics/FODCircleViewImplCallback;->onFODStatusChange(Z)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 98
    :cond_1
    iput-boolean v0, p0, Lcom/android/systemui/biometrics/FODCircleViewImpl;->mIsFODVisible:Z

    .line 99
    iget-object p0, p0, Lcom/android/systemui/biometrics/FODCircleViewImpl;->mFodCircleView:Lcom/android/systemui/biometrics/FODCircleView;

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/FODCircleView;->hide()V

    :cond_2
    return-void
.end method

.method public registerCallback(Lcom/android/systemui/biometrics/FODCircleViewImplCallback;)V
    .locals 3

    .line 104
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "*** register callback for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FODCircleViewImpl"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 106
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/biometrics/FODCircleViewImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 107
    iget-object v2, p0, Lcom/android/systemui/biometrics/FODCircleViewImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 108
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "Called by"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const-string p1, "Object tried to add another callback"

    invoke-static {v1, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 113
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/biometrics/FODCircleViewImpl;->mCallbacks:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 114
    invoke-virtual {p0, v0}, Lcom/android/systemui/biometrics/FODCircleViewImpl;->removeCallback(Lcom/android/systemui/biometrics/FODCircleViewImplCallback;)V

    .line 115
    invoke-direct {p0, p1}, Lcom/android/systemui/biometrics/FODCircleViewImpl;->sendUpdates(Lcom/android/systemui/biometrics/FODCircleViewImplCallback;)V

    return-void
.end method

.method public removeCallback(Lcom/android/systemui/biometrics/FODCircleViewImplCallback;)V
    .locals 2

    .line 119
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "*** unregister callback for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FODCircleViewImpl"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iget-object p0, p0, Lcom/android/systemui/biometrics/FODCircleViewImpl;->mCallbacks:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/systemui/biometrics/-$$Lambda$FODCircleViewImpl$pDjh5TwRU6gna3d817raZBNYJSI;

    invoke-direct {v0, p1}, Lcom/android/systemui/biometrics/-$$Lambda$FODCircleViewImpl$pDjh5TwRU6gna3d817raZBNYJSI;-><init>(Lcom/android/systemui/biometrics/FODCircleViewImplCallback;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    return-void
.end method

.method public showInDisplayFingerprintView()V
    .locals 3

    .line 77
    iget-object v0, p0, Lcom/android/systemui/biometrics/FODCircleViewImpl;->mFodCircleView:Lcom/android/systemui/biometrics/FODCircleView;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 78
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/biometrics/FODCircleViewImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v0, v1, :cond_1

    .line 79
    iget-object v1, p0, Lcom/android/systemui/biometrics/FODCircleViewImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/biometrics/FODCircleViewImplCallback;

    if-eqz v1, :cond_0

    .line 81
    invoke-virtual {v1, v2}, Lcom/android/systemui/biometrics/FODCircleViewImplCallback;->onFODStatusChange(Z)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 84
    :cond_1
    iput-boolean v2, p0, Lcom/android/systemui/biometrics/FODCircleViewImpl;->mIsFODVisible:Z

    .line 85
    iget-object p0, p0, Lcom/android/systemui/biometrics/FODCircleViewImpl;->mFodCircleView:Lcom/android/systemui/biometrics/FODCircleView;

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/FODCircleView;->show()V

    :cond_2
    return-void
.end method

.method public start()V
    .locals 2

    .line 56
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.fingerprint"

    .line 57
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "vendor.lineage.biometrics.fingerprint.inscreen"

    .line 58
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/biometrics/FODCircleViewImpl;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/CommandQueue;->addCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    .line 63
    :try_start_0
    new-instance v0, Lcom/android/systemui/biometrics/FODCircleView;

    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/biometrics/FODCircleView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/biometrics/FODCircleViewImpl;->mFodCircleView:Lcom/android/systemui/biometrics/FODCircleView;

    const/4 v0, 0x0

    .line 64
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/biometrics/FODCircleViewImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 65
    iget-object v1, p0, Lcom/android/systemui/biometrics/FODCircleViewImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/biometrics/FODCircleViewImplCallback;

    if-eqz v1, :cond_1

    .line 67
    invoke-virtual {v1}, Lcom/android/systemui/biometrics/FODCircleViewImplCallback;->onFODStart()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "FODCircleViewImpl"

    const-string v1, "Failed to initialize FODCircleView"

    .line 71
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_1
    return-void
.end method
