.class Lcom/android/systemui/CPUInfoService$CPUView$1;
.super Landroid/os/Handler;
.source "CPUInfoService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/CPUInfoService$CPUView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/CPUInfoService$CPUView;


# direct methods
.method constructor <init>(Lcom/android/systemui/CPUInfoService$CPUView;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/android/systemui/CPUInfoService$CPUView$1;->this$1:Lcom/android/systemui/CPUInfoService$CPUView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    .line 85
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v0, :cond_0

    return-void

    .line 88
    :cond_0
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne p1, v1, :cond_3

    .line 89
    check-cast v0, Ljava/lang/String;

    :try_start_0
    const-string p1, ";"

    .line 91
    invoke-virtual {v0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 92
    iget-object v2, p0, Lcom/android/systemui/CPUInfoService$CPUView$1;->this$1:Lcom/android/systemui/CPUInfoService$CPUView;

    const/4 v3, 0x0

    aget-object v4, p1, v3

    invoke-static {v2, v4}, Lcom/android/systemui/CPUInfoService$CPUView;->access$002(Lcom/android/systemui/CPUInfoService$CPUView;Ljava/lang/String;)Ljava/lang/String;

    .line 94
    aget-object p1, p1, v1

    const-string v2, "\\|"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 95
    :goto_0
    array-length v2, p1

    if-ge v3, v2, :cond_2

    .line 96
    aget-object v2, p1, v3

    const-string v4, ":"

    .line 97
    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 98
    array-length v4, v2

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    .line 99
    iget-object v4, p0, Lcom/android/systemui/CPUInfoService$CPUView$1;->this$1:Lcom/android/systemui/CPUInfoService$CPUView;

    iget-object v4, v4, Lcom/android/systemui/CPUInfoService$CPUView;->this$0:Lcom/android/systemui/CPUInfoService;

    invoke-static {v4}, Lcom/android/systemui/CPUInfoService;->access$100(Lcom/android/systemui/CPUInfoService;)[Ljava/lang/String;

    move-result-object v4

    aget-object v5, v2, v1

    aput-object v5, v4, v3

    .line 100
    iget-object v4, p0, Lcom/android/systemui/CPUInfoService$CPUView$1;->this$1:Lcom/android/systemui/CPUInfoService$CPUView;

    iget-object v4, v4, Lcom/android/systemui/CPUInfoService$CPUView;->this$0:Lcom/android/systemui/CPUInfoService;

    invoke-static {v4}, Lcom/android/systemui/CPUInfoService;->access$200(Lcom/android/systemui/CPUInfoService;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    aget-object v2, v2, v5

    aput-object v2, v4, v3

    goto :goto_1

    .line 102
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/CPUInfoService$CPUView$1;->this$1:Lcom/android/systemui/CPUInfoService$CPUView;

    iget-object v2, v2, Lcom/android/systemui/CPUInfoService$CPUView;->this$0:Lcom/android/systemui/CPUInfoService;

    invoke-static {v2}, Lcom/android/systemui/CPUInfoService;->access$100(Lcom/android/systemui/CPUInfoService;)[Ljava/lang/String;

    move-result-object v2

    const-string v4, "0"

    aput-object v4, v2, v3

    .line 103
    iget-object v2, p0, Lcom/android/systemui/CPUInfoService$CPUView$1;->this$1:Lcom/android/systemui/CPUInfoService$CPUView;

    iget-object v2, v2, Lcom/android/systemui/CPUInfoService$CPUView;->this$0:Lcom/android/systemui/CPUInfoService;

    invoke-static {v2}, Lcom/android/systemui/CPUInfoService;->access$200(Lcom/android/systemui/CPUInfoService;)[Ljava/lang/String;

    move-result-object v2

    const-string v4, ""

    aput-object v4, v2, v3

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 106
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/CPUInfoService$CPUView$1;->this$1:Lcom/android/systemui/CPUInfoService$CPUView;

    invoke-static {p1, v1}, Lcom/android/systemui/CPUInfoService$CPUView;->access$302(Lcom/android/systemui/CPUInfoService$CPUView;Z)Z

    .line 107
    iget-object p0, p0, Lcom/android/systemui/CPUInfoService$CPUView$1;->this$1:Lcom/android/systemui/CPUInfoService$CPUView;

    invoke-virtual {p0}, Lcom/android/systemui/CPUInfoService$CPUView;->updateDisplay()V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 109
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "illegal data "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CPUInfoService"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_2
    return-void
.end method
