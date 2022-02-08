.class public Lcom/android/systemui/FPSInfoService$CurFPSThread;
.super Ljava/lang/Thread;
.source "FPSInfoService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/FPSInfoService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "CurFPSThread"
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mInterrupt:Z

.field final synthetic this$0:Lcom/android/systemui/FPSInfoService;


# direct methods
.method public constructor <init>(Lcom/android/systemui/FPSInfoService;Landroid/os/Handler;)V
    .locals 0

    .line 184
    iput-object p1, p0, Lcom/android/systemui/FPSInfoService$CurFPSThread;->this$0:Lcom/android/systemui/FPSInfoService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 p1, 0x0

    .line 181
    iput-boolean p1, p0, Lcom/android/systemui/FPSInfoService$CurFPSThread;->mInterrupt:Z

    .line 185
    iput-object p2, p0, Lcom/android/systemui/FPSInfoService$CurFPSThread;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public interrupt()V
    .locals 1

    const/4 v0, 0x1

    .line 189
    iput-boolean v0, p0, Lcom/android/systemui/FPSInfoService$CurFPSThread;->mInterrupt:Z

    return-void
.end method

.method public run()V
    .locals 4

    .line 195
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/android/systemui/FPSInfoService$CurFPSThread;->mInterrupt:Z

    if-nez v0, :cond_0

    const-wide/16 v0, 0x3e8

    .line 196
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 198
    iget-object v0, p0, Lcom/android/systemui/FPSInfoService$CurFPSThread;->this$0:Lcom/android/systemui/FPSInfoService;

    invoke-static {v0}, Lcom/android/systemui/FPSInfoService;->access$300(Lcom/android/systemui/FPSInfoService;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/FPSInfoService;->access$400(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 199
    iget-object v1, p0, Lcom/android/systemui/FPSInfoService$CurFPSThread;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/FPSInfoService$CurFPSThread;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    return-void
.end method
