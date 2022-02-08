.class public Lcom/android/systemui/navigation/pulse/VisualizerView;
.super Landroid/widget/FrameLayout;
.source "VisualizerView.java"


# instance fields
.field private mAttached:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 29
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/navigation/pulse/VisualizerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 33
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/navigation/pulse/VisualizerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public isAttached()Z
    .locals 0

    .line 54
    iget-boolean p0, p0, Lcom/android/systemui/navigation/pulse/VisualizerView;->mAttached:Z

    return p0
.end method

.method public onAttachedToWindow()V
    .locals 1

    .line 43
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    const/4 v0, 0x1

    .line 44
    iput-boolean v0, p0, Lcom/android/systemui/navigation/pulse/VisualizerView;->mAttached:Z

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    const/4 v0, 0x0

    .line 49
    iput-boolean v0, p0, Lcom/android/systemui/navigation/pulse/VisualizerView;->mAttached:Z

    .line 50
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    return-void
.end method
