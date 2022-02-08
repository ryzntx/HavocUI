.class public final synthetic Lcom/android/systemui/biometrics/-$$Lambda$FODCircleView$6a0rf3rJkqyuRkQEqGAlaWR3_KQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/biometrics/FODCircleView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/biometrics/FODCircleView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/biometrics/-$$Lambda$FODCircleView$6a0rf3rJkqyuRkQEqGAlaWR3_KQ;->f$0:Lcom/android/systemui/biometrics/FODCircleView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/biometrics/-$$Lambda$FODCircleView$6a0rf3rJkqyuRkQEqGAlaWR3_KQ;->f$0:Lcom/android/systemui/biometrics/FODCircleView;

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/FODCircleView;->lambda$showCircle$2$FODCircleView()V

    return-void
.end method
