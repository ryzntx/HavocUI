.class public final synthetic Lcom/android/systemui/pip/phone/-$$Lambda$PipMotionHelper$31jMwXh6pIOVMPv1yiSY2M0mNc0;
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

    iput-object p1, p0, Lcom/android/systemui/pip/phone/-$$Lambda$PipMotionHelper$31jMwXh6pIOVMPv1yiSY2M0mNc0;->f$0:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final doFrame(J)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/pip/phone/-$$Lambda$PipMotionHelper$31jMwXh6pIOVMPv1yiSY2M0mNc0;->f$0:Ljava/lang/Runnable;

    invoke-static {p0, p1, p2}, Lcom/android/systemui/pip/phone/PipMotionHelper;->lambda$new$0(Ljava/lang/Runnable;J)V

    return-void
.end method
