.class public abstract Lcom/android/systemui/navigation/pulse/Renderer;
.super Ljava/lang/Object;
.source "Renderer.java"

# interfaces
.implements Lcom/android/systemui/navigation/pulse/VisualizerStreamHandler$Listener;


# instance fields
.field protected mColorController:Lcom/android/systemui/navigation/pulse/ColorController;

.field protected mContext:Landroid/content/Context;

.field protected mIsValidStream:Z

.field protected mKeyguardShowing:Z

.field private mRenderCounter:J

.field protected mVertical:Z

.field protected mView:Lcom/android/systemui/navigation/pulse/PulseView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/systemui/navigation/pulse/PulseView;Lcom/android/systemui/navigation/pulse/ColorController;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/android/systemui/navigation/pulse/Renderer;->mContext:Landroid/content/Context;

    .line 46
    iput-object p3, p0, Lcom/android/systemui/navigation/pulse/Renderer;->mView:Lcom/android/systemui/navigation/pulse/PulseView;

    .line 47
    iput-object p4, p0, Lcom/android/systemui/navigation/pulse/Renderer;->mColorController:Lcom/android/systemui/navigation/pulse/ColorController;

    .line 48
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/systemui/navigation/pulse/Renderer;->mRenderCounter:J

    return-void
.end method


# virtual methods
.method public abstract destroy()V
.end method

.method public abstract draw(Landroid/graphics/Canvas;)V
.end method

.method public isValidStream()Z
    .locals 0

    .line 84
    iget-boolean p0, p0, Lcom/android/systemui/navigation/pulse/Renderer;->mIsValidStream:Z

    return p0
.end method

.method public abstract onFFTUpdate([B)V
.end method

.method public abstract onSizeChanged(IIII)V
.end method

.method public abstract onUpdateColor(I)V
.end method

.method public abstract onVisualizerLinkChanged(Z)V
.end method

.method protected final postInvalidate()V
    .locals 6

    .line 52
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 53
    iget-wide v2, p0, Lcom/android/systemui/navigation/pulse/Renderer;->mRenderCounter:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x19

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    .line 55
    iput-wide v0, p0, Lcom/android/systemui/navigation/pulse/Renderer;->mRenderCounter:J

    .line 56
    iget-object p0, p0, Lcom/android/systemui/navigation/pulse/Renderer;->mView:Lcom/android/systemui/navigation/pulse/PulseView;

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    :cond_0
    return-void
.end method

.method public setKeyguardShowing(Z)V
    .locals 2

    .line 61
    iput-boolean p1, p0, Lcom/android/systemui/navigation/pulse/Renderer;->mKeyguardShowing:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    :cond_0
    move p1, v0

    goto :goto_0

    .line 62
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/navigation/pulse/Renderer;->mView:Lcom/android/systemui/navigation/pulse/PulseView;

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    iget-object v1, p0, Lcom/android/systemui/navigation/pulse/Renderer;->mView:Lcom/android/systemui/navigation/pulse/PulseView;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    if-le p1, v1, :cond_0

    const/4 p1, 0x1

    :goto_0
    iput-boolean p1, p0, Lcom/android/systemui/navigation/pulse/Renderer;->mVertical:Z

    .line 63
    invoke-virtual {p0, v0, v0, v0, v0}, Lcom/android/systemui/navigation/pulse/Renderer;->onSizeChanged(IIII)V

    return-void
.end method

.method public abstract setLeftInLandscape(Z)V
.end method
