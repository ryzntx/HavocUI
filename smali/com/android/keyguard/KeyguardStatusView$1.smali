.class Lcom/android/keyguard/KeyguardStatusView$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardStatusView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardStatusView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardStatusView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardStatusView;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/android/keyguard/KeyguardStatusView$1;->this$0:Lcom/android/keyguard/KeyguardStatusView;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinishedGoingToSleep(I)V
    .locals 0

    .line 113
    iget-object p0, p0, Lcom/android/keyguard/KeyguardStatusView$1;->this$0:Lcom/android/keyguard/KeyguardStatusView;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/keyguard/KeyguardStatusView;->access$400(Lcom/android/keyguard/KeyguardStatusView;Z)V

    return-void
.end method

.method public onKeyguardVisibilityChanged(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 100
    iget-object p1, p0, Lcom/android/keyguard/KeyguardStatusView$1;->this$0:Lcom/android/keyguard/KeyguardStatusView;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardStatusView;->access$000(Lcom/android/keyguard/KeyguardStatusView;)V

    .line 101
    iget-object p1, p0, Lcom/android/keyguard/KeyguardStatusView$1;->this$0:Lcom/android/keyguard/KeyguardStatusView;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardStatusView;->access$200(Lcom/android/keyguard/KeyguardStatusView;)V

    .line 102
    iget-object p0, p0, Lcom/android/keyguard/KeyguardStatusView$1;->this$0:Lcom/android/keyguard/KeyguardStatusView;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardStatusView;->access$300(Lcom/android/keyguard/KeyguardStatusView;)V

    :cond_0
    return-void
.end method

.method public onLogoutEnabledChanged()V
    .locals 0

    .line 125
    iget-object p0, p0, Lcom/android/keyguard/KeyguardStatusView$1;->this$0:Lcom/android/keyguard/KeyguardStatusView;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardStatusView;->access$300(Lcom/android/keyguard/KeyguardStatusView;)V

    return-void
.end method

.method public onStartedWakingUp()V
    .locals 1

    .line 108
    iget-object p0, p0, Lcom/android/keyguard/KeyguardStatusView$1;->this$0:Lcom/android/keyguard/KeyguardStatusView;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/keyguard/KeyguardStatusView;->access$400(Lcom/android/keyguard/KeyguardStatusView;Z)V

    return-void
.end method

.method public onTimeChanged()V
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/android/keyguard/KeyguardStatusView$1;->this$0:Lcom/android/keyguard/KeyguardStatusView;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardStatusView;->access$000(Lcom/android/keyguard/KeyguardStatusView;)V

    return-void
.end method

.method public onTimeZoneChanged(Ljava/util/TimeZone;)V
    .locals 0

    .line 93
    iget-object p0, p0, Lcom/android/keyguard/KeyguardStatusView$1;->this$0:Lcom/android/keyguard/KeyguardStatusView;

    invoke-static {p0, p1}, Lcom/android/keyguard/KeyguardStatusView;->access$100(Lcom/android/keyguard/KeyguardStatusView;Ljava/util/TimeZone;)V

    return-void
.end method

.method public onUserSwitchComplete(I)V
    .locals 0

    .line 118
    iget-object p1, p0, Lcom/android/keyguard/KeyguardStatusView$1;->this$0:Lcom/android/keyguard/KeyguardStatusView;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardStatusView;->access$500(Lcom/android/keyguard/KeyguardStatusView;)V

    .line 119
    iget-object p1, p0, Lcom/android/keyguard/KeyguardStatusView$1;->this$0:Lcom/android/keyguard/KeyguardStatusView;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardStatusView;->access$200(Lcom/android/keyguard/KeyguardStatusView;)V

    .line 120
    iget-object p0, p0, Lcom/android/keyguard/KeyguardStatusView$1;->this$0:Lcom/android/keyguard/KeyguardStatusView;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardStatusView;->access$300(Lcom/android/keyguard/KeyguardStatusView;)V

    return-void
.end method
