.class Lcom/android/systemui/biometrics/FODCircleView$3;
.super Lcom/android/systemui/shared/system/TaskStackChangeListener;
.source "FODCircleView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/biometrics/FODCircleView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/biometrics/FODCircleView;


# direct methods
.method constructor <init>(Lcom/android/systemui/biometrics/FODCircleView;)V
    .locals 0

    .line 262
    iput-object p1, p0, Lcom/android/systemui/biometrics/FODCircleView$3;->this$0:Lcom/android/systemui/biometrics/FODCircleView;

    invoke-direct {p0}, Lcom/android/systemui/shared/system/TaskStackChangeListener;-><init>()V

    return-void
.end method

.method private synthetic lambda$onTaskStackChangedBackground$0()V
    .locals 0

    .line 271
    iget-object p0, p0, Lcom/android/systemui/biometrics/FODCircleView$3;->this$0:Lcom/android/systemui/biometrics/FODCircleView;

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/FODCircleView;->show()V

    return-void
.end method

.method private synthetic lambda$onTaskStackChangedBackground$1()V
    .locals 0

    .line 277
    iget-object p0, p0, Lcom/android/systemui/biometrics/FODCircleView$3;->this$0:Lcom/android/systemui/biometrics/FODCircleView;

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/FODCircleView;->hide()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onTaskStackChangedBackground$0$FODCircleView$3()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/biometrics/FODCircleView$3;->lambda$onTaskStackChangedBackground$0()V

    return-void
.end method

.method public synthetic lambda$onTaskStackChangedBackground$1$FODCircleView$3()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/biometrics/FODCircleView$3;->lambda$onTaskStackChangedBackground$1()V

    return-void
.end method

.method public onTaskStackChangedBackground()V
    .locals 3

    .line 266
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Landroid/app/IActivityTaskManager;->getStackInfo(II)Landroid/app/ActivityManager$StackInfo;

    move-result-object v0

    if-nez v0, :cond_1

    .line 268
    iget-object v1, p0, Lcom/android/systemui/biometrics/FODCircleView$3;->this$0:Lcom/android/systemui/biometrics/FODCircleView;

    invoke-static {v1}, Lcom/android/systemui/biometrics/FODCircleView;->access$1600(Lcom/android/systemui/biometrics/FODCircleView;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 269
    iget-object v0, p0, Lcom/android/systemui/biometrics/FODCircleView$3;->this$0:Lcom/android/systemui/biometrics/FODCircleView;

    invoke-static {v0, v2}, Lcom/android/systemui/biometrics/FODCircleView;->access$1602(Lcom/android/systemui/biometrics/FODCircleView;Z)Z

    .line 270
    iget-object v0, p0, Lcom/android/systemui/biometrics/FODCircleView$3;->this$0:Lcom/android/systemui/biometrics/FODCircleView;

    invoke-static {v0}, Lcom/android/systemui/biometrics/FODCircleView;->access$1400(Lcom/android/systemui/biometrics/FODCircleView;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintDetectionRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/android/systemui/biometrics/FODCircleView$3;->this$0:Lcom/android/systemui/biometrics/FODCircleView;

    invoke-static {v0}, Lcom/android/systemui/biometrics/FODCircleView;->access$000(Lcom/android/systemui/biometrics/FODCircleView;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/biometrics/-$$Lambda$FODCircleView$3$hQwkR_zxc9fuL3LE4ZD9OTzLiyU;

    invoke-direct {v1, p0}, Lcom/android/systemui/biometrics/-$$Lambda$FODCircleView$3$hQwkR_zxc9fuL3LE4ZD9OTzLiyU;-><init>(Lcom/android/systemui/biometrics/FODCircleView$3;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void

    :cond_1
    if-eqz v0, :cond_2

    .line 275
    iget-object v1, p0, Lcom/android/systemui/biometrics/FODCircleView$3;->this$0:Lcom/android/systemui/biometrics/FODCircleView;

    iget-boolean v0, v0, Landroid/app/ActivityManager$StackInfo;->visible:Z

    invoke-static {v1, v0}, Lcom/android/systemui/biometrics/FODCircleView;->access$1602(Lcom/android/systemui/biometrics/FODCircleView;Z)Z

    .line 276
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/biometrics/FODCircleView$3;->this$0:Lcom/android/systemui/biometrics/FODCircleView;

    invoke-static {v0}, Lcom/android/systemui/biometrics/FODCircleView;->access$1600(Lcom/android/systemui/biometrics/FODCircleView;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 277
    iget-object v0, p0, Lcom/android/systemui/biometrics/FODCircleView$3;->this$0:Lcom/android/systemui/biometrics/FODCircleView;

    invoke-static {v0}, Lcom/android/systemui/biometrics/FODCircleView;->access$000(Lcom/android/systemui/biometrics/FODCircleView;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/biometrics/-$$Lambda$FODCircleView$3$7N3riEJuwP2UE_qQOnL782z0g0Q;

    invoke-direct {v1, p0}, Lcom/android/systemui/biometrics/-$$Lambda$FODCircleView$3$7N3riEJuwP2UE_qQOnL782z0g0Q;-><init>(Lcom/android/systemui/biometrics/FODCircleView$3;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    return-void
.end method
