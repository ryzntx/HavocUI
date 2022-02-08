.class Lcom/android/systemui/screenrecord/RecordingService$2;
.super Ljava/lang/Object;
.source "RecordingService.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/screenrecord/RecordingService;->showDot()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/screenrecord/RecordingService;

.field final synthetic val$dot:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/android/systemui/screenrecord/RecordingService;Landroid/widget/ImageView;)V
    .locals 0

    .line 494
    iput-object p1, p0, Lcom/android/systemui/screenrecord/RecordingService$2;->this$0:Lcom/android/systemui/screenrecord/RecordingService;

    iput-object p2, p0, Lcom/android/systemui/screenrecord/RecordingService$2;->val$dot:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 3

    .line 496
    iget-object p1, p0, Lcom/android/systemui/screenrecord/RecordingService$2;->val$dot:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 497
    iget-object p1, p0, Lcom/android/systemui/screenrecord/RecordingService$2;->this$0:Lcom/android/systemui/screenrecord/RecordingService;

    .line 498
    invoke-static {p1}, Lcom/android/systemui/screenrecord/RecordingService;->access$200(Lcom/android/systemui/screenrecord/RecordingService;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager$LayoutParams;

    .line 499
    iget-object v0, p0, Lcom/android/systemui/screenrecord/RecordingService$2;->this$0:Lcom/android/systemui/screenrecord/RecordingService;

    invoke-static {v0}, Lcom/android/systemui/screenrecord/RecordingService;->access$300(Lcom/android/systemui/screenrecord/RecordingService;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    :goto_0
    or-int/lit8 v0, v0, 0x30

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 500
    iget-object v0, p0, Lcom/android/systemui/screenrecord/RecordingService$2;->this$0:Lcom/android/systemui/screenrecord/RecordingService;

    invoke-static {v0}, Lcom/android/systemui/screenrecord/RecordingService;->access$300(Lcom/android/systemui/screenrecord/RecordingService;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/android/systemui/screenrecord/RecordingService;->access$302(Lcom/android/systemui/screenrecord/RecordingService;Z)Z

    .line 501
    iget-object v0, p0, Lcom/android/systemui/screenrecord/RecordingService$2;->this$0:Lcom/android/systemui/screenrecord/RecordingService;

    invoke-static {v0}, Lcom/android/systemui/screenrecord/RecordingService;->access$400(Lcom/android/systemui/screenrecord/RecordingService;)Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/screenrecord/RecordingService$2;->this$0:Lcom/android/systemui/screenrecord/RecordingService;

    invoke-static {v1}, Lcom/android/systemui/screenrecord/RecordingService;->access$200(Lcom/android/systemui/screenrecord/RecordingService;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 502
    iget-object p1, p0, Lcom/android/systemui/screenrecord/RecordingService$2;->val$dot:Landroid/widget/ImageView;

    iget-object p0, p0, Lcom/android/systemui/screenrecord/RecordingService$2;->this$0:Lcom/android/systemui/screenrecord/RecordingService;

    invoke-static {p0}, Lcom/android/systemui/screenrecord/RecordingService;->access$500(Lcom/android/systemui/screenrecord/RecordingService;)Landroid/view/animation/Animation;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return v2
.end method
