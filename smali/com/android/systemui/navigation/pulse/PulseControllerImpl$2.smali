.class Lcom/android/systemui/navigation/pulse/PulseControllerImpl$2;
.super Ljava/lang/Object;
.source "PulseControllerImpl.java"

# interfaces
.implements Lcom/android/systemui/navigation/pulse/VisualizerStreamHandler$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/navigation/pulse/PulseControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/navigation/pulse/PulseControllerImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/navigation/pulse/PulseControllerImpl;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lcom/android/systemui/navigation/pulse/PulseControllerImpl$2;->this$0:Lcom/android/systemui/navigation/pulse/PulseControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFFTUpdate([B)V
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/android/systemui/navigation/pulse/PulseControllerImpl$2;->this$0:Lcom/android/systemui/navigation/pulse/PulseControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/navigation/pulse/PulseControllerImpl;->access$500(Lcom/android/systemui/navigation/pulse/PulseControllerImpl;)Lcom/android/systemui/navigation/pulse/Renderer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 153
    iget-object p0, p0, Lcom/android/systemui/navigation/pulse/PulseControllerImpl$2;->this$0:Lcom/android/systemui/navigation/pulse/PulseControllerImpl;

    invoke-static {p0}, Lcom/android/systemui/navigation/pulse/PulseControllerImpl;->access$500(Lcom/android/systemui/navigation/pulse/PulseControllerImpl;)Lcom/android/systemui/navigation/pulse/Renderer;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/systemui/navigation/pulse/Renderer;->onFFTUpdate([B)V

    :cond_0
    return-void
.end method

.method public onStreamAnalyzed(Z)V
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/android/systemui/navigation/pulse/PulseControllerImpl$2;->this$0:Lcom/android/systemui/navigation/pulse/PulseControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/navigation/pulse/PulseControllerImpl;->access$500(Lcom/android/systemui/navigation/pulse/PulseControllerImpl;)Lcom/android/systemui/navigation/pulse/Renderer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/android/systemui/navigation/pulse/PulseControllerImpl$2;->this$0:Lcom/android/systemui/navigation/pulse/PulseControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/navigation/pulse/PulseControllerImpl;->access$500(Lcom/android/systemui/navigation/pulse/PulseControllerImpl;)Lcom/android/systemui/navigation/pulse/Renderer;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/systemui/navigation/pulse/VisualizerStreamHandler$Listener;->onStreamAnalyzed(Z)V

    :cond_0
    if-eqz p1, :cond_1

    .line 143
    iget-object p1, p0, Lcom/android/systemui/navigation/pulse/PulseControllerImpl$2;->this$0:Lcom/android/systemui/navigation/pulse/PulseControllerImpl;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/systemui/navigation/pulse/PulseControllerImpl;->access$600(Lcom/android/systemui/navigation/pulse/PulseControllerImpl;Z)V

    .line 144
    iget-object p0, p0, Lcom/android/systemui/navigation/pulse/PulseControllerImpl$2;->this$0:Lcom/android/systemui/navigation/pulse/PulseControllerImpl;

    invoke-static {p0}, Lcom/android/systemui/navigation/pulse/PulseControllerImpl;->access$700(Lcom/android/systemui/navigation/pulse/PulseControllerImpl;)V

    goto :goto_0

    .line 146
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/navigation/pulse/PulseControllerImpl$2;->this$0:Lcom/android/systemui/navigation/pulse/PulseControllerImpl;

    invoke-static {p0}, Lcom/android/systemui/navigation/pulse/PulseControllerImpl;->access$800(Lcom/android/systemui/navigation/pulse/PulseControllerImpl;)V

    :goto_0
    return-void
.end method
