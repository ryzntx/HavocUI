.class Lcom/android/systemui/statusbar/phone/StatusBar$5;
.super Lcom/android/systemui/biometrics/FODCircleViewImplCallback;
.source "StatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/StatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/StatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0

    .line 711
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$5;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-direct {p0}, Lcom/android/systemui/biometrics/FODCircleViewImplCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFODStatusChange(Z)V
    .locals 2

    .line 716
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$5;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$900(Lcom/android/systemui/statusbar/phone/StatusBar;)Landroid/hardware/fingerprint/IFingerprintService;

    move-result-object v0

    invoke-interface {v0}, Landroid/hardware/fingerprint/IFingerprintService;->isClientActive()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    .line 720
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$5;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v1, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$1002(Lcom/android/systemui/statusbar/phone/StatusBar;Z)Z

    if-nez v0, :cond_0

    .line 724
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$5;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$1102(Lcom/android/systemui/statusbar/phone/StatusBar;Ljava/lang/String;)Ljava/lang/String;

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 726
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$5;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/StatusBar;->mIsKeyguard:Z

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$1200(Lcom/android/systemui/statusbar/phone/StatusBar;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 727
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$5;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$1300(Lcom/android/systemui/statusbar/phone/StatusBar;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$1102(Lcom/android/systemui/statusbar/phone/StatusBar;Ljava/lang/String;)Ljava/lang/String;

    :cond_1
    return-void
.end method
