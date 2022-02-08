.class Lcom/android/systemui/bubbles/BubbleStackView$4;
.super Ljava/lang/Object;
.source "BubbleStackView.java"

# interfaces
.implements Lcom/android/systemui/util/magnetictarget/MagnetizedObject$MagnetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/bubbles/BubbleStackView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/bubbles/BubbleStackView;


# direct methods
.method constructor <init>(Lcom/android/systemui/bubbles/BubbleStackView;)V
    .locals 0

    .line 439
    iput-object p1, p0, Lcom/android/systemui/bubbles/BubbleStackView$4;->this$0:Lcom/android/systemui/bubbles/BubbleStackView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$onReleasedInTarget$0(Lcom/android/systemui/bubbles/BubbleStackView;)V
    .locals 0

    .line 478
    invoke-static {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->access$800(Lcom/android/systemui/bubbles/BubbleStackView;)V

    return-void
.end method


# virtual methods
.method public onReleasedInTarget(Lcom/android/systemui/util/magnetictarget/MagnetizedObject$MagneticTarget;)V
    .locals 4

    .line 471
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleStackView$4;->this$0:Lcom/android/systemui/bubbles/BubbleStackView;

    invoke-static {p1}, Lcom/android/systemui/bubbles/BubbleStackView;->access$400(Lcom/android/systemui/bubbles/BubbleStackView;)Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->getDraggedOutBubble()Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 475
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleStackView$4;->this$0:Lcom/android/systemui/bubbles/BubbleStackView;

    invoke-static {p1}, Lcom/android/systemui/bubbles/BubbleStackView;->access$400(Lcom/android/systemui/bubbles/BubbleStackView;)Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleStackView$4;->this$0:Lcom/android/systemui/bubbles/BubbleStackView;

    .line 476
    invoke-static {v0}, Lcom/android/systemui/bubbles/BubbleStackView;->access$400(Lcom/android/systemui/bubbles/BubbleStackView;)Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->getDraggedOutBubble()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleStackView$4;->this$0:Lcom/android/systemui/bubbles/BubbleStackView;

    .line 477
    invoke-static {v1}, Lcom/android/systemui/bubbles/BubbleStackView;->access$700(Lcom/android/systemui/bubbles/BubbleStackView;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/systemui/bubbles/BubbleStackView$4;->this$0:Lcom/android/systemui/bubbles/BubbleStackView;

    new-instance v3, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$4$aSvR9-6CLWJ5wWFJfNBEMIcwA5g;

    invoke-direct {v3, v2}, Lcom/android/systemui/bubbles/-$$Lambda$BubbleStackView$4$aSvR9-6CLWJ5wWFJfNBEMIcwA5g;-><init>(Lcom/android/systemui/bubbles/BubbleStackView;)V

    .line 475
    invoke-virtual {p1, v0, v1, v3}, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->dismissDraggedOutBubble(Landroid/view/View;FLjava/lang/Runnable;)V

    .line 479
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleStackView$4;->this$0:Lcom/android/systemui/bubbles/BubbleStackView;

    invoke-static {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->access$600(Lcom/android/systemui/bubbles/BubbleStackView;)V

    return-void
.end method

.method public onStuckToTarget(Lcom/android/systemui/util/magnetictarget/MagnetizedObject$MagneticTarget;)V
    .locals 1

    .line 442
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleStackView$4;->this$0:Lcom/android/systemui/bubbles/BubbleStackView;

    invoke-static {p1}, Lcom/android/systemui/bubbles/BubbleStackView;->access$400(Lcom/android/systemui/bubbles/BubbleStackView;)Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->getDraggedOutBubble()Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 446
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleStackView$4;->this$0:Lcom/android/systemui/bubbles/BubbleStackView;

    .line 447
    invoke-static {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->access$400(Lcom/android/systemui/bubbles/BubbleStackView;)Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->getDraggedOutBubble()Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x1

    .line 446
    invoke-static {p0, p1, v0}, Lcom/android/systemui/bubbles/BubbleStackView;->access$500(Lcom/android/systemui/bubbles/BubbleStackView;Landroid/view/View;Z)V

    return-void
.end method

.method public onUnstuckFromTarget(Lcom/android/systemui/util/magnetictarget/MagnetizedObject$MagneticTarget;FFZ)V
    .locals 2

    .line 453
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleStackView$4;->this$0:Lcom/android/systemui/bubbles/BubbleStackView;

    invoke-static {p1}, Lcom/android/systemui/bubbles/BubbleStackView;->access$400(Lcom/android/systemui/bubbles/BubbleStackView;)Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->getDraggedOutBubble()Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 457
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleStackView$4;->this$0:Lcom/android/systemui/bubbles/BubbleStackView;

    .line 458
    invoke-static {p1}, Lcom/android/systemui/bubbles/BubbleStackView;->access$400(Lcom/android/systemui/bubbles/BubbleStackView;)Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->getDraggedOutBubble()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    .line 457
    invoke-static {p1, v0, v1}, Lcom/android/systemui/bubbles/BubbleStackView;->access$500(Lcom/android/systemui/bubbles/BubbleStackView;Landroid/view/View;Z)V

    if-eqz p4, :cond_1

    .line 461
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleStackView$4;->this$0:Lcom/android/systemui/bubbles/BubbleStackView;

    invoke-static {p1}, Lcom/android/systemui/bubbles/BubbleStackView;->access$400(Lcom/android/systemui/bubbles/BubbleStackView;)Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;

    move-result-object p1

    iget-object p4, p0, Lcom/android/systemui/bubbles/BubbleStackView$4;->this$0:Lcom/android/systemui/bubbles/BubbleStackView;

    .line 462
    invoke-static {p4}, Lcom/android/systemui/bubbles/BubbleStackView;->access$400(Lcom/android/systemui/bubbles/BubbleStackView;)Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;

    move-result-object p4

    invoke-virtual {p4}, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->getDraggedOutBubble()Landroid/view/View;

    move-result-object p4

    .line 461
    invoke-virtual {p1, p4, p2, p3}, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->snapBubbleBack(Landroid/view/View;FF)V

    .line 463
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleStackView$4;->this$0:Lcom/android/systemui/bubbles/BubbleStackView;

    invoke-static {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->access$600(Lcom/android/systemui/bubbles/BubbleStackView;)V

    goto :goto_0

    .line 465
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleStackView$4;->this$0:Lcom/android/systemui/bubbles/BubbleStackView;

    invoke-static {p0}, Lcom/android/systemui/bubbles/BubbleStackView;->access$400(Lcom/android/systemui/bubbles/BubbleStackView;)Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->onUnstuckFromTarget()V

    :goto_0
    return-void
.end method
