.class public final synthetic Lcom/android/systemui/statusbar/policy/-$$Lambda$fnJAIfRgZHV7yIMkMzV2OF3V2rk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/-$$Lambda$fnJAIfRgZHV7yIMkMzV2OF3V2rk;->f$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/-$$Lambda$fnJAIfRgZHV7yIMkMzV2OF3V2rk;->f$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->update()V

    return-void
.end method
