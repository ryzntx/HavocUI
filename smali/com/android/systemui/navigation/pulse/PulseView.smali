.class public Lcom/android/systemui/navigation/pulse/PulseView;
.super Landroid/view/View;
.source "PulseView.java"


# instance fields
.field private final mPulse:Lcom/android/systemui/navigation/pulse/PulseControllerImpl;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/navigation/pulse/PulseControllerImpl;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 37
    iput-object p2, p0, Lcom/android/systemui/navigation/pulse/PulseView;->mPulse:Lcom/android/systemui/navigation/pulse/PulseControllerImpl;

    .line 38
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 p2, -0x1

    invoke-direct {p1, p2, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x0

    .line 39
    invoke-virtual {p0, p1}, Landroid/view/View;->setWillNotDraw(Z)V

    const-string p1, "PulseView"

    .line 40
    invoke-virtual {p0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/android/systemui/navigation/pulse/PulseView;->mPulse:Lcom/android/systemui/navigation/pulse/PulseControllerImpl;

    invoke-virtual {v0, p1}, Lcom/android/systemui/navigation/pulse/PulseControllerImpl;->onDraw(Landroid/graphics/Canvas;)V

    .line 52
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/android/systemui/navigation/pulse/PulseView;->mPulse:Lcom/android/systemui/navigation/pulse/PulseControllerImpl;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/systemui/navigation/pulse/PulseControllerImpl;->onSizeChanged(IIII)V

    .line 46
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    return-void
.end method
