.class Lcom/android/systemui/biometrics/FODCircleView$2;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
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

    .line 130
    iput-object p1, p0, Lcom/android/systemui/biometrics/FODCircleView$2;->this$0:Lcom/android/systemui/biometrics/FODCircleView;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method

.method private synthetic lambda$onBiometricHelp$1()V
    .locals 0

    .line 256
    iget-object p0, p0, Lcom/android/systemui/biometrics/FODCircleView$2;->this$0:Lcom/android/systemui/biometrics/FODCircleView;

    invoke-static {p0}, Lcom/android/systemui/biometrics/FODCircleView;->access$1100(Lcom/android/systemui/biometrics/FODCircleView;)Lcom/android/systemui/biometrics/FODAnimation;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/FODAnimation;->hideFODAnimation()V

    return-void
.end method

.method private synthetic lambda$onBiometricRunningStateChanged$0()V
    .locals 2

    .line 148
    iget-object v0, p0, Lcom/android/systemui/biometrics/FODCircleView$2;->this$0:Lcom/android/systemui/biometrics/FODCircleView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/biometrics/FODCircleView;->access$202(Lcom/android/systemui/biometrics/FODCircleView;Z)Z

    .line 149
    iget-object v0, p0, Lcom/android/systemui/biometrics/FODCircleView$2;->this$0:Lcom/android/systemui/biometrics/FODCircleView;

    invoke-static {v0}, Lcom/android/systemui/biometrics/FODCircleView;->access$400(Lcom/android/systemui/biometrics/FODCircleView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    iget-object p0, p0, Lcom/android/systemui/biometrics/FODCircleView$2;->this$0:Lcom/android/systemui/biometrics/FODCircleView;

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/FODCircleView;->show()V

    :cond_0
    return-void
.end method


# virtual methods
.method public synthetic lambda$onBiometricHelp$1$FODCircleView$2()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/biometrics/FODCircleView$2;->lambda$onBiometricHelp$1()V

    return-void
.end method

.method public synthetic lambda$onBiometricRunningStateChanged$0$FODCircleView$2()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/biometrics/FODCircleView$2;->lambda$onBiometricRunningStateChanged$0()V

    return-void
.end method

.method public onBiometricAuthenticated(ILandroid/hardware/biometrics/BiometricSourceType;Z)V
    .locals 0

    .line 136
    sget-object p1, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    if-eq p2, p1, :cond_0

    .line 137
    iget-object p0, p0, Lcom/android/systemui/biometrics/FODCircleView$2;->this$0:Lcom/android/systemui/biometrics/FODCircleView;

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/FODCircleView;->hide()V

    :cond_0
    return-void
.end method

.method public onBiometricError(ILjava/lang/String;Landroid/hardware/biometrics/BiometricSourceType;)V
    .locals 0

    .line 235
    sget-object p2, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    if-ne p3, p2, :cond_1

    const/4 p2, 0x7

    if-eq p1, p2, :cond_0

    const/16 p2, 0x9

    if-ne p1, p2, :cond_1

    .line 238
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/biometrics/FODCircleView$2;->this$0:Lcom/android/systemui/biometrics/FODCircleView;

    invoke-static {p1}, Lcom/android/systemui/biometrics/FODCircleView;->access$000(Lcom/android/systemui/biometrics/FODCircleView;)Landroid/os/Handler;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 239
    iget-object p1, p0, Lcom/android/systemui/biometrics/FODCircleView$2;->this$0:Lcom/android/systemui/biometrics/FODCircleView;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/android/systemui/biometrics/FODCircleView;->access$202(Lcom/android/systemui/biometrics/FODCircleView;Z)Z

    .line 241
    iget-object p0, p0, Lcom/android/systemui/biometrics/FODCircleView$2;->this$0:Lcom/android/systemui/biometrics/FODCircleView;

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/FODCircleView;->show()V

    :cond_1
    return-void
.end method

.method public onBiometricHelp(ILjava/lang/String;Landroid/hardware/biometrics/BiometricSourceType;)V
    .locals 0

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    .line 254
    iget-object p1, p0, Lcom/android/systemui/biometrics/FODCircleView$2;->this$0:Lcom/android/systemui/biometrics/FODCircleView;

    invoke-virtual {p1}, Lcom/android/systemui/biometrics/FODCircleView;->hideCircle()V

    .line 255
    iget-object p1, p0, Lcom/android/systemui/biometrics/FODCircleView$2;->this$0:Lcom/android/systemui/biometrics/FODCircleView;

    invoke-static {p1}, Lcom/android/systemui/biometrics/FODCircleView;->access$1100(Lcom/android/systemui/biometrics/FODCircleView;)Lcom/android/systemui/biometrics/FODAnimation;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/biometrics/FODCircleView$2;->this$0:Lcom/android/systemui/biometrics/FODCircleView;

    invoke-static {p1}, Lcom/android/systemui/biometrics/FODCircleView;->access$1200(Lcom/android/systemui/biometrics/FODCircleView;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 256
    iget-object p1, p0, Lcom/android/systemui/biometrics/FODCircleView$2;->this$0:Lcom/android/systemui/biometrics/FODCircleView;

    invoke-static {p1}, Lcom/android/systemui/biometrics/FODCircleView;->access$000(Lcom/android/systemui/biometrics/FODCircleView;)Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/android/systemui/biometrics/-$$Lambda$FODCircleView$2$Ni-6y56GEmgTbnehIHHE6GTxbXw;

    invoke-direct {p2, p0}, Lcom/android/systemui/biometrics/-$$Lambda$FODCircleView$2$Ni-6y56GEmgTbnehIHHE6GTxbXw;-><init>(Lcom/android/systemui/biometrics/FODCircleView$2;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onBiometricRunningStateChanged(ZLandroid/hardware/biometrics/BiometricSourceType;)V
    .locals 2

    .line 144
    sget-object v0, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    if-ne p2, v0, :cond_1

    .line 145
    iget-object p2, p0, Lcom/android/systemui/biometrics/FODCircleView$2;->this$0:Lcom/android/systemui/biometrics/FODCircleView;

    invoke-static {p2, p1}, Lcom/android/systemui/biometrics/FODCircleView;->access$102(Lcom/android/systemui/biometrics/FODCircleView;Z)Z

    if-eqz p1, :cond_1

    .line 147
    iget-object p1, p0, Lcom/android/systemui/biometrics/FODCircleView$2;->this$0:Lcom/android/systemui/biometrics/FODCircleView;

    invoke-static {p1}, Lcom/android/systemui/biometrics/FODCircleView;->access$000(Lcom/android/systemui/biometrics/FODCircleView;)Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/android/systemui/biometrics/-$$Lambda$FODCircleView$2$MDJuVvMQhxGFPv9jcXmWhxAYjgQ;

    invoke-direct {p2, p0}, Lcom/android/systemui/biometrics/-$$Lambda$FODCircleView$2$MDJuVvMQhxGFPv9jcXmWhxAYjgQ;-><init>(Lcom/android/systemui/biometrics/FODCircleView$2;)V

    .line 152
    iget-object p0, p0, Lcom/android/systemui/biometrics/FODCircleView$2;->this$0:Lcom/android/systemui/biometrics/FODCircleView;

    invoke-static {p0}, Lcom/android/systemui/biometrics/FODCircleView;->access$200(Lcom/android/systemui/biometrics/FODCircleView;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-wide/16 v0, 0x32

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    .line 147
    :goto_0
    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method public onDreamingStateChanged(Z)V
    .locals 8

    .line 159
    iget-object v0, p0, Lcom/android/systemui/biometrics/FODCircleView$2;->this$0:Lcom/android/systemui/biometrics/FODCircleView;

    invoke-static {v0, p1}, Lcom/android/systemui/biometrics/FODCircleView;->access$302(Lcom/android/systemui/biometrics/FODCircleView;Z)Z

    .line 161
    iget-object v0, p0, Lcom/android/systemui/biometrics/FODCircleView$2;->this$0:Lcom/android/systemui/biometrics/FODCircleView;

    invoke-static {v0}, Lcom/android/systemui/biometrics/FODCircleView;->access$400(Lcom/android/systemui/biometrics/FODCircleView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/biometrics/FODCircleView$2;->this$0:Lcom/android/systemui/biometrics/FODCircleView;

    invoke-static {v0}, Lcom/android/systemui/biometrics/FODCircleView;->access$100(Lcom/android/systemui/biometrics/FODCircleView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/android/systemui/biometrics/FODCircleView$2;->this$0:Lcom/android/systemui/biometrics/FODCircleView;

    invoke-virtual {v0}, Lcom/android/systemui/biometrics/FODCircleView;->show()V

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 166
    iget-object v1, p0, Lcom/android/systemui/biometrics/FODCircleView$2;->this$0:Lcom/android/systemui/biometrics/FODCircleView;

    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    invoke-static {v1, v2}, Lcom/android/systemui/biometrics/FODCircleView;->access$502(Lcom/android/systemui/biometrics/FODCircleView;Ljava/util/Timer;)Ljava/util/Timer;

    .line 167
    iget-object v1, p0, Lcom/android/systemui/biometrics/FODCircleView$2;->this$0:Lcom/android/systemui/biometrics/FODCircleView;

    invoke-static {v1}, Lcom/android/systemui/biometrics/FODCircleView;->access$500(Lcom/android/systemui/biometrics/FODCircleView;)Ljava/util/Timer;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/biometrics/FODCircleView$BurnInProtectionTask;

    iget-object v1, p0, Lcom/android/systemui/biometrics/FODCircleView$2;->this$0:Lcom/android/systemui/biometrics/FODCircleView;

    invoke-direct {v3, v1, v0}, Lcom/android/systemui/biometrics/FODCircleView$BurnInProtectionTask;-><init>(Lcom/android/systemui/biometrics/FODCircleView;Lcom/android/systemui/biometrics/FODCircleView$1;)V

    const-wide/16 v4, 0x0

    const-wide/32 v6, 0xea60

    invoke-virtual/range {v2 .. v7}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 168
    iget-object v0, p0, Lcom/android/systemui/biometrics/FODCircleView$2;->this$0:Lcom/android/systemui/biometrics/FODCircleView;

    invoke-static {v0}, Lcom/android/systemui/biometrics/FODCircleView;->access$700(Lcom/android/systemui/biometrics/FODCircleView;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 169
    iget-object v0, p0, Lcom/android/systemui/biometrics/FODCircleView$2;->this$0:Lcom/android/systemui/biometrics/FODCircleView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/biometrics/FODCircleView;->access$800(Lcom/android/systemui/biometrics/FODCircleView;Z)V

    goto :goto_0

    .line 171
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/biometrics/FODCircleView$2;->this$0:Lcom/android/systemui/biometrics/FODCircleView;

    invoke-static {v1}, Lcom/android/systemui/biometrics/FODCircleView;->access$500(Lcom/android/systemui/biometrics/FODCircleView;)Ljava/util/Timer;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 172
    iget-object v1, p0, Lcom/android/systemui/biometrics/FODCircleView$2;->this$0:Lcom/android/systemui/biometrics/FODCircleView;

    invoke-static {v1}, Lcom/android/systemui/biometrics/FODCircleView;->access$500(Lcom/android/systemui/biometrics/FODCircleView;)Ljava/util/Timer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 173
    iget-object v1, p0, Lcom/android/systemui/biometrics/FODCircleView$2;->this$0:Lcom/android/systemui/biometrics/FODCircleView;

    invoke-static {v1, v0}, Lcom/android/systemui/biometrics/FODCircleView;->access$502(Lcom/android/systemui/biometrics/FODCircleView;Ljava/util/Timer;)Ljava/util/Timer;

    .line 174
    iget-object v0, p0, Lcom/android/systemui/biometrics/FODCircleView$2;->this$0:Lcom/android/systemui/biometrics/FODCircleView;

    invoke-static {v0}, Lcom/android/systemui/biometrics/FODCircleView;->access$900(Lcom/android/systemui/biometrics/FODCircleView;)V

    .line 177
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/biometrics/FODCircleView$2;->this$0:Lcom/android/systemui/biometrics/FODCircleView;

    invoke-static {v0}, Lcom/android/systemui/biometrics/FODCircleView;->access$700(Lcom/android/systemui/biometrics/FODCircleView;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-nez p1, :cond_3

    .line 178
    iget-object p0, p0, Lcom/android/systemui/biometrics/FODCircleView$2;->this$0:Lcom/android/systemui/biometrics/FODCircleView;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/android/systemui/biometrics/FODCircleView;->access$800(Lcom/android/systemui/biometrics/FODCircleView;Z)V

    :cond_3
    return-void
.end method

.method public onKeyguardBouncerChanged(Z)V
    .locals 2

    .line 201
    iget-object v0, p0, Lcom/android/systemui/biometrics/FODCircleView$2;->this$0:Lcom/android/systemui/biometrics/FODCircleView;

    invoke-static {v0, p1}, Lcom/android/systemui/biometrics/FODCircleView;->access$1302(Lcom/android/systemui/biometrics/FODCircleView;Z)Z

    .line 202
    iget-object v0, p0, Lcom/android/systemui/biometrics/FODCircleView$2;->this$0:Lcom/android/systemui/biometrics/FODCircleView;

    invoke-static {v0}, Lcom/android/systemui/biometrics/FODCircleView;->access$100(Lcom/android/systemui/biometrics/FODCircleView;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 203
    iget-object v0, p0, Lcom/android/systemui/biometrics/FODCircleView$2;->this$0:Lcom/android/systemui/biometrics/FODCircleView;

    invoke-static {v0}, Lcom/android/systemui/biometrics/FODCircleView;->access$1400(Lcom/android/systemui/biometrics/FODCircleView;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/biometrics/FODCircleView;->access$1500(Lcom/android/systemui/biometrics/FODCircleView;I)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 207
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/biometrics/FODCircleView$2;->this$0:Lcom/android/systemui/biometrics/FODCircleView;

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/FODCircleView;->hide()V

    goto :goto_1

    .line 204
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/biometrics/FODCircleView$2;->this$0:Lcom/android/systemui/biometrics/FODCircleView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/systemui/biometrics/FODCircleView;->access$1602(Lcom/android/systemui/biometrics/FODCircleView;Z)Z

    .line 205
    iget-object p0, p0, Lcom/android/systemui/biometrics/FODCircleView$2;->this$0:Lcom/android/systemui/biometrics/FODCircleView;

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/FODCircleView;->show()V

    :cond_2
    :goto_1
    return-void
.end method

.method public onKeyguardVisibilityChanged(Z)V
    .locals 2

    .line 184
    iget-object v0, p0, Lcom/android/systemui/biometrics/FODCircleView$2;->this$0:Lcom/android/systemui/biometrics/FODCircleView;

    invoke-static {v0, p1}, Lcom/android/systemui/biometrics/FODCircleView;->access$402(Lcom/android/systemui/biometrics/FODCircleView;Z)Z

    if-nez p1, :cond_0

    .line 186
    iget-object v0, p0, Lcom/android/systemui/biometrics/FODCircleView$2;->this$0:Lcom/android/systemui/biometrics/FODCircleView;

    invoke-virtual {v0}, Lcom/android/systemui/biometrics/FODCircleView;->hide()V

    goto :goto_0

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/biometrics/FODCircleView$2;->this$0:Lcom/android/systemui/biometrics/FODCircleView;

    invoke-static {v0}, Lcom/android/systemui/biometrics/FODCircleView;->access$1000(Lcom/android/systemui/biometrics/FODCircleView;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 190
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/biometrics/FODCircleView$2;->this$0:Lcom/android/systemui/biometrics/FODCircleView;

    invoke-static {v0}, Lcom/android/systemui/biometrics/FODCircleView;->access$1100(Lcom/android/systemui/biometrics/FODCircleView;)Lcom/android/systemui/biometrics/FODAnimation;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/biometrics/FODCircleView$2;->this$0:Lcom/android/systemui/biometrics/FODCircleView;

    invoke-static {v0}, Lcom/android/systemui/biometrics/FODCircleView;->access$1200(Lcom/android/systemui/biometrics/FODCircleView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 191
    iget-object v0, p0, Lcom/android/systemui/biometrics/FODCircleView$2;->this$0:Lcom/android/systemui/biometrics/FODCircleView;

    invoke-static {v0}, Lcom/android/systemui/biometrics/FODCircleView;->access$1100(Lcom/android/systemui/biometrics/FODCircleView;)Lcom/android/systemui/biometrics/FODAnimation;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/biometrics/FODCircleView$2;->this$0:Lcom/android/systemui/biometrics/FODCircleView;

    invoke-static {v1}, Lcom/android/systemui/biometrics/FODCircleView;->access$400(Lcom/android/systemui/biometrics/FODCircleView;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/biometrics/FODAnimation;->setAnimationKeyguard(Z)V

    .line 194
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/biometrics/FODCircleView$2;->this$0:Lcom/android/systemui/biometrics/FODCircleView;

    invoke-static {v0}, Lcom/android/systemui/biometrics/FODCircleView;->access$1100(Lcom/android/systemui/biometrics/FODCircleView;)Lcom/android/systemui/biometrics/FODAnimation;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 195
    iget-object p0, p0, Lcom/android/systemui/biometrics/FODCircleView$2;->this$0:Lcom/android/systemui/biometrics/FODCircleView;

    invoke-static {p0}, Lcom/android/systemui/biometrics/FODCircleView;->access$1100(Lcom/android/systemui/biometrics/FODCircleView;)Lcom/android/systemui/biometrics/FODAnimation;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/systemui/biometrics/FODAnimation;->setAnimationKeyguard(Z)V

    :cond_2
    return-void
.end method

.method public onScreenTurnedOff()V
    .locals 0

    .line 214
    iget-object p0, p0, Lcom/android/systemui/biometrics/FODCircleView$2;->this$0:Lcom/android/systemui/biometrics/FODCircleView;

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/FODCircleView;->hide()V

    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 1

    .line 226
    iget-object v0, p0, Lcom/android/systemui/biometrics/FODCircleView$2;->this$0:Lcom/android/systemui/biometrics/FODCircleView;

    invoke-static {v0}, Lcom/android/systemui/biometrics/FODCircleView;->access$100(Lcom/android/systemui/biometrics/FODCircleView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/biometrics/FODCircleView$2;->this$0:Lcom/android/systemui/biometrics/FODCircleView;

    invoke-static {v0}, Lcom/android/systemui/biometrics/FODCircleView;->access$400(Lcom/android/systemui/biometrics/FODCircleView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/android/systemui/biometrics/FODCircleView$2;->this$0:Lcom/android/systemui/biometrics/FODCircleView;

    invoke-virtual {v0}, Lcom/android/systemui/biometrics/FODCircleView;->show()V

    .line 228
    iget-object v0, p0, Lcom/android/systemui/biometrics/FODCircleView$2;->this$0:Lcom/android/systemui/biometrics/FODCircleView;

    invoke-static {v0}, Lcom/android/systemui/biometrics/FODCircleView;->access$700(Lcom/android/systemui/biometrics/FODCircleView;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/biometrics/FODCircleView$2;->this$0:Lcom/android/systemui/biometrics/FODCircleView;

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/FODCircleView;->triggerFodIconAnimation()V

    :cond_0
    return-void
.end method

.method public onStartedWakingUp()V
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/android/systemui/biometrics/FODCircleView$2;->this$0:Lcom/android/systemui/biometrics/FODCircleView;

    invoke-static {v0}, Lcom/android/systemui/biometrics/FODCircleView;->access$100(Lcom/android/systemui/biometrics/FODCircleView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/biometrics/FODCircleView$2;->this$0:Lcom/android/systemui/biometrics/FODCircleView;

    invoke-static {v0}, Lcom/android/systemui/biometrics/FODCircleView;->access$400(Lcom/android/systemui/biometrics/FODCircleView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 220
    iget-object p0, p0, Lcom/android/systemui/biometrics/FODCircleView$2;->this$0:Lcom/android/systemui/biometrics/FODCircleView;

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/FODCircleView;->show()V

    :cond_0
    return-void
.end method

.method public onStrongAuthStateChanged(I)V
    .locals 0

    .line 247
    iget-object p0, p0, Lcom/android/systemui/biometrics/FODCircleView$2;->this$0:Lcom/android/systemui/biometrics/FODCircleView;

    invoke-static {p0}, Lcom/android/systemui/biometrics/FODCircleView;->access$1000(Lcom/android/systemui/biometrics/FODCircleView;)F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    return-void
.end method
