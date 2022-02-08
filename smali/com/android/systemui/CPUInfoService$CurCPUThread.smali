.class public Lcom/android/systemui/CPUInfoService$CurCPUThread;
.super Ljava/lang/Thread;
.source "CPUInfoService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/CPUInfoService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "CurCPUThread"
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mInterrupt:Z

.field final synthetic this$0:Lcom/android/systemui/CPUInfoService;


# direct methods
.method public constructor <init>(Lcom/android/systemui/CPUInfoService;Landroid/os/Handler;I)V
    .locals 1

    .line 248
    iput-object p1, p0, Lcom/android/systemui/CPUInfoService$CurCPUThread;->this$0:Lcom/android/systemui/CPUInfoService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    .line 245
    iput-boolean v0, p0, Lcom/android/systemui/CPUInfoService$CurCPUThread;->mInterrupt:Z

    .line 249
    iput-object p2, p0, Lcom/android/systemui/CPUInfoService$CurCPUThread;->mHandler:Landroid/os/Handler;

    .line 250
    invoke-static {p1, p3}, Lcom/android/systemui/CPUInfoService;->access$602(Lcom/android/systemui/CPUInfoService;I)I

    return-void
.end method


# virtual methods
.method public interrupt()V
    .locals 1

    const/4 v0, 0x1

    .line 254
    iput-boolean v0, p0, Lcom/android/systemui/CPUInfoService$CurCPUThread;->mInterrupt:Z

    return-void
.end method

.method public run()V
    .locals 9

    const-string v0, ":"

    const-string v1, "/sys/devices/system/cpu/cpu"

    .line 260
    :goto_0
    :try_start_0
    iget-boolean v2, p0, Lcom/android/systemui/CPUInfoService$CurCPUThread;->mInterrupt:Z

    if-nez v2, :cond_3

    const-wide/16 v2, 0x1f4

    .line 261
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 262
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 263
    iget-object v3, p0, Lcom/android/systemui/CPUInfoService$CurCPUThread;->this$0:Lcom/android/systemui/CPUInfoService;

    invoke-static {v3}, Lcom/android/systemui/CPUInfoService;->access$800(Lcom/android/systemui/CPUInfoService;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/systemui/CPUInfoService;->access$900(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "0"

    if-nez v3, :cond_0

    move-object v3, v4

    .line 264
    :cond_0
    :try_start_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, ";"

    .line 265
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v3, 0x0

    .line 267
    :goto_1
    iget-object v5, p0, Lcom/android/systemui/CPUInfoService$CurCPUThread;->this$0:Lcom/android/systemui/CPUInfoService;

    invoke-static {v5}, Lcom/android/systemui/CPUInfoService;->access$600(Lcom/android/systemui/CPUInfoService;)I

    move-result v5

    if-ge v3, v5, :cond_2

    .line 268
    iget-object v5, p0, Lcom/android/systemui/CPUInfoService$CurCPUThread;->this$0:Lcom/android/systemui/CPUInfoService;

    invoke-static {v5}, Lcom/android/systemui/CPUInfoService;->access$400(Lcom/android/systemui/CPUInfoService;)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v3

    .line 269
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/systemui/CPUInfoService$CurCPUThread;->this$0:Lcom/android/systemui/CPUInfoService;

    invoke-static {v7}, Lcom/android/systemui/CPUInfoService;->access$400(Lcom/android/systemui/CPUInfoService;)[Ljava/lang/String;

    move-result-object v7

    aget-object v7, v7, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/cpufreq/scaling_cur_freq"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 270
    invoke-static {v6}, Lcom/android/systemui/CPUInfoService;->access$900(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 271
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/systemui/CPUInfoService$CurCPUThread;->this$0:Lcom/android/systemui/CPUInfoService;

    invoke-static {v8}, Lcom/android/systemui/CPUInfoService;->access$400(Lcom/android/systemui/CPUInfoService;)[Ljava/lang/String;

    move-result-object v8

    aget-object v8, v8, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "/cpufreq/scaling_governor"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 272
    invoke-static {v7}, Lcom/android/systemui/CPUInfoService;->access$900(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v6, :cond_1

    const-string v7, ""

    move-object v6, v4

    .line 279
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "|"

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 281
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 282
    iget-object v3, p0, Lcom/android/systemui/CPUInfoService$CurCPUThread;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/systemui/CPUInfoService$CurCPUThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v4, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    :cond_3
    return-void
.end method
