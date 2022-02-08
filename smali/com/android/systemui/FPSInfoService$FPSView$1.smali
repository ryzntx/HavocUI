.class Lcom/android/systemui/FPSInfoService$FPSView$1;
.super Landroid/os/Handler;
.source "FPSInfoService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/FPSInfoService$FPSView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/FPSInfoService$FPSView;


# direct methods
.method constructor <init>(Lcom/android/systemui/FPSInfoService$FPSView;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/android/systemui/FPSInfoService$FPSView$1;->this$1:Lcom/android/systemui/FPSInfoService$FPSView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 71
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 74
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/FPSInfoService$FPSView$1;->this$1:Lcom/android/systemui/FPSInfoService$FPSView;

    iget-object v2, p1, Lcom/android/systemui/FPSInfoService$FPSView;->this$0:Lcom/android/systemui/FPSInfoService;

    check-cast v0, Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/android/systemui/FPSInfoService$FPSView;->access$100(Lcom/android/systemui/FPSInfoService$FPSView;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/systemui/FPSInfoService;->access$002(Lcom/android/systemui/FPSInfoService;Ljava/lang/String;)Ljava/lang/String;

    .line 75
    iget-object p1, p0, Lcom/android/systemui/FPSInfoService$FPSView$1;->this$1:Lcom/android/systemui/FPSInfoService$FPSView;

    invoke-static {p1, v1}, Lcom/android/systemui/FPSInfoService$FPSView;->access$202(Lcom/android/systemui/FPSInfoService$FPSView;Z)Z

    .line 76
    iget-object p0, p0, Lcom/android/systemui/FPSInfoService$FPSView$1;->this$1:Lcom/android/systemui/FPSInfoService$FPSView;

    invoke-virtual {p0}, Lcom/android/systemui/FPSInfoService$FPSView;->updateDisplay()V

    :cond_1
    :goto_0
    return-void
.end method
