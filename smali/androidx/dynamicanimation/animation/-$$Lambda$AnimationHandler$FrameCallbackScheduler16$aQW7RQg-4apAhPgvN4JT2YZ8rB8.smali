.class public final synthetic Landroidx/dynamicanimation/animation/-$$Lambda$AnimationHandler$FrameCallbackScheduler16$aQW7RQg-4apAhPgvN4JT2YZ8rB8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# instance fields
.field public final synthetic f$0:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/dynamicanimation/animation/-$$Lambda$AnimationHandler$FrameCallbackScheduler16$aQW7RQg-4apAhPgvN4JT2YZ8rB8;->f$0:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final doFrame(J)V
    .locals 0

    iget-object p0, p0, Landroidx/dynamicanimation/animation/-$$Lambda$AnimationHandler$FrameCallbackScheduler16$aQW7RQg-4apAhPgvN4JT2YZ8rB8;->f$0:Ljava/lang/Runnable;

    invoke-static {p0, p1, p2}, Landroidx/dynamicanimation/animation/AnimationHandler$FrameCallbackScheduler16;->lambda$postFrameCallback$0(Ljava/lang/Runnable;J)V

    return-void
.end method
