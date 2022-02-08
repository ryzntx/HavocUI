.class Lcom/android/systemui/screenshot/GlobalScreenshot$3;
.super Ljava/lang/Object;
.source "GlobalScreenshot.java"

# interfaces
.implements Landroid/animation/LayoutTransition$TransitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/screenshot/GlobalScreenshot;->lambda$takeScreenshotPartial$5(Ljava/util/function/Consumer;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

.field final synthetic val$adjustedRect:Landroid/graphics/Rect;

.field final synthetic val$finisher:Ljava/util/function/Consumer;


# direct methods
.method constructor <init>(Lcom/android/systemui/screenshot/GlobalScreenshot;Ljava/util/function/Consumer;Landroid/graphics/Rect;)V
    .locals 0

    .line 502
    iput-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$3;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    iput-object p2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$3;->val$finisher:Ljava/util/function/Consumer;

    iput-object p3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$3;->val$adjustedRect:Landroid/graphics/Rect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public endTransition(Landroid/animation/LayoutTransition;Landroid/view/ViewGroup;Landroid/view/View;I)V
    .locals 0

    .line 511
    iget-object p2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$3;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    iget-object p3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$3;->val$finisher:Ljava/util/function/Consumer;

    iget-object p4, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$3;->val$adjustedRect:Landroid/graphics/Rect;

    invoke-static {p2, p3, p4}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$1800(Lcom/android/systemui/screenshot/GlobalScreenshot;Ljava/util/function/Consumer;Landroid/graphics/Rect;)V

    .line 512
    invoke-virtual {p1, p0}, Landroid/animation/LayoutTransition;->removeTransitionListener(Landroid/animation/LayoutTransition$TransitionListener;)V

    return-void
.end method

.method public startTransition(Landroid/animation/LayoutTransition;Landroid/view/ViewGroup;Landroid/view/View;I)V
    .locals 0

    return-void
.end method
