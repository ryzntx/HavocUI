.class public final synthetic Lcom/android/systemui/statusbar/policy/-$$Lambda$ClockCenter$sdx7HMPhoUjlb0iEIWLCVpJOGfc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/policy/ClockCenter;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/policy/ClockCenter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/-$$Lambda$ClockCenter$sdx7HMPhoUjlb0iEIWLCVpJOGfc;->f$0:Lcom/android/systemui/statusbar/policy/ClockCenter;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/-$$Lambda$ClockCenter$sdx7HMPhoUjlb0iEIWLCVpJOGfc;->f$0:Lcom/android/systemui/statusbar/policy/ClockCenter;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/ClockCenter;->lambda$updateClockVisibility$0$ClockCenter()V

    return-void
.end method
