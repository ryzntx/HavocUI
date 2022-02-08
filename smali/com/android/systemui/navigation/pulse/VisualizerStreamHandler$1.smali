.class Lcom/android/systemui/navigation/pulse/VisualizerStreamHandler$1;
.super Landroid/os/Handler;
.source "VisualizerStreamHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/navigation/pulse/VisualizerStreamHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/navigation/pulse/VisualizerStreamHandler;


# direct methods
.method constructor <init>(Lcom/android/systemui/navigation/pulse/VisualizerStreamHandler;Landroid/os/Looper;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/android/systemui/navigation/pulse/VisualizerStreamHandler$1;->this$0:Lcom/android/systemui/navigation/pulse/VisualizerStreamHandler;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 72
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x37

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v0, :cond_1

    const/16 v0, 0x38

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 80
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/navigation/pulse/VisualizerStreamHandler$1;->this$0:Lcom/android/systemui/navigation/pulse/VisualizerStreamHandler;

    iput-boolean v2, p0, Lcom/android/systemui/navigation/pulse/VisualizerStreamHandler;->mIsAnalyzed:Z

    .line 81
    iput-boolean v1, p0, Lcom/android/systemui/navigation/pulse/VisualizerStreamHandler;->mIsValidated:Z

    .line 82
    iput-boolean v1, p0, Lcom/android/systemui/navigation/pulse/VisualizerStreamHandler;->mIsPrepared:Z

    .line 83
    iget-object p0, p0, Lcom/android/systemui/navigation/pulse/VisualizerStreamHandler;->mListener:Lcom/android/systemui/navigation/pulse/VisualizerStreamHandler$Listener;

    invoke-interface {p0, v1}, Lcom/android/systemui/navigation/pulse/VisualizerStreamHandler$Listener;->onStreamAnalyzed(Z)V

    goto :goto_0

    .line 74
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/navigation/pulse/VisualizerStreamHandler$1;->this$0:Lcom/android/systemui/navigation/pulse/VisualizerStreamHandler;

    iput-boolean v2, p0, Lcom/android/systemui/navigation/pulse/VisualizerStreamHandler;->mIsAnalyzed:Z

    .line 75
    iput-boolean v2, p0, Lcom/android/systemui/navigation/pulse/VisualizerStreamHandler;->mIsValidated:Z

    .line 76
    iput-boolean v1, p0, Lcom/android/systemui/navigation/pulse/VisualizerStreamHandler;->mIsPrepared:Z

    .line 77
    iget-object p0, p0, Lcom/android/systemui/navigation/pulse/VisualizerStreamHandler;->mListener:Lcom/android/systemui/navigation/pulse/VisualizerStreamHandler$Listener;

    invoke-interface {p0, v2}, Lcom/android/systemui/navigation/pulse/VisualizerStreamHandler$Listener;->onStreamAnalyzed(Z)V

    :goto_0
    return-void
.end method
