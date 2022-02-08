.class public Lcom/android/systemui/navigation/pulse/VisualizerStreamHandler;
.super Ljava/lang/Object;
.source "VisualizerStreamHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/navigation/pulse/VisualizerStreamHandler$Listener;
    }
.end annotation


# static fields
.field protected static final TAG:Ljava/lang/String; = "VisualizerStreamHandler"


# instance fields
.field protected mConsecutiveFrames:I

.field private final mHandler:Landroid/os/Handler;

.field protected mIsAnalyzed:Z

.field protected mIsPaused:Z

.field protected mIsPrepared:Z

.field protected mIsValidated:Z

.field protected mListener:Lcom/android/systemui/navigation/pulse/VisualizerStreamHandler$Listener;

.field private final mUiBgExecutor:Ljava/util/concurrent/Executor;

.field protected mVisualizer:Landroid/media/audiofx/Visualizer;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/navigation/pulse/PulseControllerImpl;Lcom/android/systemui/navigation/pulse/VisualizerStreamHandler$Listener;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance p1, Lcom/android/systemui/navigation/pulse/VisualizerStreamHandler$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/navigation/pulse/VisualizerStreamHandler$1;-><init>(Lcom/android/systemui/navigation/pulse/VisualizerStreamHandler;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/systemui/navigation/pulse/VisualizerStreamHandler;->mHandler:Landroid/os/Handler;

    .line 93
    iput-object p3, p0, Lcom/android/systemui/navigation/pulse/VisualizerStreamHandler;->mListener:Lcom/android/systemui/navigation/pulse/VisualizerStreamHandler$Listener;

    .line 94
    iput-object p4, p0, Lcom/android/systemui/navigation/pulse/VisualizerStreamHandler;->mUiBgExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/navigation/pulse/VisualizerStreamHandler;[B)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/android/systemui/navigation/pulse/VisualizerStreamHandler;->analyze([B)V

    return-void
.end method

.method private analyze([B)V
    .locals 6

    .line 175
    iget-boolean v0, p0, Lcom/android/systemui/navigation/pulse/VisualizerStreamHandler;->mIsAnalyzed:Z

    if-eqz v0, :cond_0

    return-void

    .line 179
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/navigation/pulse/VisualizerStreamHandler;->mIsPrepared:Z

    const/16 v1, 0x38

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 180
    iget-object v0, p0, Lcom/android/systemui/navigation/pulse/VisualizerStreamHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0x1770

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 182
    iput-boolean v2, p0, Lcom/android/systemui/navigation/pulse/VisualizerStreamHandler;->mIsPrepared:Z

    .line 185
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/systemui/navigation/pulse/VisualizerStreamHandler;->isDataEmpty([B)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    .line 186
    iput p1, p0, Lcom/android/systemui/navigation/pulse/VisualizerStreamHandler;->mConsecutiveFrames:I

    goto :goto_0

    .line 188
    :cond_2
    iget p1, p0, Lcom/android/systemui/navigation/pulse/VisualizerStreamHandler;->mConsecutiveFrames:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/android/systemui/navigation/pulse/VisualizerStreamHandler;->mConsecutiveFrames:I

    .line 191
    :goto_0
    iget p1, p0, Lcom/android/systemui/navigation/pulse/VisualizerStreamHandler;->mConsecutiveFrames:I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    .line 192
    iput-boolean v2, p0, Lcom/android/systemui/navigation/pulse/VisualizerStreamHandler;->mIsPaused:Z

    .line 193
    iget-object p1, p0, Lcom/android/systemui/navigation/pulse/VisualizerStreamHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 194
    iget-object p0, p0, Lcom/android/systemui/navigation/pulse/VisualizerStreamHandler;->mHandler:Landroid/os/Handler;

    const/16 p1, 0x37

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_3
    return-void
.end method

.method private isDataEmpty([B)Z
    .locals 3

    .line 199
    array-length p0, p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p0, :cond_1

    aget-byte v2, p1, v1

    if-eqz v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$link$0()V
    .locals 8

    .line 102
    invoke-virtual {p0}, Lcom/android/systemui/navigation/pulse/VisualizerStreamHandler;->pause()V

    .line 103
    invoke-virtual {p0}, Lcom/android/systemui/navigation/pulse/VisualizerStreamHandler;->resetAnalyzer()V

    .line 105
    iget-object v0, p0, Lcom/android/systemui/navigation/pulse/VisualizerStreamHandler;->mVisualizer:Landroid/media/audiofx/Visualizer;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 107
    :try_start_0
    new-instance v0, Landroid/media/audiofx/Visualizer;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Landroid/media/audiofx/Visualizer;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/navigation/pulse/VisualizerStreamHandler;->mVisualizer:Landroid/media/audiofx/Visualizer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    invoke-virtual {v0, v2}, Landroid/media/audiofx/Visualizer;->setEnabled(Z)I

    .line 113
    iget-object v0, p0, Lcom/android/systemui/navigation/pulse/VisualizerStreamHandler;->mVisualizer:Landroid/media/audiofx/Visualizer;

    invoke-static {}, Landroid/media/audiofx/Visualizer;->getCaptureSizeRange()[I

    move-result-object v3

    aget v3, v3, v1

    invoke-virtual {v0, v3}, Landroid/media/audiofx/Visualizer;->setCaptureSize(I)I

    .line 115
    new-instance v0, Lcom/android/systemui/navigation/pulse/VisualizerStreamHandler$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/navigation/pulse/VisualizerStreamHandler$2;-><init>(Lcom/android/systemui/navigation/pulse/VisualizerStreamHandler;)V

    .line 137
    iget-object v3, p0, Lcom/android/systemui/navigation/pulse/VisualizerStreamHandler;->mVisualizer:Landroid/media/audiofx/Visualizer;

    .line 138
    invoke-static {}, Landroid/media/audiofx/Visualizer;->getMaxCaptureRate()I

    move-result v4

    int-to-double v4, v4

    const-wide/high16 v6, 0x3fe8000000000000L    # 0.75

    mul-double/2addr v4, v6

    double-to-int v4, v4

    .line 137
    invoke-virtual {v3, v0, v4, v2, v1}, Landroid/media/audiofx/Visualizer;->setDataCaptureListener(Landroid/media/audiofx/Visualizer$OnDataCaptureListener;IZZ)I

    goto :goto_0

    :catch_0
    move-exception p0

    .line 109
    sget-object v0, Lcom/android/systemui/navigation/pulse/VisualizerStreamHandler;->TAG:Ljava/lang/String;

    const-string v1, "Error enabling visualizer!"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    .line 141
    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/navigation/pulse/VisualizerStreamHandler;->mVisualizer:Landroid/media/audiofx/Visualizer;

    invoke-virtual {p0, v1}, Landroid/media/audiofx/Visualizer;->setEnabled(Z)I

    return-void
.end method


# virtual methods
.method public isValidStream()Z
    .locals 1

    .line 156
    iget-boolean v0, p0, Lcom/android/systemui/navigation/pulse/VisualizerStreamHandler;->mIsAnalyzed:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/android/systemui/navigation/pulse/VisualizerStreamHandler;->mIsValidated:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public synthetic lambda$link$0$VisualizerStreamHandler()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/navigation/pulse/VisualizerStreamHandler;->lambda$link$0()V

    return-void
.end method

.method public final link()V
    .locals 2

    .line 101
    iget-object v0, p0, Lcom/android/systemui/navigation/pulse/VisualizerStreamHandler;->mUiBgExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/systemui/navigation/pulse/-$$Lambda$VisualizerStreamHandler$s-WrAvLG9tK-X4OQV7ca8O6IK9w;

    invoke-direct {v1, p0}, Lcom/android/systemui/navigation/pulse/-$$Lambda$VisualizerStreamHandler$s-WrAvLG9tK-X4OQV7ca8O6IK9w;-><init>(Lcom/android/systemui/navigation/pulse/VisualizerStreamHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public pause()V
    .locals 1

    const/4 v0, 0x1

    .line 167
    iput-boolean v0, p0, Lcom/android/systemui/navigation/pulse/VisualizerStreamHandler;->mIsPaused:Z

    return-void
.end method

.method public resetAnalyzer()V
    .locals 1

    const/4 v0, 0x0

    .line 160
    iput-boolean v0, p0, Lcom/android/systemui/navigation/pulse/VisualizerStreamHandler;->mIsAnalyzed:Z

    .line 161
    iput-boolean v0, p0, Lcom/android/systemui/navigation/pulse/VisualizerStreamHandler;->mIsValidated:Z

    .line 162
    iput-boolean v0, p0, Lcom/android/systemui/navigation/pulse/VisualizerStreamHandler;->mIsPrepared:Z

    .line 163
    iput v0, p0, Lcom/android/systemui/navigation/pulse/VisualizerStreamHandler;->mConsecutiveFrames:I

    return-void
.end method

.method public resume()V
    .locals 1

    const/4 v0, 0x0

    .line 171
    iput-boolean v0, p0, Lcom/android/systemui/navigation/pulse/VisualizerStreamHandler;->mIsPaused:Z

    return-void
.end method

.method public final unlink()V
    .locals 2

    .line 146
    iget-object v0, p0, Lcom/android/systemui/navigation/pulse/VisualizerStreamHandler;->mVisualizer:Landroid/media/audiofx/Visualizer;

    if-eqz v0, :cond_0

    .line 147
    invoke-virtual {p0}, Lcom/android/systemui/navigation/pulse/VisualizerStreamHandler;->pause()V

    .line 148
    iget-object v0, p0, Lcom/android/systemui/navigation/pulse/VisualizerStreamHandler;->mVisualizer:Landroid/media/audiofx/Visualizer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/audiofx/Visualizer;->setEnabled(Z)I

    .line 149
    iget-object v0, p0, Lcom/android/systemui/navigation/pulse/VisualizerStreamHandler;->mVisualizer:Landroid/media/audiofx/Visualizer;

    invoke-virtual {v0}, Landroid/media/audiofx/Visualizer;->release()V

    const/4 v0, 0x0

    .line 150
    iput-object v0, p0, Lcom/android/systemui/navigation/pulse/VisualizerStreamHandler;->mVisualizer:Landroid/media/audiofx/Visualizer;

    .line 151
    invoke-virtual {p0}, Lcom/android/systemui/navigation/pulse/VisualizerStreamHandler;->resetAnalyzer()V

    :cond_0
    return-void
.end method
