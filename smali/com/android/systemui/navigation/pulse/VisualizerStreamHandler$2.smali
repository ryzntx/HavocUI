.class Lcom/android/systemui/navigation/pulse/VisualizerStreamHandler$2;
.super Ljava/lang/Object;
.source "VisualizerStreamHandler.java"

# interfaces
.implements Landroid/media/audiofx/Visualizer$OnDataCaptureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/navigation/pulse/VisualizerStreamHandler;->lambda$link$0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/navigation/pulse/VisualizerStreamHandler;


# direct methods
.method constructor <init>(Lcom/android/systemui/navigation/pulse/VisualizerStreamHandler;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/android/systemui/navigation/pulse/VisualizerStreamHandler$2;->this$0:Lcom/android/systemui/navigation/pulse/VisualizerStreamHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFftDataCapture(Landroid/media/audiofx/Visualizer;[BI)V
    .locals 0

    .line 130
    iget-object p1, p0, Lcom/android/systemui/navigation/pulse/VisualizerStreamHandler$2;->this$0:Lcom/android/systemui/navigation/pulse/VisualizerStreamHandler;

    invoke-static {p1, p2}, Lcom/android/systemui/navigation/pulse/VisualizerStreamHandler;->access$000(Lcom/android/systemui/navigation/pulse/VisualizerStreamHandler;[B)V

    .line 131
    iget-object p1, p0, Lcom/android/systemui/navigation/pulse/VisualizerStreamHandler$2;->this$0:Lcom/android/systemui/navigation/pulse/VisualizerStreamHandler;

    invoke-virtual {p1}, Lcom/android/systemui/navigation/pulse/VisualizerStreamHandler;->isValidStream()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/navigation/pulse/VisualizerStreamHandler$2;->this$0:Lcom/android/systemui/navigation/pulse/VisualizerStreamHandler;

    iget-boolean p1, p0, Lcom/android/systemui/navigation/pulse/VisualizerStreamHandler;->mIsPaused:Z

    if-nez p1, :cond_0

    .line 132
    iget-object p0, p0, Lcom/android/systemui/navigation/pulse/VisualizerStreamHandler;->mListener:Lcom/android/systemui/navigation/pulse/VisualizerStreamHandler$Listener;

    invoke-interface {p0, p2}, Lcom/android/systemui/navigation/pulse/VisualizerStreamHandler$Listener;->onFFTUpdate([B)V

    :cond_0
    return-void
.end method

.method public onWaveFormDataCapture(Landroid/media/audiofx/Visualizer;[BI)V
    .locals 0

    return-void
.end method
