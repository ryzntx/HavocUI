.class public final synthetic Lcom/android/systemui/statusbar/policy/-$$Lambda$ClockRight$dnY7gkUhPfhZZd88b0SGBo_sdok;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/policy/ClockRight;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/policy/ClockRight;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/-$$Lambda$ClockRight$dnY7gkUhPfhZZd88b0SGBo_sdok;->f$0:Lcom/android/systemui/statusbar/policy/ClockRight;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/-$$Lambda$ClockRight$dnY7gkUhPfhZZd88b0SGBo_sdok;->f$0:Lcom/android/systemui/statusbar/policy/ClockRight;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/ClockRight;->lambda$updateClockVisibility$0$ClockRight()V

    return-void
.end method
