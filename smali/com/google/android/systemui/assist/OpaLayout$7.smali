.class Lcom/google/android/systemui/assist/OpaLayout$7;
.super Landroid/animation/AnimatorListenerAdapter;
.source "OpaLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/systemui/assist/OpaLayout;->getCollapseAnimatorSet()Landroid/util/ArraySet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/systemui/assist/OpaLayout;


# direct methods
.method constructor <init>(Lcom/google/android/systemui/assist/OpaLayout;)V
    .locals 0

    .line 499
    iput-object p1, p0, Lcom/google/android/systemui/assist/OpaLayout$7;->this$0:Lcom/google/android/systemui/assist/OpaLayout;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const-string p0, "OpaLayout.cancel.collapse"

    .line 508
    invoke-static {p0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 509
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    const-string p1, "OpaLayout.end.collapse"

    .line 514
    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 515
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 516
    iget-object p1, p0, Lcom/google/android/systemui/assist/OpaLayout$7;->this$0:Lcom/google/android/systemui/assist/OpaLayout;

    invoke-static {p1}, Lcom/google/android/systemui/assist/OpaLayout;->access$200(Lcom/google/android/systemui/assist/OpaLayout;)Landroid/util/ArraySet;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/ArraySet;->clear()V

    .line 517
    iget-object p0, p0, Lcom/google/android/systemui/assist/OpaLayout$7;->this$0:Lcom/google/android/systemui/assist/OpaLayout;

    invoke-static {p0}, Lcom/google/android/systemui/assist/OpaLayout;->access$500(Lcom/google/android/systemui/assist/OpaLayout;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    const-string p0, "OpaLayout.start.collapse"

    .line 502
    invoke-static {p0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 503
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method
