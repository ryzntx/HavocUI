.class Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "NotificationShadeWindowViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->setupExpandedStatusBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;)V
    .locals 0

    .line 191
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController$1;->this$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 204
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController$1;->this$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->access$400(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 207
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController$1;->this$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->access$200(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;)Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/util/custom/LineageButtons;->getAttachedInstance(Landroid/content/Context;)Lcom/android/internal/util/custom/LineageButtons;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/util/custom/LineageButtons;->skipTrack()V

    return v0

    .line 210
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController$1;->this$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->access$500(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController$1;->this$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->access$000(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController$1;->this$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->access$600(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0

    .line 211
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController$1;->this$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->access$300(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;)Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object p1

    .line 212
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController$1;->this$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->access$200(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;)Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;

    move-result-object p0

    const-string v3, "DOUBLE_TAP"

    .line 211
    invoke-virtual {p1, v1, v2, p0, v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->wakeUpIfDozing(JLandroid/view/View;Ljava/lang/String;)V

    return v0
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 194
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController$1;->this$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->access$000(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController$1;->this$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->access$100(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;)Lcom/android/systemui/dock/DockManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/systemui/dock/DockManager;->isDocked()Z

    move-result p1

    if-nez p1, :cond_0

    .line 195
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController$1;->this$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->access$300(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;)Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object p1

    .line 196
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController$1;->this$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->access$200(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;)Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;

    move-result-object p0

    const-string v2, "SINGLE_TAP"

    .line 195
    invoke-virtual {p1, v0, v1, p0, v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->wakeUpIfDozing(JLandroid/view/View;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
