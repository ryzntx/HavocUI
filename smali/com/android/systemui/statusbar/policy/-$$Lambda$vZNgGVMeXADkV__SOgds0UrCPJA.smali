.class public final synthetic Lcom/android/systemui/statusbar/policy/-$$Lambda$vZNgGVMeXADkV__SOgds0UrCPJA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/policy/Clock;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/policy/Clock;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/-$$Lambda$vZNgGVMeXADkV__SOgds0UrCPJA;->f$0:Lcom/android/systemui/statusbar/policy/Clock;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/-$$Lambda$vZNgGVMeXADkV__SOgds0UrCPJA;->f$0:Lcom/android/systemui/statusbar/policy/Clock;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/Clock;->autoHideClock()V

    return-void
.end method
