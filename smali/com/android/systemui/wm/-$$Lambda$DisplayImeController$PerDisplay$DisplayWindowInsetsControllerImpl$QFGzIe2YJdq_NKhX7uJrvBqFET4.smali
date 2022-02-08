.class public final synthetic Lcom/android/systemui/wm/-$$Lambda$DisplayImeController$PerDisplay$DisplayWindowInsetsControllerImpl$QFGzIe2YJdq_NKhX7uJrvBqFET4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/wm/DisplayImeController$PerDisplay$DisplayWindowInsetsControllerImpl;

.field public final synthetic f$1:I

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/wm/DisplayImeController$PerDisplay$DisplayWindowInsetsControllerImpl;IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/wm/-$$Lambda$DisplayImeController$PerDisplay$DisplayWindowInsetsControllerImpl$QFGzIe2YJdq_NKhX7uJrvBqFET4;->f$0:Lcom/android/systemui/wm/DisplayImeController$PerDisplay$DisplayWindowInsetsControllerImpl;

    iput p2, p0, Lcom/android/systemui/wm/-$$Lambda$DisplayImeController$PerDisplay$DisplayWindowInsetsControllerImpl$QFGzIe2YJdq_NKhX7uJrvBqFET4;->f$1:I

    iput-boolean p3, p0, Lcom/android/systemui/wm/-$$Lambda$DisplayImeController$PerDisplay$DisplayWindowInsetsControllerImpl$QFGzIe2YJdq_NKhX7uJrvBqFET4;->f$2:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/wm/-$$Lambda$DisplayImeController$PerDisplay$DisplayWindowInsetsControllerImpl$QFGzIe2YJdq_NKhX7uJrvBqFET4;->f$0:Lcom/android/systemui/wm/DisplayImeController$PerDisplay$DisplayWindowInsetsControllerImpl;

    iget v1, p0, Lcom/android/systemui/wm/-$$Lambda$DisplayImeController$PerDisplay$DisplayWindowInsetsControllerImpl$QFGzIe2YJdq_NKhX7uJrvBqFET4;->f$1:I

    iget-boolean p0, p0, Lcom/android/systemui/wm/-$$Lambda$DisplayImeController$PerDisplay$DisplayWindowInsetsControllerImpl$QFGzIe2YJdq_NKhX7uJrvBqFET4;->f$2:Z

    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/wm/DisplayImeController$PerDisplay$DisplayWindowInsetsControllerImpl;->lambda$showInsets$3$DisplayImeController$PerDisplay$DisplayWindowInsetsControllerImpl(IZ)V

    return-void
.end method
