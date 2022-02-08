.class final Landroidx/dynamicanimation/animation/AnimationHandler$FrameCallbackScheduler16;
.super Ljava/lang/Object;
.source "AnimationHandler.java"

# interfaces
.implements Landroidx/dynamicanimation/animation/AnimationHandler$FrameCallbackScheduler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/dynamicanimation/animation/AnimationHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FrameCallbackScheduler16"
.end annotation


# instance fields
.field private final mChoreographer:Landroid/view/Choreographer;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 238
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iput-object v0, p0, Landroidx/dynamicanimation/animation/AnimationHandler$FrameCallbackScheduler16;->mChoreographer:Landroid/view/Choreographer;

    return-void
.end method

.method static synthetic lambda$postFrameCallback$0(Ljava/lang/Runnable;J)V
    .locals 0

    .line 242
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method


# virtual methods
.method public postFrameCallback(Ljava/lang/Runnable;)V
    .locals 1

    .line 242
    iget-object p0, p0, Landroidx/dynamicanimation/animation/AnimationHandler$FrameCallbackScheduler16;->mChoreographer:Landroid/view/Choreographer;

    new-instance v0, Landroidx/dynamicanimation/animation/-$$Lambda$AnimationHandler$FrameCallbackScheduler16$aQW7RQg-4apAhPgvN4JT2YZ8rB8;

    invoke-direct {v0, p1}, Landroidx/dynamicanimation/animation/-$$Lambda$AnimationHandler$FrameCallbackScheduler16$aQW7RQg-4apAhPgvN4JT2YZ8rB8;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    return-void
.end method
