.class Lcom/android/systemui/biometrics/FODCircleView$BurnInProtectionTask;
.super Ljava/util/TimerTask;
.source "FODCircleView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/biometrics/FODCircleView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BurnInProtectionTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/biometrics/FODCircleView;


# direct methods
.method private constructor <init>(Lcom/android/systemui/biometrics/FODCircleView;)V
    .locals 0

    .line 746
    iput-object p1, p0, Lcom/android/systemui/biometrics/FODCircleView$BurnInProtectionTask;->this$0:Lcom/android/systemui/biometrics/FODCircleView;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/biometrics/FODCircleView;Lcom/android/systemui/biometrics/FODCircleView$1;)V
    .locals 0

    .line 746
    invoke-direct {p0, p1}, Lcom/android/systemui/biometrics/FODCircleView$BurnInProtectionTask;-><init>(Lcom/android/systemui/biometrics/FODCircleView;)V

    return-void
.end method

.method private synthetic lambda$run$0()V
    .locals 0

    .line 754
    iget-object p0, p0, Lcom/android/systemui/biometrics/FODCircleView$BurnInProtectionTask;->this$0:Lcom/android/systemui/biometrics/FODCircleView;

    invoke-static {p0}, Lcom/android/systemui/biometrics/FODCircleView;->access$900(Lcom/android/systemui/biometrics/FODCircleView;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$run$0$FODCircleView$BurnInProtectionTask()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/biometrics/FODCircleView$BurnInProtectionTask;->lambda$run$0()V

    return-void
.end method

.method public run()V
    .locals 5

    .line 749
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    const-wide/16 v2, 0x3c

    div-long/2addr v0, v2

    .line 751
    iget-object v2, p0, Lcom/android/systemui/biometrics/FODCircleView$BurnInProtectionTask;->this$0:Lcom/android/systemui/biometrics/FODCircleView;

    invoke-static {v2}, Lcom/android/systemui/biometrics/FODCircleView;->access$2400(Lcom/android/systemui/biometrics/FODCircleView;)I

    move-result v3

    div-int/lit8 v3, v3, 0x3

    int-to-long v3, v3

    add-long/2addr v0, v3

    iget-object v3, p0, Lcom/android/systemui/biometrics/FODCircleView$BurnInProtectionTask;->this$0:Lcom/android/systemui/biometrics/FODCircleView;

    invoke-static {v3}, Lcom/android/systemui/biometrics/FODCircleView;->access$2400(Lcom/android/systemui/biometrics/FODCircleView;)I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    int-to-long v3, v3

    rem-long/2addr v0, v3

    long-to-int v0, v0

    invoke-static {v2, v0}, Lcom/android/systemui/biometrics/FODCircleView;->access$2302(Lcom/android/systemui/biometrics/FODCircleView;I)I

    .line 752
    iget-object v0, p0, Lcom/android/systemui/biometrics/FODCircleView$BurnInProtectionTask;->this$0:Lcom/android/systemui/biometrics/FODCircleView;

    invoke-static {v0}, Lcom/android/systemui/biometrics/FODCircleView;->access$2400(Lcom/android/systemui/biometrics/FODCircleView;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/biometrics/FODCircleView;->access$2320(Lcom/android/systemui/biometrics/FODCircleView;I)I

    .line 754
    iget-object v0, p0, Lcom/android/systemui/biometrics/FODCircleView$BurnInProtectionTask;->this$0:Lcom/android/systemui/biometrics/FODCircleView;

    invoke-static {v0}, Lcom/android/systemui/biometrics/FODCircleView;->access$000(Lcom/android/systemui/biometrics/FODCircleView;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/biometrics/-$$Lambda$FODCircleView$BurnInProtectionTask$rB8mibInJWwZux8jWz0AMc_9e5Y;

    invoke-direct {v1, p0}, Lcom/android/systemui/biometrics/-$$Lambda$FODCircleView$BurnInProtectionTask$rB8mibInJWwZux8jWz0AMc_9e5Y;-><init>(Lcom/android/systemui/biometrics/FODCircleView$BurnInProtectionTask;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
