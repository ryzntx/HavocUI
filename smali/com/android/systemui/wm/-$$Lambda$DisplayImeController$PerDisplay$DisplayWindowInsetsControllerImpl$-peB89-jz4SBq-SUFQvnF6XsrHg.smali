.class public final synthetic Lcom/android/systemui/wm/-$$Lambda$DisplayImeController$PerDisplay$DisplayWindowInsetsControllerImpl$-peB89-jz4SBq-SUFQvnF6XsrHg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/wm/DisplayImeController$PerDisplay$DisplayWindowInsetsControllerImpl;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/wm/DisplayImeController$PerDisplay$DisplayWindowInsetsControllerImpl;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/wm/-$$Lambda$DisplayImeController$PerDisplay$DisplayWindowInsetsControllerImpl$-peB89-jz4SBq-SUFQvnF6XsrHg;->f$0:Lcom/android/systemui/wm/DisplayImeController$PerDisplay$DisplayWindowInsetsControllerImpl;

    iput-object p2, p0, Lcom/android/systemui/wm/-$$Lambda$DisplayImeController$PerDisplay$DisplayWindowInsetsControllerImpl$-peB89-jz4SBq-SUFQvnF6XsrHg;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/wm/-$$Lambda$DisplayImeController$PerDisplay$DisplayWindowInsetsControllerImpl$-peB89-jz4SBq-SUFQvnF6XsrHg;->f$0:Lcom/android/systemui/wm/DisplayImeController$PerDisplay$DisplayWindowInsetsControllerImpl;

    iget-object p0, p0, Lcom/android/systemui/wm/-$$Lambda$DisplayImeController$PerDisplay$DisplayWindowInsetsControllerImpl$-peB89-jz4SBq-SUFQvnF6XsrHg;->f$1:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/android/systemui/wm/DisplayImeController$PerDisplay$DisplayWindowInsetsControllerImpl;->lambda$topFocusedWindowChanged$0$DisplayImeController$PerDisplay$DisplayWindowInsetsControllerImpl(Ljava/lang/String;)V

    return-void
.end method
