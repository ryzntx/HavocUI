.class Lcom/android/systemui/pip/phone/PipTouchHandler$PipMenuListener;
.super Ljava/lang/Object;
.source "PipTouchHandler.java"

# interfaces
.implements Lcom/android/systemui/pip/phone/PipMenuActivityController$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/pip/phone/PipTouchHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PipMenuListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;


# direct methods
.method private constructor <init>(Lcom/android/systemui/pip/phone/PipTouchHandler;)V
    .locals 0

    .line 186
    iput-object p1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$PipMenuListener;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/pip/phone/PipTouchHandler;Lcom/android/systemui/pip/phone/PipTouchHandler$1;)V
    .locals 0

    .line 186
    invoke-direct {p0, p1}, Lcom/android/systemui/pip/phone/PipTouchHandler$PipMenuListener;-><init>(Lcom/android/systemui/pip/phone/PipTouchHandler;)V

    return-void
.end method


# virtual methods
.method public onPipDismiss()V
    .locals 2

    .line 199
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$PipMenuListener;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$200(Lcom/android/systemui/pip/phone/PipTouchHandler;)Lcom/android/systemui/pip/PipUiEventLogger;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/pip/PipUiEventLogger$PipUiEventEnum;->PICTURE_IN_PICTURE_TAP_TO_REMOVE:Lcom/android/systemui/pip/PipUiEventLogger$PipUiEventEnum;

    invoke-virtual {v0, v1}, Lcom/android/systemui/pip/PipUiEventLogger;->log(Lcom/android/systemui/pip/PipUiEventLogger$PipUiEventEnum;)V

    .line 200
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$PipMenuListener;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$300(Lcom/android/systemui/pip/phone/PipTouchHandler;)Lcom/android/systemui/pip/phone/PipTouchState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/pip/phone/PipTouchState;->removeDoubleTapTimeoutCallback()V

    .line 201
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$PipMenuListener;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {p0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$100(Lcom/android/systemui/pip/phone/PipTouchHandler;)Lcom/android/systemui/pip/phone/PipMotionHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/pip/phone/PipMotionHelper;->dismissPip()V

    return-void
.end method

.method public onPipExpand()V
    .locals 0

    .line 194
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$PipMenuListener;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {p0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$100(Lcom/android/systemui/pip/phone/PipTouchHandler;)Lcom/android/systemui/pip/phone/PipMotionHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/pip/phone/PipMotionHelper;->expandPipToFullscreen()V

    return-void
.end method

.method public onPipMenuStateChanged(IZLjava/lang/Runnable;)V
    .locals 0

    .line 189
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$PipMenuListener;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {p0, p1, p2, p3}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$000(Lcom/android/systemui/pip/phone/PipTouchHandler;IZLjava/lang/Runnable;)V

    return-void
.end method

.method public onPipShowMenu()V
    .locals 7

    .line 206
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$PipMenuListener;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$600(Lcom/android/systemui/pip/phone/PipTouchHandler;)Lcom/android/systemui/pip/phone/PipMenuActivityController;

    move-result-object v1

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$PipMenuListener;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$100(Lcom/android/systemui/pip/phone/PipTouchHandler;)Lcom/android/systemui/pip/phone/PipMotionHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/pip/phone/PipMotionHelper;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$PipMenuListener;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    .line 207
    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$400(Lcom/android/systemui/pip/phone/PipTouchHandler;)Z

    move-result v5

    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler$PipMenuListener;->this$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {p0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->access$500(Lcom/android/systemui/pip/phone/PipTouchHandler;)Z

    move-result v6

    const/4 v2, 0x2

    const/4 v4, 0x1

    .line 206
    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->showMenu(ILandroid/graphics/Rect;ZZZ)V

    return-void
.end method
