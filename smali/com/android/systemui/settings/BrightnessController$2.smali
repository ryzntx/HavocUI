.class Lcom/android/systemui/settings/BrightnessController$2;
.super Ljava/lang/Object;
.source "BrightnessController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/settings/BrightnessController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/settings/BrightnessController;


# direct methods
.method constructor <init>(Lcom/android/systemui/settings/BrightnessController;)V
    .locals 0

    .line 193
    iput-object p1, p0, Lcom/android/systemui/settings/BrightnessController$2;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 196
    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController$2;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {v0}, Lcom/android/systemui/settings/BrightnessController;->access$900(Lcom/android/systemui/settings/BrightnessController;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController$2;->this$0:Lcom/android/systemui/settings/BrightnessController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/settings/BrightnessController;->access$902(Lcom/android/systemui/settings/BrightnessController;Z)Z

    .line 201
    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController$2;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {v0}, Lcom/android/systemui/settings/BrightnessController;->access$1000(Lcom/android/systemui/settings/BrightnessController;)Landroid/service/vr/IVrManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 203
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController$2;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {v0}, Lcom/android/systemui/settings/BrightnessController;->access$1000(Lcom/android/systemui/settings/BrightnessController;)Landroid/service/vr/IVrManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessController$2;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {v1}, Lcom/android/systemui/settings/BrightnessController;->access$1100(Lcom/android/systemui/settings/BrightnessController;)Landroid/service/vr/IVrStateCallbacks;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/service/vr/IVrManager;->unregisterListener(Landroid/service/vr/IVrStateCallbacks;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "StatusBar.BrightnessController"

    const-string v2, "Failed to unregister VR mode state listener: "

    .line 205
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 209
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController$2;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {v0}, Lcom/android/systemui/settings/BrightnessController;->access$1300(Lcom/android/systemui/settings/BrightnessController;)Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;->stopObserving()V

    .line 210
    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController$2;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {v0}, Lcom/android/systemui/settings/BrightnessController;->access$1400(Lcom/android/systemui/settings/BrightnessController;)Lcom/android/systemui/settings/CurrentUserTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/settings/CurrentUserTracker;->stopTracking()V

    .line 212
    iget-object p0, p0, Lcom/android/systemui/settings/BrightnessController$2;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {p0}, Lcom/android/systemui/settings/BrightnessController;->access$1500(Lcom/android/systemui/settings/BrightnessController;)Landroid/os/Handler;

    move-result-object p0

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
