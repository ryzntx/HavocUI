.class final Lcom/android/settingslib/graph/FullCircleBatteryDrawable$startChargingAnimation$1;
.super Ljava/lang/Object;
.source "FullCircleBatteryDrawable.kt"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settingslib/graph/FullCircleBatteryDrawable;->startChargingAnimation(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingslib/graph/FullCircleBatteryDrawable;


# direct methods
.method constructor <init>(Lcom/android/settingslib/graph/FullCircleBatteryDrawable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingslib/graph/FullCircleBatteryDrawable$startChargingAnimation$1;->this$0:Lcom/android/settingslib/graph/FullCircleBatteryDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 93
    iget-object v0, p0, Lcom/android/settingslib/graph/FullCircleBatteryDrawable$startChargingAnimation$1;->this$0:Lcom/android/settingslib/graph/FullCircleBatteryDrawable;

    const-string v1, "it"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Lcom/android/settingslib/graph/FullCircleBatteryDrawable;->access$setBatteryAlpha$p(Lcom/android/settingslib/graph/FullCircleBatteryDrawable;I)V

    .line 94
    iget-object p0, p0, Lcom/android/settingslib/graph/FullCircleBatteryDrawable$startChargingAnimation$1;->this$0:Lcom/android/settingslib/graph/FullCircleBatteryDrawable;

    invoke-static {p0}, Lcom/android/settingslib/graph/FullCircleBatteryDrawable;->access$postInvalidate(Lcom/android/settingslib/graph/FullCircleBatteryDrawable;)V

    return-void

    .line 93
    :cond_0
    new-instance p0, Lkotlin/TypeCastException;

    const-string p1, "null cannot be cast to non-null type kotlin.Int"

    invoke-direct {p0, p1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
