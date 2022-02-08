.class Lcom/android/systemui/pip/phone/PipTouchHandler$1;
.super Ljava/lang/Object;
.source "PipTouchHandler.java"

# interfaces
.implements Lcom/android/systemui/util/magnetictarget/MagnetizedObject$MagnetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/pip/phone/PipTouchHandler;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;Lcom/android/systemui/pip/phone/PipMenuActivityController;Lcom/android/systemui/shared/system/InputConsumerController;Lcom/android/systemui/pip/PipBoundsHandler;Lcom/android/systemui/pip/PipTaskOrganizer;Lcom/android/systemui/util/FloatingContentCoordinator;Lcom/android/systemui/util/DeviceConfigProxy;Lcom/android/systemui/pip/PipSnapAlgorithm;Lcom/android/systemui/model/SysUiState;Lcom/android/systemui/pip/PipUiEventLogger;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;


# direct methods
.method constructor <init>(Lcom/android/systemui/pip/phone/PipTouchHandler;)V
    .locals 0

    .line 275
    iput-object p1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$1;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onReleasedInTarget$0()V
    .locals 1

    .line 299
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$1;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$100(Lcom/android/systemui/pip/phone/PipTouchHandler;)Lcom/android/systemui/pip/phone/PipMotionHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/pip/phone/PipMotionHelper;->animateDismiss()V

    .line 300
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$1;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {p0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$1000(Lcom/android/systemui/pip/phone/PipTouchHandler;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onReleasedInTarget$0$PipTouchHandler$1()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipTouchHandler$1;->lambda$onReleasedInTarget$0()V

    return-void
.end method

.method public onReleasedInTarget(Lcom/android/systemui/util/magnetictarget/MagnetizedObject$MagneticTarget;)V
    .locals 1

    .line 296
    iget-object p1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$1;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {p1}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$100(Lcom/android/systemui/pip/phone/PipTouchHandler;)Lcom/android/systemui/pip/phone/PipMotionHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/pip/phone/PipMotionHelper;->notifyDismissalPending()V

    .line 298
    iget-object p1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$1;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {p1}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$1100(Lcom/android/systemui/pip/phone/PipTouchHandler;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/pip/phone/-$$Lambda$PipTouchHandler$1$zJ5cwW9_qQ4umng-tgHurxl3qHI;

    invoke-direct {v0, p0}, Lcom/android/systemui/pip/phone/-$$Lambda$PipTouchHandler$1$zJ5cwW9_qQ4umng-tgHurxl3qHI;-><init>(Lcom/android/systemui/pip/phone/PipTouchHandler$1;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 303
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$1;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {p0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$200(Lcom/android/systemui/pip/phone/PipTouchHandler;)Lcom/android/systemui/pip/PipUiEventLogger;

    move-result-object p0

    sget-object p1, Lcom/android/systemui/pip/PipUiEventLogger$PipUiEventEnum;->PICTURE_IN_PICTURE_DRAG_TO_REMOVE:Lcom/android/systemui/pip/PipUiEventLogger$PipUiEventEnum;

    invoke-virtual {p0, p1}, Lcom/android/systemui/pip/PipUiEventLogger;->log(Lcom/android/systemui/pip/PipUiEventLogger$PipUiEventEnum;)V

    return-void
.end method

.method public onStuckToTarget(Lcom/android/systemui/util/magnetictarget/MagnetizedObject$MagneticTarget;)V
    .locals 0

    .line 280
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$1;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {p0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$900(Lcom/android/systemui/pip/phone/PipTouchHandler;)V

    return-void
.end method

.method public onUnstuckFromTarget(Lcom/android/systemui/util/magnetictarget/MagnetizedObject$MagneticTarget;FFZ)V
    .locals 0

    if-eqz p4, :cond_0

    .line 287
    iget-object p1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$1;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {p1}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$100(Lcom/android/systemui/pip/phone/PipTouchHandler;)Lcom/android/systemui/pip/phone/PipMotionHelper;

    move-result-object p1

    const/4 p4, 0x0

    invoke-virtual {p1, p2, p3, p4, p4}, Lcom/android/systemui/pip/phone/PipMotionHelper;->flingToSnapTarget(FFLjava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 288
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$1;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {p0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$1000(Lcom/android/systemui/pip/phone/PipTouchHandler;)V

    goto :goto_0

    .line 290
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$1;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {p0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$100(Lcom/android/systemui/pip/phone/PipTouchHandler;)Lcom/android/systemui/pip/phone/PipMotionHelper;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/systemui/pip/phone/PipMotionHelper;->setSpringingToTouch(Z)V

    :goto_0
    return-void
.end method
