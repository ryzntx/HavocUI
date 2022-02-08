.class public final synthetic Lcom/android/systemui/statusbar/phone/-$$Lambda$BarTransitions$BarBackgroundDrawable$D8NHj56iAQoX5numcQ3tA-TnF-A;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$BarTransitions$BarBackgroundDrawable$D8NHj56iAQoX5numcQ3tA-TnF-A;->f$0:Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;

    iput p2, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$BarTransitions$BarBackgroundDrawable$D8NHj56iAQoX5numcQ3tA-TnF-A;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$BarTransitions$BarBackgroundDrawable$D8NHj56iAQoX5numcQ3tA-TnF-A;->f$0:Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;

    iget p0, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$BarTransitions$BarBackgroundDrawable$D8NHj56iAQoX5numcQ3tA-TnF-A;->f$1:I

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->lambda$applyMode$0$BarTransitions$BarBackgroundDrawable(I)V

    return-void
.end method
