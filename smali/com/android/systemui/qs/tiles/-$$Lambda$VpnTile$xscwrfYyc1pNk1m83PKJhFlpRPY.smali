.class public final synthetic Lcom/android/systemui/qs/tiles/-$$Lambda$VpnTile$xscwrfYyc1pNk1m83PKJhFlpRPY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/app/Dialog;


# direct methods
.method public synthetic constructor <init>(Landroid/app/Dialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/-$$Lambda$VpnTile$xscwrfYyc1pNk1m83PKJhFlpRPY;->f$0:Landroid/app/Dialog;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/-$$Lambda$VpnTile$xscwrfYyc1pNk1m83PKJhFlpRPY;->f$0:Landroid/app/Dialog;

    invoke-static {p0}, Lcom/android/systemui/qs/tiles/VpnTile;->lambda$prepareAndShowDialog$5(Landroid/app/Dialog;)V

    return-void
.end method
