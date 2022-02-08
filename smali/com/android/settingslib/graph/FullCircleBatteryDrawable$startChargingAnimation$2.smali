.class public final Lcom/android/settingslib/graph/FullCircleBatteryDrawable$startChargingAnimation$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FullCircleBatteryDrawable.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settingslib/graph/FullCircleBatteryDrawable;->startChargingAnimation(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $alpha:I

.field final synthetic this$0:Lcom/android/settingslib/graph/FullCircleBatteryDrawable;


# direct methods
.method constructor <init>(Lcom/android/settingslib/graph/FullCircleBatteryDrawable;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 97
    iput-object p1, p0, Lcom/android/settingslib/graph/FullCircleBatteryDrawable$startChargingAnimation$2;->this$0:Lcom/android/settingslib/graph/FullCircleBatteryDrawable;

    iput p2, p0, Lcom/android/settingslib/graph/FullCircleBatteryDrawable$startChargingAnimation$2;->$alpha:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1    # Landroid/animation/Animator;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 100
    iget-object v0, p0, Lcom/android/settingslib/graph/FullCircleBatteryDrawable$startChargingAnimation$2;->this$0:Lcom/android/settingslib/graph/FullCircleBatteryDrawable;

    iget v1, p0, Lcom/android/settingslib/graph/FullCircleBatteryDrawable$startChargingAnimation$2;->$alpha:I

    invoke-static {v0, v1}, Lcom/android/settingslib/graph/FullCircleBatteryDrawable;->access$setBatteryAlpha$p(Lcom/android/settingslib/graph/FullCircleBatteryDrawable;I)V

    .line 101
    iget-object v0, p0, Lcom/android/settingslib/graph/FullCircleBatteryDrawable$startChargingAnimation$2;->this$0:Lcom/android/settingslib/graph/FullCircleBatteryDrawable;

    invoke-static {v0}, Lcom/android/settingslib/graph/FullCircleBatteryDrawable;->access$postInvalidate(Lcom/android/settingslib/graph/FullCircleBatteryDrawable;)V

    .line 102
    invoke-virtual {p0, p1}, Lcom/android/settingslib/graph/FullCircleBatteryDrawable$startChargingAnimation$2;->onAnimationEnd(Landroid/animation/Animator;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1    # Landroid/animation/Animator;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 107
    iget-object p0, p0, Lcom/android/settingslib/graph/FullCircleBatteryDrawable$startChargingAnimation$2;->this$0:Lcom/android/settingslib/graph/FullCircleBatteryDrawable;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/settingslib/graph/FullCircleBatteryDrawable;->access$setChargingAnimator$p(Lcom/android/settingslib/graph/FullCircleBatteryDrawable;Landroid/animation/ValueAnimator;)V

    return-void
.end method
